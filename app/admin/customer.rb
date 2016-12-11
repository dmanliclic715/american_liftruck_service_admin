ActiveAdmin.register Customer do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :name, :billing_address, :billing_city, :billing_state, :billing_zip, :shipping_address, :shipping_city, :shipping_state, :shipping_zip, :po_number, :notes, :contact_person, :sales_person, :mark_up, :per_hour_rate, :tax_rate, :terms, phone_number_ids: []


  sidebar :number, class: "scroll-me", only: :show do
    table_for customer.phone_numbers do
      column "Type" do |cust|
        cust.type_of_number
      end
      column "Number" do |blah|
        blah.number
      end
      column :notes
    end
  end

sidebar :web_contacts, class: "scroll-me", only: :show do
  table_for customer.web_contacts do
    column "Type" do |cust|
      cust.type_of_web
    end
    column "Web Contact" do |cust|
      cust.web
    end
    column :notes
  end

end

end
