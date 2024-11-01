Feature: Acesso GitLab

  Scenario: Acessar o link do GitLab
    Given que estou na página de início
    When vou para o footer
    And clico em "GitLab"
    Then devo ser redirecionado para a página do GitLab
