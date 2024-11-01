Feature: Enviar e-mail

  Scenario: Acessar o link para o e-mail
    Given Eu estou na homepage
    When vou até o footer
    And clico no texto "E-mail"
    Then devo ser redirecionado para a página de envio para o e-mail ola@cuidando.vc
