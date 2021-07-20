Dado("que eu acesso a pagina home") do
  visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
end

Quando("eu faço meu login com {string} e {string} e escolho meus produtos") do |email, senha|
  @loginpage.log
end

Quando("preencho os meus dados") do
  @dashpage.open
  @dashpage.buy
end

Então("devo ver o dashborad") do
  @dashpage.finish
end
