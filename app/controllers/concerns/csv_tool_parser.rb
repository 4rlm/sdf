# Notes:
# 1) CsvTool class calls CsvToolMod module.  Both files work together.
# 2) Note: Ensure config/application.rb extends autoload to concerns.

## Call: CsvTool.new(Account).backup_csv
## Call: CsvTool.new(Account).download_csv

## Call: CsvTool.new(Account).import_csv
## Call: CsvTool.new(Account).iterate_csv
###########################################

require 'pry'

class CsvToolParser
  extend ActiveSupport::Concern

  def initialize
    puts "\n\nInside CsvToolParser!\n\n"
    @account_hashes = []
  end

# call: CsvToolParser.new.import_accounts
  def import_accounts
    account_hashes = CsvTool.new(Account).iterate_csv
    account_hashes.each { |hash| hash_parser(hash.symbolize_keys) }
  end

  def hash_parser(hash)
    account_hash = {
      act_num: hash[:act_num],
      source: hash[:source],
      act_name: hash[:act_name],
      status: hash[:status]}

    account_hash = {id: hash[:id]}.merge(account_hash) if hash[:id].present?
    account = Account.find_or_create_by(account_hash)
    account.phones << Phone.find_or_create_by(phone: hash[:phone])
    account.url = Url.find_or_create_by(url: hash[:url])
    # account.address = Address.find_or_create_by(full: hash[:full_address])

    ###### Active Record Nested Attributes ######
    # params = { account: { act_name: hash[:act_name], url_attributes: { url: hash[:url] } } }
    # account = Account.create(params[:account])
    # params = { member: { name: 'Jack', avatar_attributes: { icon: 'smiling' } } }
    # member = Member.create(params[:member])
    # Account.create(act_name: 'awesome', url_attributes: {url: 'www.awesome.com'})
    # Account.create(act_name: 'awesome', contact_attributes: {full_name: 'Tony Snow'})
    # cont = Contact.create(account_id: 1, full_name: 'sunny')
  end


end
