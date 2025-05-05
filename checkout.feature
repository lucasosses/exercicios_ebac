#language: pt

Funcionalidade: Cadastro de cliente para finalização de compra
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

  Contexto
    Dado que estou na página de cadastro

    Cenário: Cadastro com todos os campos obrigatórios preenchidos corretamente
        Quando eu preencher todos os campos obrigatórios marcados com asterisco corretamente
        E preencher um e-mail com formato válido
        E clicar no botão "Finalizar Cadastro"
        Então o cadastro deve ser concluído com sucesso
        E devo ser direcionado para a página de pagamento

    Cenário: Cadastro com e-mail em formato inválido
        Quando eu preencher os campos obrigatórios
        E digitar um e-mail com formato inválido
        E clicar no botão "Finalizar Cadastro"
        Então devo ver a mensagem "e-mail com formato inválido"

  Cenário: Tentativa de cadastro com campos obrigatórios vazios
        Quando eu não preencher todos os campos obrigatórios
        E clicar no botão "Finalizar Cadastro"
        Então deve ser exibida a mensagem "Campos obrigatórios não preenchidos"