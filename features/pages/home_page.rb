# A classe HomePage é a home da pagina
class HomePage < SitePrism::Page
    # abaixo com a url padrao
    set_url 'http://automationpractice.com/index.php'
    
    element :abaSignIn, '.login'
    element :abaContactUs, '#contact-link > a'
    
    def clicarBotaoSignIn
        abaSignIn.click
    end
end