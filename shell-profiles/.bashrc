pint() {
  vendor/bin/pint
}

analyze() {
  vendor/bin/phpstan analyse --memory-limit=2G
}

a() {
  php artisan "$@"
}

tinker() {
  php artisan tinker
}

service() {
  php artisan make:class "Support/Services/$1"
}

auth() {
  php artisan make:class "Auth/$1"
}

command() {
  php artisan make:command "$@"
}

controller() {
  php artisan make:controller "$1" --api
}

enum() {
  php artisan make:enum "Support/Enums/$1"
}

factory() {
  php artisan make:factory "$@"
}

interface() {
  php artisan make:interface "Support/Interfaces/$1"
}

job() {
  php artisan make:job "$@"
}

mail() {
  php artisan make:mail "$1" --markdown
}

middleware() {
  php artisan make:middleware "$@"
}

migration() {
  php artisan make:migration "$@"
}

model() {
  php artisan make:model "$@"
}

notification() {
  php artisan make:notification "$@"
}

policy() {
  php artisan make:policy "$@"
}

provider() {
  php artisan make:provider "$@"
}

request() {
  php artisan make:request "$@"
}

resource() {
  php artisan make:resource "$@"
}

seeder() {
  php artisan make:seeder "$@"
}

trait() {
  php artisan make:trait "Support/Traits/$1"
}

migrate() {
  php artisan migrate
}

refresh() {
  php artisan migrate:refresh "$@"
}

seed() {
  php artisan db:seed
}

feature-test() {
  php artisan pest:test "$@"
}

unit-test() {
  php artisan pest:test "$1" --unit
}

dataset-test() {
  php artisan pest:dataset "$@"
}

test() {
  php artisan test "$@"
}

full-test() {
	php artisan test --parallel --coverage --min=100
}

full-type-test() {
	php artisan test --parallel --type-coverage --min=100
}

queue() {
  php artisan queue:work
}

test-schedules() {
  php artisan schedule:test "$@"
}

publish() {
  php artisan vendor:publish "$@"
}

storage-link() {
  php artisan storage:link --relative
}