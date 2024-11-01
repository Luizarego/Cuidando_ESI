#language: pt
Dado('que estou na página inicial do site "Cuidando do Meu Bairro"') do
  visit '/' 
end

Quando('clico no botão de selecionar ano') do
  expect(page).to have_selector('#navbar > ul > li:nth-child(6) > a') 
  find('#navbar > ul > li:nth-child(6) > a').click 
end

E('seleciono "2003"') do
  find('-').click 
end

Então('devo ser redirecionado para a página de 2003: "https://cuidando.vc/2003"') do
  assert_current_path('https://cuidando.vc/2003')
end
