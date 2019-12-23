Dado("que o usuario acessa a pagina") do
    @home = HomePage.new
    @home.load
end
  
Quando("os dados sao preenchidos com sucesso") do
    @home.clicarBotaoSignIn
    @authentication = AuthenticationPage.new
    @authentication.prencherEmailAddress LOGIN['LOGIN']['EMAIL']
    @authentication.prencherPassword LOGIN['LOGIN']['SENHA']
    @authentication.clicarBotaoSignIn
end
  
Entao("o login foi criado com sucesso") do
    assert_text('Welcome to your account. Here you can manage all of your personal information and orders.')
end
  