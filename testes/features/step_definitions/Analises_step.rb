#language: pt
Dado('que estou na página inicial do site "Cuidando do Meu Bairro"') do
  visit '/'
end

Quando('clico em "Análises"') do
  expect(page).to have_selector('-') 
  find('-').click 
end

Então('devo ser redirecionado para a página de analises') do
  assert_current_path('https://cuidando.vc/analises')
end
