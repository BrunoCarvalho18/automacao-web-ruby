Quando("os dados sao preenchdidos incorretamente") do
    @home = HomePage.new
    @home.clicarBotaoSignIn
    @authentication = AuthenticationPage.new
    @authentication.prencherEmailAddress LOGIN['LOGIN']['EMAILINVALIDO']
    @authentication.prencherPassword LOGIN['LOGIN']['SENHA']
    @authentication.clicarBotaoSignIn
end
  
Entao("o sistema apresenta alguma mensagem que algum campo do login esta incorreto") do
    assert_text('There is 1 error')
end
  