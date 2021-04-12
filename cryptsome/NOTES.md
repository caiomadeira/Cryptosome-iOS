# Testes de Unidade e TDDs (Desenvolvimento orientado a testes)

### Conceitos 

--------------------------

Com testes automatizados melhoramos o fluxo de correçao, produtividade e a coonfiabilidade da aplicacao.


TDD -> Test Driven Development

1 - TDD - RED -> O primeiro teste deve falhar pois vem com o codigo default

2 - TDD -> GREEN -> Escrevemos o codigo para passar no teste, porem de maneira simples

3 - TDD -> REFACTOR -> Por fim refatoramos 

-  Comecamos escrevendo os testes para depois escrevermos o codigo em si.

- A qualidade dos testes e importante tambem. Um teste eh codigo e codigo mal feito e teste nao confiavel.

---------------
Antes de começar os testes, marcarei algumas regras.

RN01 - O Aplicativo nao deve passar para a tela de escolha da de arquivos se nenhuma chave for escrita
            no text field. Se o textfield estiverr vazio ou com um dado que nao seja int(inteiro).
            
RN02 - O Aplicativo nao deve criptografar se o caminho de save nao for escrito ou o textfield estiver vazio.

RN03 - O aplicativo nao deve salvar o arquivo na mesma pasta que o arquivo escolhido.
