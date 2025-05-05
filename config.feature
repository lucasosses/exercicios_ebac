#language: pt

Funcionalidade: Configuração de produto antes da compra
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: 
        Dado que estou na página do produto

    Cenário: Selecionar cor, tamanho e quantidade antes de adicionar ao carrinho
        Quando eu selecionar uma cor
        E selecionar um tamanho
        E selecionar uma quantidade entre 1 e 10
        E clicar no botão "Adicionar ao carrinho"
        Então o produto deve ser adicionado ao carrinho com as configurações escolhidas

    Cenário: Impedir adição ao carrinho sem selecionar todas as opções
        Quando eu não selecionar cor ou tamanho ou quantidade
        E tentar clicar no botão "Adicionar ao carrinho"
        Então devo ver a mensagem de erro "todas as seleções são obrigatórias"

    Cenário: Impedir adição de mais de 10 produtos
        Quando eu tentar selecionar uma quantidade maior que 10
        Então o sistema não deve permitir a seleção
        E deve mostrar a mensagem "limite de 10 unidades por venda"

    Cenário: Limpar seleções e voltar ao estado original
        Dado que fiz seleções de cor, tamanho e quantidade
        Quando eu clicar no botão "Limpar"
        Então todas as seleções devem ser removidas
        E o formulário deve voltar ao estado original