# rick_and_morty_wiki

Rick And Morty Wiki: Um app feito em Flutter que traz características sobre os personagens da série.<br>

Versão do Flutter: 3.35.3 (versão estável)<br>

=> Motivo da aplicação ser em inglês:<br>
Manter a consistência dos dados que vem da API.

=> O que foi utilizado:<br>
MVVM simplificado - Arquitetura adotada para separação de responsabilidades entre as camadas, facilitando a manutenção do código.<br>
Flutter Modular - Usado para injeção de dependências e gerenciamento de rotas.<br>
Mobx - Geranciador de estado reativo.<br>
Dio - Biblioteca HTTP utilizada para consumir a API.<br>

=> Execução do projeto - Na raiz do projeto, siga os seguintes comandos:<br>

1- Baixar as dependências:<br>
flutter pub get

2 - Gerar os arquivos via build_runner:<br>
flutter packages pub run build_runner build

3 - Rodar o app:<br>
flutter run

