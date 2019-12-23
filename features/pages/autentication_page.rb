# A classe AuthenticationPage é a pagina Authentication
class AuthenticationPage < SitePrism::Page

    element :campoEmailAdress, '#email'
    element :campoPassword, '#passwd' 
    element :botaoSignIn , '#SubmitLogin'

    def prencherEmailAddress(email)
        campoEmailAdress.set(email)
    end

    def prencherPassword(senha)
        campoPassword.set(senha)
    end

    def clicarBotaoSignIn
        botaoSignIn.click
    end

end    
