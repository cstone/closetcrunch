ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "10 most recent listings" do
          para "Welcome"
        end
      end

      column do
        panel "10 most recent users" do
          ul do
            users = User.limit(10).recent
            users.each do |u|
              li link_to(u.email, admin_user_path(u))
            end
          end
        end
      end

      column do
        panel "Top most 10 active users" do
          ol do
            users = User.limit(10).most_active
            users.each do |u|
              li raw "#{u.username.capitalize} #{link_to u.email, admin_user_path(u)}"
            end
          end
        end
      end
    end
  end
end
