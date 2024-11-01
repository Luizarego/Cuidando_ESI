Feature: Login de Usuario Invalido
  Scenario: Login com credenciais inválidas
    Given Eu estou na página de login
    When Eu insiro credenciais inválidas e envio
    Then Eu devo ver uma mensagem de erro de login "O nome de usuário parece não registrado..."
