#language: pt
@teste
Funcionalidade: Fazer uma compra
Eu sendo um usuário cadastrado 
Faço meu login 
Para efetur uma compra

    Cenario: Efetuar compra

        Dado que eu acesso a pagina home
        Quando eu faço meu login com "thomast@pop.com" e "123456" e escolho meus produtos
        E preencho os meus dados 
        Então devo ver o dashborad
