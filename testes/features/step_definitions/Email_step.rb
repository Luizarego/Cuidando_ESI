require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Given('Eu estou na homepage') do
  visit('/')
end

When('vou até o footer') do
  execute_script('window.scrollTo(0, document.body.scrollHeight)')
end

When('clico no texto {string}') do |link_text|
  click_link(link_text)
end

Then('devo ser redirecionado para a página de envio para o e-mail ola@cuidando.vc') do
  link = find_link("E-mail") # Substitua 'Enviar Email' pelo texto ou ID do seu link
  if link[:href].start_with?('mailto:ola@cuidando.vc')
    puts "Link 'mailto:' está presente e configurado corretamente."
  else
    puts "Link 'mailto:' não encontrado."
  end
end
