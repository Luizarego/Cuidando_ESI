#language: pt
Dado('que já estou na página inicial do site') do
  visit('/')
end

Então('devo ver o elemento do mapa carregado na página') do
  expect(page).to have_css('#map')
end
