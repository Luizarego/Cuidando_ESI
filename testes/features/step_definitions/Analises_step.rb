require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

#language: pt
Dado('que estou na homepage') do
  visit '/'
end

Quando('clico em "Análises"') do
  expect(page).to have_selector('#navbar > ul > li:nth-child(3) > a') 
  find('#navbar > ul > li:nth-child(3) > a').click 
end

Então('devo ser redirecionado para a página de análises') do
  assert_current_path('https://cuidando.vc/analises')
end
