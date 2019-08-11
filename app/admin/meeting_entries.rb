ActiveAdmin.register MeetingEntry do
  permit_params :meeting, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement, meetings_attributes: [:datetime]

  index do
    selectable_column
    id_column
    column :meeting
    # column :MeetingEntry.where(id: Meeting.where(name: "datetime"))
    # (id: Meetings.where(book_id: book.id).all.pluck(:author_id)).all.pluck(:name).join(', ')
    # column :datetime
    column :family_name
    column :first_name
    column :family_kana
    column :first_kana
    column :phone
    column :email
    column :purpose
    column :note
    column :agreement
    actions
  end

  form do |f|
    f.inputs do
      f.input :meeting
      # f.has_many :meetings
      #   ab.input :datetime,
      #            label: '日程',
      #            as: :select
      f.input :family_name
      f.input :first_name
      f.input :family_kana
      f.input :first_kana
      f.input :phone
      f.input :email
      f.input :purpose
      f.input :note
      f.input :agreement
      # f.has_many :author_books, allow_destroy: true, heading: false,
      #                           new_record: true do |ab|
      #   ab.input :author_id,
      #            label: '著者',
      #            as: :select,
      #            collection: Author.all.map { |a| [a.name, a.id] }
      # end
      f.actions
    end
  end

  # show do
  #   attributes_table do
  #     row :id
  #     row :meeting
  #     row :family_name
  #     row :first_name
  #     row :family_kana # 勝手に prefecture.name を表示
  #     row :first_kana
  #     row :phone
  #   end
  # end


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
