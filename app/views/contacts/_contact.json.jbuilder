json.extract! contact, :id, :status, :source, :cont_num, :first_name, :last_name, :full_name, :created_at, :updated_at
json.url contact_url(contact, format: :json)
