ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Most recent listings" do
          para "Welcome to ActiveAdmin."
        end
      end

      column do
        panel "Most recent users" do
          ul do
            users = User.limit(5).recent
            users.each do |u|
              li link_to(u.email, admin_user_path(u))
            end
          end
        end
      end

      column do
        panel "Most active users" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end
end
