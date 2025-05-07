#language: pt

Funcionalidade: Cadastro de cliente para finalização de compra
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

  Contexto
    Dado que estou na página de cadastro

    Cenário: Cadastro com todos os campos obrigatórios preenchidos corretamente
        Quando preencher todos os campos obrigatórios com um e-mail válidos
        E clicar no botão "Finalizar Cadastro"
        Então o cadastro deve ser concluído com sucesso, direcionado para a página de pagamento

    Cenário: Cadastro com e-mail em formato inválido
        Quando preencher os campos obrigatórios com e-mail inválido
        E clicar no botão "Finalizar Cadastro"
        Então deve apresentar a mensagem "e-mail com formato inválido"

  Cenário: Tentativa de cadastro com campos obrigatórios vazios
        Quando não preencher todos os campos obrigatórios
        E clicar no botão "Finalizar Cadastro"
        Então deve ser exibida a mensagem "Campos obrigatórios não preenchidos"