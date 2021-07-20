Dado("que eu acesso a pagina principal") do
  visit "http://automationpractice.com/index.php?controller=authentication&back=my-account#account-"
end

Quando("eu acesso a pagina de cadastro") do
  @dashpage.open
  @dashpage.create
end

Então("devo ser autenticado") do
  @dashpage.register
end
