require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Given('Eu estou na página de login') do
  visit('/')
  expect(page).to have_selector('#navbar > ul > li:nth-child(5) > a') 
  find('#navbar > ul > li:nth-child(5) > a').click
  expect(page).to have_selector('#modal-dialog > div') # Verifica se o formulário de login foi carregado
end

When('Eu insiro credenciais inválidas e envio') do
  fill_in 'Nome de usuário', with: 'usuario_invalido@mail.com'
  fill_in 'Senha', with: 'senha12345'  
  expect(page).to have_selector('#modal-dialog > div > div:nth-child(2) > div > form > button') 
  find('#modal-dialog > div > div:nth-child(2) > div > form > button').click 
end

Then('Eu devo ver uma mensagem de erro de login "O nome de usuário parece não registrado..."') do
  expect(page).to have_content('O nome de usuário parece não registrado...')
end
