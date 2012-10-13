namespace :aio do
  # start by: 'bundle exec rake aio:initialize'
  desc "Initial User and Roles"
  task :initialize => :environment do
    @admin = Role.new
    @admin.name = "admin"
    @admin.save

    @user = User.new
    @user.email = "admin@admin.com"
    @user.firstname = "John"
    @user.lastname = "Doe"
    @user.password = "secret"
    @user.password_confirmation = "secret"
    @user.save

    @user.assignments.build(:role_id => @admin.id)
    @user.assignments.first.save

    @company = Company.new
    @company.name = "MyCompany"
    @company.save

    @user.employments.build(:user_id => @user.id, :company_id => @company.id)
    @user.employments.first.save
  end
end
