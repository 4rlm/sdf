json.extract! contact, :id, :cont_num, :source, :status, :full_name, :first_name, :last_name, :created_at, :updated_at
json.url contact_url(contact, format: :json)
