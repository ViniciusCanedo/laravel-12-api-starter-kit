<div style="display: flex; align-items: center;">
<img src="https://cdn.worldvectorlogo.com/logos/laravel-2.svg" alt="laravel-icon" width="75"> 
<h1 style="margin-left: 16px; border:none; padding: 8px 0;">Meu kit inicial para desenvolvimento de APIs com Laravel<h1>
</div>

<br>

## 📋 Sobre

Este é um kit inicial para desenvolvimento de APIs RESTful com Laravel 12, configurado para facilitar o desenvolvimento de aplicações pessoais, permitindo reutilizar a estrutura do kit em outros projetos.

## 🚀 Requisitos

- PHP 8.2 ou superior
- Composer
- MySQL 8.0 ou PostgreSQL 14+
- Git

## 🔧 Métodos de instalação
### Instalador oficial do Laravel
```bash
# Instalar o Laravel Installer
composer global require laravel/installer

# Instalar o starter kit
laravel new my-application --using=ViniciusCanedo/laravel-12-api-starter-kit
```

### Clonando o repositório
```bash
# Clone o repositório
git clone https://github.com/ViniciusCanedo/laravel-12-api-starter-kit.git 

# Entre no diretório do projeto
cd laravel-12-api-starter-kit

# Instale as dependências
composer install

# Gere a chave da aplicação
php artisan key:generate

# Configure o banco de dados no arquivo .env e execute as migrações
php artisan migrate

# Inicie o servidor de desenvolvimento
php artisan serve # ou php -S localhost:{$PORT} -t public
```

> **Dica**: Para facilitar o uso dos comandos, você pode adicionar o arquivo `shell-profiles/.bashrc` ou `shell-profiles/Microsoft.PowerShell_profile.ps1` ao seu perfil do shell, garantindo que os recursos sejam atribuídos ao repositório correto.

## 🐘 Convenções de Nomenclatura

- **Variáveis e chaves de array/objeto**: snake_case — `$user_id`, `$user['address_id']`
- **Arquivos Blade e diretórios customizados**: kebab-case — `user-profile.blade.php`, `user-profile/`
- **Models**: singular e PascalCase, representando entidades — `User`, `PostCategory`
- **Tabelas**: plural e snake_case — `users`, `post_categories`
- **Requests**: PascalCase + "Request" indicando o método — `StoreUserRequest`, `UpdatePostRequest`
- **Migrations**: snake_case descrevendo a ação — `create_users_table`, `add_name_to_users_table`, `remove_birthdate_from_users_table`
- **Middlewares**: PascalCase + "Middleware" descrevendo a ação — `ValidateAdminMiddleware`, `SaveLogsMiddleware`
- **Traits**: recurso ou propriedade adicional da classe em PascalCase — `HasApiToken`, `Authenticatable`, `HasFactory`, `Queueable`
- **Controllers e demais classes**: PascalCase + nome do diretório pai, no singular — `UserController`, `PostService`, `UserInterface`
- **Jobs**: PascalCase + "Job", descrevendo a tarefa a ser realizada — `ProcessPaymentJob`, `SendEmailJob`
- **Factories**: PascalCase + "Factory" — `UserFactory`, `ProductFactory`
- **Seeders**: PascalCase + "Seeder" — `UserSeeder`, `ProductSeeder`
- **Enums**: PascalCase, singular — `UserStatus`, `PaymentType`


## 🗂️ Estrutura de pastas

```
📁 laravel-12-api-starter-kit/  
├── 📁 app
    ├── 📁 Auth
│   ├── 📁 Console
│   │   └── 📁 Commands
│   ├── 📁 Http
│   │   ├── 📁 Controllers
│   │   ├── 📁 Middleware
│   │   ├── 📁 Requests
│   │   └── 📁 Resources
│   ├── 📁 Jobs
│   ├── 📁 Mail
│   ├── 📁 Models
│   ├── 📁 Notifications
│   ├── 📁 Policies
│   ├── 📁 Providers
│   └── 📁 Support
│       ├── 📁 Interfaces
│       ├── 📁 Services
│       └── 📁 Traits
├── 📁 bootstrap
├── 📁 config
├── 📁 database
│   ├── 📁 factories
│   ├── 📁 migrations
│   └── 📁 seeders
├── 📁 public
│   └── 📁 vendor
│   │   └── 📁 log-viewer
├── 📁 resources
│   ├── 📁 css
│   ├── 📁 js
│   └── 📁 views
│       └── 📁 vendor
│           └── 📁 mail
│               ├── 📁 html
|               |   └── 📁 theme
│               └── 📁 mail
├── 📁 routes
├── 📁 shell_profiles
├── 📁 storage
│   ├── 📁 app
│   │   ├── 📁 private
│   │   └── 📁 public
│   ├── 📁 framework
│   └── 📁 logs
└── 📁 tests
    ├── 📁 Feature
    └── 📁 Unit
```

## 🧪 Boas Práticas de Testes

### Tipos de Testes

- **Testes Unitários**: Testam componentes isolados (classes, métodos)
- **Testes de Funcionalidade**: Testam funcionalidades completas, incluindo requisições HTTP
- **Testes de Segurança**: Testam a segurança da aplicação, como autenticação, autorização, escopos e controle de acesso

### Convenções de Testes

- Nomeie os testes descrevendo o que eles fazem: `it('creates a new user')`
- Use factories para criar dados de teste
- Isole os testes usando o banco de dados em memória, sqlite ou transações
- Teste tanto os casos de sucesso quanto os de falha
- Use `describe()` para agrupar testes relacionados
- Use `group()` para adicionar tags ao teste de um mesmo módulo

## 🔒 Segurança

### Boas Práticas

- Use Sanctum para autenticação de API
- Valide todas as entradas de dados com Form Requests
- Utilize políticas para autorização
- Evite consultas SQL brutas para prevenir injeção de SQL
- Implemente rate limiting para prevenir ataques de força bruta

## 🚦 Convenções de API

### Endpoints

- Use substantivos no plural para recursos: `/api/users`, `/api/products`
- Use verbos HTTP apropriados: GET, POST, PUT, PATCH, DELETE
- Versione suas APIs: `/api/v1/users`
- Use códigos HTTP apropriados (200, 201, 400, 401, 403, 404, 422, 500)

## 🔄 Fluxo de Trabalho Git

### Branches

- `main`: Código em produção
- `homolog`: Código em homologação
- `feature/*`: Novas funcionalidades
- `bugfix/*`: Correções de bugs

## 📚 Recursos Adicionais

- [Documentação oficial do Laravel](https://laravel.com/docs)
- [Boas práticas com Laravel](https://github.com/alexeymezenin/laravel-best-practices)
- [Documentação oficial do Pest](https://pestphp.com/docs/installation)
- [Laracasts](https://laracasts.com)