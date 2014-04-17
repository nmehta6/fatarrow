# fatarrow [![Version][version-image]][version-url] [![Build Status][build-image]][build-url] [![Dependency Status][dependencies-image]][dependencies-url] [![devDependency Status][dev-dependencies-image]][dev-dependencies-url]
> An [AngularJS](http://angularjs.org/) large application Reference Architecture

Build large [AngularJS](http://angularjs.org/) applications with [CoffeeScript](http://coffeescript.org/) - **without the ceremony**.  By the way, you can write JavaScript too.


## Table of Contents
* [Installing](#installing)
* [Running](#running)
* [Writing Your App](#writing-your-app)
* [Contributing](#contributing)
* [Changelog](#changelog)
* [License](#license)


## Installing
Before running, you must install and configure the following one-time dependencies:

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/)
* [gulp.js](http://gulpjs.com/) - use the terminal command below
```bash
$ npm install -g gulp
```

Once the dependencies have been installed, enter the following commands in the terminal:
```bash
$ git clone git@github.com:CaryLandholt/fatarrow.git
$ cd fatarrow
$ npm install
```


## Running
Enter the following in the terminal:
```bash
$ gulp
```


## Writing Your App
fatarrow takes advantage of **[ng-classify](https://github.com/CaryLandholt/ng-classify)**, allowing you to write AngularJS modules as CoffeeScript classes.

Instead of writing your controllers like this:
```javascript
angular.module('app').controller('todoController', ['todoService', function (todoService) {
	this.todos = todoService.get();

	this.add = function (todo) {
		todoService.add(todo);
	};
}]);
```

Write them like this:
```coffee
class Todo extends Controller
	constructor: (@todoService) ->
		@todos = @todoService.get()

	add: (todo) ->
		@todoService.add todo
```


### Structure
**Source**
```
src/
	app/
		app.coffee
		appRoutes.coffee
		views.backend.coffee
	home/
		home.html
		homeController.coffee
		homeRoutes.coffee
	index.html
```

**Distribution (Dev)**
```
dist/
	app/
		app.js
		appRoutes.js
		views.backend.js
	home/
		home.html
		homeController.js
		homeRoutes.js
	vendor/
		fonts/
			glyphicons-halflings-regular.eot
			glyphicons-halflings-regular.svg
			glyphicons-halflings-regular.ttf
			glyphicons-halflings-regular.woff
		scripts/
			angular-animate.min.js
			angular-mocks.js
			angular-route.min.js
			angular.min.js
			prettify.js
		styles/
			bootstrap-theme.min.css
			bootstrap.min.css
			prettify.css
	index.html
```

**Distribution (Prod)**
```
dist/
	fonts/
		glyphicons-halflings-regular.eot
		glyphicons-halflings-regular.svg
		glyphicons-halflings-regular.ttf
		glyphicons-halflings-regular.woff
	scripts/
		scripts.min.js
	styles/
		styles.min.css
	index.html
```


## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md)


## Changelog
See [CHANGELOG.md](CHANGELOG.md)


## License
See [LICENSE](LICENSE)


[build-image]:            https://secure.travis-ci.org/CaryLandholt/fatarrow.svg
[build-url]:              http://travis-ci.org/CaryLandholt/fatarrow

[dependencies-image]:     https://david-dm.org/CaryLandholt/fatarrow.svg
[dependencies-url]:       https://david-dm.org/CaryLandholt/fatarrow

[dev-dependencies-image]: https://david-dm.org/CaryLandholt/fatarrow/dev-status.svg
[dev-dependencies-url]:   https://david-dm.org/CaryLandholt/fatarrow#info=devDependencies

[version-image]:          https://badge.fury.io/gh/CaryLandholt%2Ffatarrow.svg
[version-url]:            http://badge.fury.io/gh/CaryLandholt%2Ffatarrow