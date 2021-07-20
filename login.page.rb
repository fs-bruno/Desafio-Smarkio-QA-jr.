class LoginPage
  include Capybara::DSL

  def log
    @email = "thomas@pop.com"
    @senha = "123456"
    find("#email").set @email
    find("#passwd").set @senha
    click_button "Sign in"
    sleep 10
  end
end
