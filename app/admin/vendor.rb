ActiveAdmin.register Vendor do

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
  permit_params :als_account_number, :vendor_name, :billing_address, :billing_city, :billing_state, :billing_zip, :shipping_address, :shipping_city, :shipping_state, :shipping_zip, :po_number, :notes, :contact_person, :sales_person, :mark_up, :per_hour_rate, :tax_rate, :terms


  sidebar :number, only: :show do
    table_for vendor.phone_numbers do
      column "Type"
      column "Number" do |blah|
        blah.number
      end
      column :notes
    end
  end

end
