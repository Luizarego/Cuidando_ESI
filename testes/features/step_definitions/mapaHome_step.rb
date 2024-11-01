#language: pt
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Dado('Eu estou na página inicial do site') do
  visit('/')
end

Então('Eu devo ver o elemento do mapa carregado na página') do
  expect(page).to have_selector('#map-container')
end
