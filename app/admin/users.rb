ActiveAdmin.register User do
  index do
    column :id
    column :email
    column :created_at
    column do |u|
      links = ''.html_safe
      links << link_to('View', admin_user_path(u))
      links << ' | '
      links << link_to('View', admin_user_path(u))
    end
  end
end
