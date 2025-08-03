function pint {
	vendor/bin/pint
}

function analyze {
	vendor/bin/phpstan analyse --memory-limit=2G
}

function a {
	php artisan @args
}

function tinker {
	php artisan tinker
}

function service {
	param ($name)
	php artisan make:class "Support/Services/$name"
}

function auth {
	param ($name)
	php artisan make:class "Auth/$name"
}

function command {
	php artisan make:command @args
}

function controller {
	param ($name)
	php artisan make:controller @name --api
}

function enum {
	param ($name)
	php artisan make:enum "Support/Enums/$name"
}

function factory {
	param ($name)
	php artisan make:factory @args
}

function interface {
	param ($name)
	php artisan make:interface "Support/Interfaces/$name"
}

function job {
	php artisan make:job @args
}

function mail {
	param ($name)
	php artisan make:mail $name --markdown
}

function middleware {
	php artisan make:middleware @args
}

function migration {
	php artisan make:migration @args
}

function model {
	php artisan make:model @args
}

function notification {
	php artisan make:notification @args
}

function policy {
	php artisan make:policy @args
}

function provider{
	php artisan make:provider @args
}

function request {
	php artisan make:request @args
}

function resource {
	php artisan make:resource @args
}

function seeder {
	php artisan make:seeder @args
}

function trait {
	param ($name)
	php artisan make:trait "Support/Traits/$name"
}

function migrate {
	php artisan migrate
}

function refresh {
	php artisan migrate:refresh @args
}

function seed {
	php artisan db:seed
}

function feature-test {
	php artisan pest:test @args
}

function unit-test {
	param ($name)
	php artisan pest:test $name --unit
}

function dataset-test {
	php artisan pest:dataset @args
}

function test {
	php artisan test @args
}

function queue {
	php artisan queue:work
}

function test-schedules{
	php artisan schedule:test @args
}

function publish {
	php artisan vendor:publish @args
}

function storage-link {
	php artisan storage:link --relative
}
