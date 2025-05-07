#language: pt

Funcionalidade: Configuração de produto antes da compra
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: 
        Dado que estou na página do produto

    Cenário: Selecionar cor, tamanho e quantidade antes de adicionar ao carrinho
        Quando selecionar uma cor, tamanho e quantidade entre 1 e 10
        E clicar no botão "Adicionar ao carrinho"
        Então o sistema deve adicionar o produto ao carrinho

    Cenário: Impedir adição ao carrinho sem selecionar todas as opções
        Quando não selecionar cor ou tamanho ou quantidade
        E clicar no botão "Adicionar ao carrinho"
        Então o sistema deve exibir a mensagem de erro "todas as seleções são obrigatórias"

    Cenário: Impedir adição de mais de 10 produtos
        Quando tentar selecionar uma quantidade maior que 10
        Então o sistema deve mostrar a mensagem "limite de 10 unidades por venda"

    Cenário: Limpar seleções e voltar ao estado original
        Dado que faça seleções de cor, tamanho e quantidade
        Quando clicar no botão "Limpar"
        Então o sistema deve remover todas as seleções