json.extract! contact, :id, :account_id, :cont_num, :source, :status, :full_name, :first_name, :last_name, :email, :job_title, :created_at, :updated_at
json.url contact_url(contact, format: :json)
