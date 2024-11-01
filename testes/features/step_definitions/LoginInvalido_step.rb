require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Given('Eu estou na página de login') do
  visit('/')
  expect(page).to have_selector('#navbar > ul > li:nth-child(5) > a') 
  find('#navbar > ul > li:nth-child(5) > a').click
  expect(page).to have_selector('-')
end
end

When('Eu insiro credenciais inválidas e envio') do
  -
end

Then('Eu devo ver uma mensagem de erro de login "O nome de usuário parece não registrado..."') do
  page.has_selector?('-', visible: true)
end
