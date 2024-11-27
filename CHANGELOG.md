## **Splash**:
- **Adicionado**:
  - **Controller de Splash**: Criação de um controller para a tela de splash com animação controlada.
    - Usado `AnimationController` e `CurvedAnimation` para criar animações fluidas de transição.
    - Definição de `Duration` e `TickerProvider` para controlar a animação de escala.
  - **SplashPage**: Implementada a tela de splash (`SplashPage`) para exibir a animação de carregamento.
    - A `SplashPage` é responsável por inicializar o controller e exibir a animação até a transição para a tela inicial.
    - A tela exibe uma animação de escala controlada pelo `AnimationController`, com a transição acontecendo ao final da animação.

  

- **Navegação**:
  - Implementação de uma navegação mais suave após a animação de splash, com transição para a tela inicial após o término da animação.
  
- **Código de Navegação**: O código de navegação foi melhor estruturado utilizando `Navigator.pushReplacement` para garantir a transição sem retornar à splash após navegar para a próxima tela.

#### **Correções**
- **Problemas de Lógica de Navegação**: Corrigido o fluxo da navegação para não realizar múltiplas transições durante a animação de splash.
- **Desacoplamento**: Melhorado o desacoplamento do comportamento da animação e da lógica de navegação, usando o `ValueNotifier` e removendo a navegação diretamente no controller.



## **CONFIGURAÇÕES**:
- **Adicionado**:
  - **Cores**: Definição das cores principais no arquivo `app_colors.dart`, incluindo cores como `primary`, `black`, `white`, e variações de cinza e azul.
  - **Tipografia**: Criação da estrutura de tipografia no arquivo `app_text_style.dart`, com estilos para `H1`, `H2`, e `H3`, e fontes com diferentes pesos.
  - **Espaçamento**: Criação do arquivo `app_spacing.dart` para centralizar os valores de espaçamento em um único local, promovendo consistência no layout.
  - **Assets**: Arquivo `app_assets.dart` criado para organizar os caminhos dos assets (imagens, logos, etc.), tornando o gerenciamento de arquivos mais eficiente.
  - **Sombras**: Definição de sombras para elementos da interface no arquivo `app_shadow.dart`, incluindo diferentes intensidades e efeitos de `BoxShadow`.
  - **Strings**: Criação do arquivo `app_strings.dart` para armazenar todas as strings do aplicativo, promovendo a centralização e fácil manutenção dos textos.
  - **Base State**: Adição do arquivo `base_state.dart` para gerenciar o estado comum das telas, facilitando o gerenciamento de erros, carregamento e transições.
  - **BaseException**
  - Implementada a classe **`BaseException`** para fornecer exceções personalizadas com mensagens de erro mais informativas.
  - **`BaseException`** é usada junto com **ErrorState** para representar falhas com erro detalhado.
  - **Result**
  - Implementado o padrão de Either, com sucesso ou falha utilizando a classe abstrata `Result<E, S>`.
  - Adicionadas as classes `Success<E, S>` e `Failure<E, S>` para representar resultados de sucesso e erro, respectivamente.
  - A classe `Success` contém um campo `data` para armazenar o valor retornado no caso de sucesso.
  - A classe `Failure` contém um campo `error` para armazenar a descrição do erro ou exceção.


- **Melhorado**:
  - **Manutenção e Reusabilidade**: Modularização dos valores de cores, tipografia, espaçamento, strings e sombras, facilitando a reutilização e manutenção no app.
  - **Consistência de Estilo**: Garantido que todos os elementos do app sigam o mesmo padrão de design com as novas configurações de tema.