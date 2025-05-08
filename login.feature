#language: pt

Funcionalidade: Tela de login
    Como cliente da EBAC-SHOP
    Quero me autenticar
    Para visualizar meus pedidos

    Contexto:
    Dado que acesse a página de autenticação do portal EBAC

    Cenário: Autenticação válida
    Quando digitar o usuário "lucasosses.qa@gmail.com"
    E a senha "lucas123"
    Então o sistema deve direcionar para a tela de checkout

    Cenário: Usuário inexistente
    Quando digitar o usuário "pedrinhomil@gmail.com"
    E a senha "lucas123"
    Então o sistema deve exibir uma mensagem de alerta "Usuário Inexistente"

    Cenário: Usuário com senha inválida
    Quando digitar o usuário "pedrinhomil@gmail.com"
    E a senha "lucas5472"
    Então o sistema deve exibir uma mensagem de alerta "Usuário ou senha inválida"

    Esquema do Cenário: Autenticar multiplos usuários
    Quando digitar o <usuario>
    E a <senha>
    Então o sistema deve encaminhar a tela de chekout

    Exemplos:
    | usuario                    | senha       |
    | "lucasosses.qa@gmail.com"  | "lucas1123" |
    | "herick.brabo@hotmail.com" | "h2365"     |
    | "luksosses.qa@gmail.com"   | "lucas0123" |