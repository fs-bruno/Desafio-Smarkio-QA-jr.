# Desafio-Smarkio-QA-jr.

#language:pt
Funcionalidade: Fazer cadastro
    Eu sendo um usuário
    Quero realizar um cadastro com email e senha 
    Para que eu possa realizar compras no sistema
    
    Cenario: Fazer cadastro

        Dado que eu acesso a pagina principal 
        Quando eu acesso a pagina de cadastro
        Então devo ser autenticado         
        
#language: pt
Funcionalidade: Fazer uma compra
Eu sendo um usuário cadastrado 
Faço meu login 
Para efetur uma compra

    Cenario: Efetuar compra

        Dado que eu acesso a pagina home
        Quando eu faço meu login com "thomast@pop.com" e "123456" e escolho meus produtos
        E preencho os meus dados 
        Então devo ver o dashborad
