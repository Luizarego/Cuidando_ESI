#language: pt
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Dado('Eu estou na página inicial') do
  visit('/')
end

Então('Eu devo ver o menu de navegação com links para outras páginas') do
  expect(page).to have_selector('#navbar > ul > li:nth-child(1) > a')
  expect(page).to have_selector('#navbar > ul > li:nth-child(2) > a') 
  expect(page).to have_selector('#navbar > ul > li:nth-child(3) > a')
  expect(page).to have_selector('#navbar > ul > li:nth-child(4) > a') 
end
