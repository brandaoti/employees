# Desafio Mobile

<p align="center"> 
    <img src="https://raw.githubusercontent.com/brandaoti/screenshots/main/employee_app.gif" alt="demo" height="500">
</p>


<p align="center">
  <br>
  <img src="https://raw.githubusercontent.com/brandaoti/screenshots/main/employee_screen.png" alt="demo" height="500">
  <img src="https://raw.githubusercontent.com/brandaoti/screenshots/main/employee_detail.png" alt="demo" height="500">
  <img src="https://raw.githubusercontent.com/brandaoti/screenshots/main/search_employee.png" alt="demo" height="500">
</p>

---

#### Este é um projeto desenvolvido em **Flutter** que tem como objetivo consumir uma API simulada e gerenciar estados utilizando o **ValueNotifier**. A aplicação foi projetada para fornecer uma estrutura modular e de fácil manutenção, com foco em boas práticas de desenvolvimento.

---

## 📖 Sobre o Projeto

A aplicação apresenta uma tela de splash e funcionalidades relacionadas à gestão de funcionários. A arquitetura do projeto foi planejada para ser escalável e bem organizada, com foco nas seguintes divisões principais:

- **Core**: Contém módulos reutilizáveis, como gerenciamento de erros, helpers e comunicação com a API.
- **Features**: Contém funcionalidades específicas do aplicativo, como telas e lógica relacionadas.

---

## ✅ Pré-requisitos

Antes de rodar o projeto, certifique-se de ter os seguintes itens configurados em sua máquina:

1. **Flutter SDK**: [Instale o Flutter](https://flutter.dev/docs/get-started/install) (versão mínima recomendada: 3.x).
2. **Dart SDK**: Geralmente incluído no Flutter.
3. Um dispositivo (físico ou emulador) configurado:
   - **Android**: Emulador configurado no Android Studio ou dispositivo conectado.
4. **Node.js**: Necessário para rodar o **json_rest_server**.
5. **Json Rest Server**: A API será simulada usando o `json_rest_server`, que requer a criação de um arquivo de configuração **`configs.yaml`**.

---

## 🚀 Como executar a aplicação

Siga os passos abaixo para executar o projeto em sua máquina:

### 1. Clone o repositório
Use o comando abaixo para clonar o projeto:
```bash
git clone https://github.com/seu-usuario/desafio_mobile.git
```
### 2. Navegue até o diretório do projeto
```bash
cd employees
```

### 3. Crie o arquivo de configuração de ambiente
Antes de rodar a aplicação, é necessário criar um arquivo de configuração local para as variáveis de ambiente:

Crie o arquivo .env.dev.json na raiz do projeto.
  - O arquivo **`.env.dev.json`* não será versionado, pois está listado no .gitignore.
  - Pode usar o arquivo **`.env.exemplo.json`** como base para criar o seu .env.dev.json.
  - O arquivo **.env.exemplo.json** está presente no repositório e contém o formato necessário. 
- Substitua "https://your-api-url.com" pela URL base da API do Json server.

Exemplo:
```base
{
  "BASE_URL": "https://your-api-url.com"
}
```

### 4. Configure o Json Rest Server
- Use o comando abaixo para ativar:
```bash
dart pub global activate json_rest_server
```
- Crie o arquivo **`configs.yaml`**:
- O arquivo de configuração **`configs.yaml`** deve estar na raiz do seu **`backend`**:
  
```bash
name: Json Rest Server
port: 8080
host: 0.0.0.0
database: database.json
```
- **Importante:** No exemplo acima, o arquivo **`configs.yaml`** configura o servidor para rodar na porta 8080 e usar o arquivo **`database.json`** 


### 5. Configure o dispositivo ou emulador
- Conecte seu dispositivo ou inicie um emulador:
- Para verificar se o dispositivo foi reconhecido pelo Flutter, execute o seguinte comando:

```bash
flutter devices
```
#### 5.1 Configure o IP da máquina (se necessário):
  Caso o dispositivo não seja listado, pode ser necessário configurar o IP da máquina no dispositivo Android:

- No emulador Android, caso precise, adicione o endereço IPv4.
- Em dispositivos físicos Android, se houver problemas de comunicação entre a máquina e o dispositivo, você pode precisar configurar o IP da máquina na rede local. Para isso, encontre o IP local da sua máquina (geralmente é algo como 192.168.x.x) e configure o seu aplicativo para apontar para esse IP no lugar de localhost ou 127.0.0.1.
Para encontrar o IP da sua máquina, você pode usar um dos seguintes comandos (dependendo do sistema operacional):

### Windows:

```bash
ipconfig
```
- Procure por "Endereço IPv4" ou "Gateway Padrão".

- Após encontrar o IP da sua máquina, configure seu dispositivo Android para usar esse IP para se comunicar com o servidor local.