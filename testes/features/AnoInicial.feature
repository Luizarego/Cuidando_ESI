Feature: Redirecionamento para o ano atual

  Scenario: Acessando o site no ano de 2024
    Given que estou no ano de 2024
    When digito o link para entrar na home do site "Cuidando do Meu Bairro"
    Then devo ser redirecionado para a home do site correspondente ao ano de 2024
