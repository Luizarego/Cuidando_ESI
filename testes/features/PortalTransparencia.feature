Feature: Portal de Transparência

  Scenario: Clicar no link do Portal de Transparência redireciona para a página do Portal de Transparência
    Given que estou na home do site "Cuidando do Meu Bairro"
    When clico em "portal de transparência"
    Then devo ser redirecionado para a página do portal de transparência
