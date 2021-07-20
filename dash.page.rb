class DashPage
  include Capybara::DSL

  def open
    visit "/"
  end

  def create
    email = Faker::Internet.free_email
    password = Faker::Number.number(digits: 10)
    post_code = Faker::Number.number(digits: 5)
    phone = Faker::Number.number(digits: 10)
    phone_number = Faker::Number.number(digits: 11)
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name

    find("#email_create").set email
    click_button "Create an account"

    find("#uniform-id_gender1").click
    find("#customer_firstname").set first_name
    find("#customer_lastname").set last_name
    find("#email").set email
    find("#passwd").set password
    find("#days > option:nth-child(24)").click
    find("#months > option:nth-child(2)").click
    find("#years > option:nth-child(23)").click
    find("#address1").set "Simasturbo, 69"
    find("#city").set "Volgogrado"
    find("#id_state > option:nth-child(33)").click
    find("#postcode").set post_code
    find("#phone").set phone
    find("#phone_mobile").set phone_number
    find("#alias").set "Lá no posto ipiranga"
  end 

    def register
    click_button "Register"

    sleep 10
    end


    def open 
        find(:xpath, "//*[@id='block_top_menu']/ul/li[1]/a").click
        sleep 3
        find("#list").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/ul/li[1]/div/div/div[3]/div/div[2]/a[1]/span").click
        sleep 5
        find(:xpath, "//*[@id='layer_cart']/div[1]/div[2]/div[4]/span/span").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/ul/li[2]/div/div/div[3]/div/div[2]/a[1]/span").click
        sleep 3
        find(:xpath, "//*[@id='layer_cart']/div[1]/div[2]/div[4]/a").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/p[2]/a[1]/span").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/form/p/button/span").click
        sleep 3
        find("#uniform-cgv").click
        sleep 3
        find(:xpath, "//*[@id='form']/p/button").click
        sleep 3
        find(:xpath, "//*[@id='HOOK_PAYMENT']/div[1]/div/p").click
        sleep 3
    end 

    def buy
        find(:xpath, "//*[@id='cart_navigation']/button/span").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/p/a").click
        sleep 5
        find(:xpath, "//*[@id='center_column']/ul/li[1]/a/span").click
        sleep 3
    end 

    def finish
        find(:xpath, "//*[@id='block_top_menu']/ul/li[1]/a").click
        sleep 3
        find(:xpath, "//*[@id='center_column']/ul/li[1]/div/div/div[3]/div/div[3]/div[1]/a").click
        sleep 5
         find(:xpath, "//*[@id='category']/div[2]/div/div/a").click
    end
end
