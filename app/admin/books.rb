ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :price, :description, :catagory_id, :type, :name, :author, :brand, :image

   form partial: 'form'

   filter :with_image, as: :boolean, label: "Has Image"

   form do |f|
    f.inputs do
      f.input :name
      f.input :author
      f.input :description
      f.input :price
      f.input :catagory
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :author
      row :description   
      row :price
      row :catagory
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:price, :description, :catagory_id, :type, :name, :author, :brand]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
