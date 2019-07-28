ActiveAdmin.register Book do
  permit_params :author_id, :title, :publish_date

  form do |f|
    f.inputs do
      f.input :author
      f.input :title
      f.input :publish_date, as: :datepicker
    end
    f.actions
  end
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

end
