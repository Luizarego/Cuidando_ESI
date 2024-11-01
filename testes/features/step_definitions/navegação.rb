#language: pt
Dado('que estou na página do site') do
  visit('/')
end

Então('devo ver o menu de navegação com links para outras páginas') do
  expect(page).to have_css('Sobre')
  expect(page).to have_link('Aprenda+')
  expect(page).to have_link('Análises')
  expect(page).to have_link('Blog')
end
