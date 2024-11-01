Feature: Selecionar ano

  Scenario: Selecionar o ano de 2003
    Given que estou na página inicial do site "Cuidando do Meu Bairro"
    When clico no botão de selecionar ano
    And seleciono "2003"
    Then devo ser redirecionado para a página de 2003: "https://cuidando.vc/2003"
