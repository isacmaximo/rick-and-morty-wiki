# rick_and_morty_wiki

Rick And Morty Wiki: Um app feito em Flutter que traz características sobre os personagens da série.

Versão do Flutter: 3.35.3 (versão estável)

=> Motivo da aplicação ser em inglês:
Manter a consistência dos dados que vem da API.

=> O que foi utilizado:
MVVM simplificado - Arquitetura adotada para separação de responsabilidades entre as camadas, facilitando a manutenção do código. 
Flutter Modular - Usado para injeção de dependências e gerenciamento de rotas.
Mobx - Geranciador de estado reativo.
Dio - Biblioteca HTTP utilizada para consumir a API.

=> Execução do projeto
Na raiz do projeto, siga os seguintes comandos:

1- Baixar as dependências:
flutter pub get

2 - Gerar os arquivos via build_runner:
flutter packages pub run build_runner build

3 - Rodar o app:
flutter run

