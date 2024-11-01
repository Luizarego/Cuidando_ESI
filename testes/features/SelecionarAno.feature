Feature: Selecionar ano

  Scenario: Selecionar o ano de 2003
    Given Eu estou no início do site "Cuidando do Meu Bairro"
    When clico no elemento de selecionar ano
    And seleciono "2003"
    Then devo ser redirecionado para a página de 2003
