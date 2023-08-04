# HearthstoneCards - Aplicativo iOS com arquitetura VIP

O HearthstoneCards é um aplicativo iOS desenvolvido em Swift com a arquitetura VIP (View-Interactor-Presenter). O objetivo do aplicativo é consumir a API do jogo Hearthstone e exibir uma listagem de cards, permitindo aos usuários visualizar os detalhes de cada card ao tocar nele.

## Arquitetura VIP

O padrão de arquitetura VIP é uma abordagem que visa separar as responsabilidades do código em camadas distintas, tornando o desenvolvimento e a manutenção do aplicativo mais organizados e escaláveis.

## Como Executar o Projeto

Para executar o projeto, siga as etapas abaixo:

1. Clone o repositório do projeto em sua máquina local.
2. Abra o terminal e navegue até a pasta raiz do projeto.
3. Antes de executar o aplicativo, é necessário instalar as dependências. Para isso, utilize o gerenciador de dependências CocoaPods. Se você ainda não tiver o CocoaPods instalado, pode instalá-lo com o seguinte comando:

```
sudo gem install cocoapods
```

4. Com o CocoaPods instalado, agora você pode instalar as dependências do projeto com o seguinte comando:

```
pod install
```

5. Aguarde até que todas as dependências sejam baixadas e instaladas corretamente.

6. Com as dependências instaladas, agora você pode abrir o projeto no Xcode:

```
open HearthstoneCards.xcworkspace
```

7. Com o projeto aberto no Xcode, selecione o simulador de dispositivo iOS ou conecte um dispositivo físico.

8. Por fim, clique no botão "Build and Run" (ou use o atalho "⌘ + R") para compilar o aplicativo e executá-lo no simulador ou dispositivo escolhido.

Agora o aplicativo HearthstoneCards será iniciado e você poderá explorar a listagem de cards e visualizar os detalhes de cada card ao tocar nele.
