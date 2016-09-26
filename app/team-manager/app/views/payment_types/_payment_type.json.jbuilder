json.extract! payment_type, :id, :payment_type, :check_num, :cc_num, :acct_num, :routing_num, :created_at, :updated_at
json.url payment_type_url(payment_type, format: :json)