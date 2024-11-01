require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

#language: pt
Dado('Eu estou no início do site "Cuidando do Meu Bairro"') do
  visit '/' 
end

Quando('clico no elemento de selecionar ano') do
  expect(page).to have_selector('#app > div > div.c-map.expanded-map > div.map__card-content.container.mx-auto > div > div.bg-white.lg\:pb-10.lg\:p-10.pt-10.pb-3.mb-5.lg\:rounded-lg.lg\:shadow-lg > div:nth-child(2) > div.c-map__year-submit.grid.grid-cols-2.gap-4.h-8 > div:nth-child(1) > div') 
  find('#app > div > div.c-map.expanded-map > div.map__card-content.container.mx-auto > div > div.bg-white.lg\:pb-10.lg\:p-10.pt-10.pb-3.mb-5.lg\:rounded-lg.lg\:shadow-lg > div:nth-child(2) > div.c-map__year-submit.grid.grid-cols-2.gap-4.h-8 > div:nth-child(1) > div').click 
end

E('seleciono "2003"') do
  find('#app > div > div.c-map.expanded-map > div.map__card-content.container.mx-auto > div > div.bg-white.lg\:pb-10.lg\:p-10.pt-10.pb-3.mb-5.lg\:rounded-lg.lg\:shadow-lg > div:nth-child(2) > div.c-map__year-submit.grid.grid-cols-2.gap-4.h-8 > div:nth-child(1) > div > div > ul > li:nth-child(1)').click 
end

Então('devo ser redirecionado para a página de 2003') do
  assert_current_path('https://cuidando.vc/2003')
end
