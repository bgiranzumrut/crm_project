AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin|
  admin.password = 'password'
  admin.password_confirmation = 'password'
end if Rails.env.development?

Customer.find_or_create_by!(full_name: "Alice Johnson") do |customer|
  customer.phone_number = "555-1234"
  customer.email = "alice@example.com"
  customer.notes = "VIP client"
end

Customer.find_or_create_by!(full_name: "Bob Smith") do |customer|
  customer.phone_number = "555-5678"
  customer.email = nil
  customer.notes = "Prefers SMS contact"
end

Customer.find_or_create_by!(full_name: "Charlie Brown") do |customer|
  customer.phone_number = "555-9999"
  customer.email = "charlie@example.com"
  customer.notes = "Long-time customer"
end

Customer.find_or_create_by!(full_name: "Diana Prince") do |customer|
  customer.phone_number = "555-8888"
  customer.email = nil
  customer.notes = "Requires extra support"
end

Customer.find_or_create_by!(full_name: "Ethan Hunt") do |customer|
  customer.phone_number = "555-7777"
  customer.email = "ethan@example.com"
  customer.notes = "Security-conscious customer"
end
