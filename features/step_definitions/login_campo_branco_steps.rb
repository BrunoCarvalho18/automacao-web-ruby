Quando("os dados sao preenchdidos com algum campo em branco") do
    @home = HomePage.new
    @home.clicarBotaoSignIn
    @authentication = AuthenticationPage.new
    @authentication.prencherEmailAddress LOGIN['LOGIN']['EMAILVAZIO']
    @authentication.prencherPassword LOGIN['LOGIN']['SENHA']
    @authentication.clicarBotaoSignIn
end
  
Entao("o sistema apresenta alguma mensagem que a algum campo em branco") do
    assert_text('There is 1 error')
end    
  