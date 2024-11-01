require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Given('que estou na página inicial do site "Cuidando do Meu Bairro"') do
  visit('/')
end

When('desço para o footer') do
  execute_script('window.scrollTo(0, document.body.scrollHeight)')
end

When('clico no botão {string}') do |link_text|
  click_link(link_text)
end

Then('devo ser redirecionado para a página de envio para o e-mail ola@cuidando.vc') do
  assert_current_path('-')
end
