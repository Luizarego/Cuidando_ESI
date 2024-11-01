require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Given('que estou na página de início') do
  visit('/')
end

When('vou para o footer') do
  execute_script('window.scrollTo(0, document.body.scrollHeight)')
end

When('clico em "GitLab"') do
  expect(page).to have_selector('#app > footer > div > div > div:nth-child(1) > a:nth-child(2)') 
  find('#app > footer > div > div > div:nth-child(1) > a:nth-child(2)').click 
end

Then('devo ser redirecionado para a página do GitLab') do
  assert_current_path('https://gitlab.com/cuidandodomeubairro')
end
