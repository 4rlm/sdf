require 'csv'
require 'pry'
## Call: CsvToolHelper.new(Account).backup_csv
## Call: CsvToolHelper.new(Account).download_csv
## CsvToolHelper.new(Account).upload_csv

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
