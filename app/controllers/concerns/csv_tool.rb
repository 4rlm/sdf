require 'csv'
require 'pry'

module CsvTool
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
      upload_csv
      @csv_hashes.each do |valid_hash|
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

    def iterate_csv
      upload_csv
      @csv_hashes
    end

    def upload_csv
      @csv_hashes = []

      CSV.foreach(@file_path, headers: true, skip_blanks: true) do |row|
        valid_hash = validate_hash(@model.column_names, row.to_hash)
        @csv_hashes << valid_hash
      end

      @csv_hashes
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

  end

end

############## Usage / Directions ##############
# Paste below code into separate file for use, ex: lib/servicers/csv_tool_helper.rb

=begin
require 'csv'
require 'pry'
## Call: CsvToolHelper.new(Account).backup_csv
## Call: CsvToolHelper.new(Account).download_csv

## CsvToolHelper.new(Account).import_csv
## CsvToolHelper.new(Account).iterate_csv

class CsvToolHelper
  include CsvTool::Export
  include CsvTool::Import
  attr_reader :file_name, :file_path

  def initialize(model)
    @model = model
    @file_name = "#{@model.to_s.pluralize.downcase}.csv"
    @dir_path = "./db/backups"
    FileUtils.mkdir_p(@dir_path)
    @file_path = "#{@dir_path}/#{@file_name}"
  end
end
=end
