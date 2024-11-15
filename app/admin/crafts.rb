ActiveAdmin.register Craft do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :brand, :price, :description, :catagory_id, :type
  #
  # or
  #
  # permit_params do
  #   permitted = [:price, :description, :catagory_id, :type, :name, :author, :brand]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
