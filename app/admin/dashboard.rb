ActiveAdmin.register_page "Dashboard" do

  menu priority: 1
  content title: proc { I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Recent Donors" do
          ol do
            table_for Donor.limit(5).each do |_user|
              column(:image)    { |user| link_to(image_tag(user.image_url(:activeadmin).to_s), admin_donors_path) }
              column(:name)    { |user| link_to(user.name, admin_donor_path(user)) }
              column(:description)    { |user| user.description }
          end
        end
      end
    end

    columns do
      column do
        div do
          br
          text_node %{<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB"
                              width="75%" height="300" scrolling="no" frameborder="no">
                      </iframe>}.html_safe
        end
      end
    end

  end # columns

  end # content
end
