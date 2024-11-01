Feature: Selecionar ano

  Scenario: Selecionar o ano de 2003
    Given que estou na página inicial do site "Cuidando do Meu Bairro"
    When clico em "2022"
    And seleciono "2003"
    Then devo ser redirecionado para a página de 2003: "https://cuidando.vc/2003"
