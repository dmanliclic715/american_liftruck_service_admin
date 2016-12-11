require 'csv'

AdminUser.delete_all
Customer.delete_all
Vendor.delete_all
PhoneNumber.delete_all

# Client request that primary keys begin at 1606
ActiveRecord::Base.connection.execute("ALTER SEQUENCE customers_id_seq START with 2046 RESTART;")

# Client Login Credentials
AdminUser.create!(email: 'tdigrispino@sbcglobal.net', password: 'password', password_confirmation: 'password')


#  CSV file parser DONT FORGET TO GITIGNORE THIS DATA!
csv_text1 = File.read(Rails.root.join('lib', 'seeds', 'Cust_CSV.csv'))
csv1 = CSV.parse(csv_text1,headers: true, header_converters: :symbol)
#
csv_text2 = File.read(Rails.root.join('lib', 'seeds', 'Cust_Details.csv'))
csv2 = CSV.parse(csv_text2, headers: true, header_converters: :symbol)
#
# # arr = Array.new
csv1.each do |row|
  row[:account].slice!(0)
end
# #
# csv1.each do |row|
#   arr << row[:account].to_i
# end
# arr
#
# arr2 = (1606..2045).to_a
#
# p arr2 - arr


# # Seed Database with select data
csv1.each do |row|
  t = Customer.new
  t.id = row[:account]
  t.name = row[:customer_name]
  t.billing_address = row[:billing_address]
  t.billing_city = row[:billing_city]
  t.billing_state = row[:billing_state]
  t.billing_zip = row[:billing_zip]
  t.shipping_address = row[:ship_to_address]
  t.shipping_city = row[:ship_to_city]
  t.shipping_state = row[:ship_to_state]
  t.shipping_zip = row[:ship_to_zip]
  t.po_number = row[:po]
  t.notes = row[:notes]
  t.contact_person = row[:contact]
  t.sales_person = row[:sales_person]
  csv2.each do |row|
    t.mark_up = row[:mark_up]
    t.per_hour_rate = row[:per_hour_rate]
    t.tax_rate = row[:tax_rate]
    t.terms = row[:terms]
  end
  t.created_at = row[:creation_date]
  t.updated_at = row[:modification_date]
  t.save
end



# [1817, 1818, 1819, 1820, 1821, 1836, 1861, 1862, 1863, 1898, 1917, 2027]






customer_phone_number_text = File.read(Rails.root.join('lib','seeds','Cust_Phone.csv'))
cust_phone_csv = CSV.parse(customer_phone_number_text, headers: true, header_converters: :symbol)


cust_phone_csv.each do |row|
  num = PhoneNumber.new
  num.number = row[:number]
  num.notes = row[:notes]
  num.type_of_number = row[:type_of_number]
  num.phoneable_id = row[:phoneable_id]
  num.phoneable_type = "Customer"
  num.save
end



customer_web_text = File.read(Rails.root.join('lib','seeds', 'Cust_Web.csv'))
cust_web_csv = CSV.parse(customer_web_text, headers: true, header_converters: :symbol)


cust_web_csv.each do |row|
  w = WebContact.new
  w.type_of_web = row[:type_of_web]
  w.web = row[:web_contact]
  w.notes = row[:notes]
  w.contactable_id = row[:contactable_id]
  w.contactable_type = "Customer"
  w.save
end
