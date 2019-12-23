#language: pt

Funcionalidade: Login com sucesso
                Eu como usuario
                gostaria de realizar o login na pagina

@loginsucesso
Cenario: Login com sucesso
         Dado que o usuario acessa a pagina
         Quando os dados sao preenchidos com sucesso
         Entao o login foi criado com sucesso   

@logininvalido
Cenario: Login invalido
        Dado que o usuario acessa a pagina
        Quando os dados sao preenchdidos incorretamente
        Entao o sistema apresenta alguma mensagem que algum campo do login esta incorreto

@logincomcampoembranco
Cenario: Login com campo em branco
        Dado que o usuario acessa a pagina
        Quando os dados sao preenchdidos com algum campo em branco
        Entao o sistema apresenta alguma mensagem que a algum campo em branco
        