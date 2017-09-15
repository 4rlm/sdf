# Notes:
# 1) CsvTool class calls CsvToolMod module.  Both files work together.
# 2) Note: Ensure config/application.rb extends autoload to concerns.

## Call: CsvTool.new(Account).backup_csv
## Call: CsvTool.new(Account).download_csv

## Call: CsvTool.new(Account).import_csv
## Call: CsvTool.new(Account).iterate_csv
###########################################

require 'csv'
require 'pry'

module CsvToolMod
  extend ActiveSupport::Concern

  module Export
    def backup_csv
      CSV.open(@file_path, "wb") do |csv|
        csv << @model.attribute_names
        @model.all.each { |r| csv << r.attributes.values }
      end
    end

    def download_csv
      CSV.generate do |csv|
        csv << @model.attribute_names
        @model.all.each { |r| csv << r.attributes.values }
      end
    end

  end


  module Import

    def import_csv
      CSV.foreach(@file_path, headers: true, skip_blanks: true) do |row|
        valid_hash = validate_hash(@model.column_names, row.to_hash)

        begin
          if obj = @model.find_by(id: valid_hash["id"])
            @model.record_timestamps = false
            obj.update_attributes(valid_hash)
          else
            @model.record_timestamps = true
            @model.create!(valid_hash)
          end
        rescue
          puts "\n\nDuplicate Data Error\n\n"
        end

      end
    end

    def validate_hash(cols, hash)
      keys = hash.keys
      keys.each do |key|
        if !cols.include?(key)
          hash.delete(key)
        end
      end
      hash
    end

    def iterate_csv
      @csv_hashes = []
      CSV.foreach(@file_path, headers: true, skip_blanks: true) { |row| @csv_hashes << row.to_hash }
      return @csv_hashes
    end


    ###### ORIGINAL BELOW ########
    # def import_csv
    #   upload_csv
    #   @csv_hashes.each do |valid_hash|
    #     begin
    #       if obj = @model.find_by(id: valid_hash["id"])
    #         @model.record_timestamps = false
    #         obj.update_attributes(valid_hash)
    #       else
    #         @model.record_timestamps = true
    #         @model.create!(valid_hash)
    #       end
    #     rescue
    #       puts "\n\nDuplicate Data Error\n\n"
    #     end
    #
    #   end
    # end
    #
    # def iterate_csv
    #   upload_csv
    #   return @csv_hashes
    # end
    #
    #
    # def upload_csv
    #   @csv_hashes = []
    #
    #   CSV.foreach(@file_path, headers: true, skip_blanks: true) do |row|
    #     valid_hash = validate_hash(@model.column_names, row.to_hash)
    #     @csv_hashes << valid_hash
    #   end
    #
    #   @csv_hashes
    # end

######################

  end

end
