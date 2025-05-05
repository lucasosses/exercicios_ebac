#language: pt

Funcionalidade: Tela de login
    Como cliente da EBAC-SHOP
    Quero me autenticar
    Para visualizar meus pedidos

    Contexto:
    Dado que eu acesse a página de autenticação do portal EBAC

    Cenário: Autenticação válida
    Quando eu digitar o usuário "lucasosses.qa@gmail.com"
    E a senha "lucas123"
    Então devo ser direcionado para a tela de checkout

    Cenário: Usuário inexistente
    Quando eu digitar o usuário "pedrinhomil@gmail.com"
    E a senha "lucas123"
    Então deve exibir uma mensagem de alerta "Usuário Inexistente"

    Cenário: Usuário com senha inválida
    Quando eu digitar o usuário "pedrinhomil@gmail.com"
    E a senha "lucas5472"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

    Esquema do Cenário: Autenticar multiplos usuários
    Quando eu digitar o <usuario>
    E a <senha>
    Então deve encaminhar a tela de chekout

    Exemplos:
    | usuario                    | senha       |
    | "lucasosses.qa@gmail.com"  | "lucas1123" |
    | "herick.brabo@hotmail.com" | "h2365"     |
    | "luksosses.qa@gmail.com"   | "lucas0123" |