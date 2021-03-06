APP_NAME = 'app'

BOWER_COMPONENTS =
	'angular': '1.3.8':
		scripts: 'angular.min.js'
	'angular-animate': '1.3.8':
		scripts: 'angular-animate.min.js'
	'angular-mocks': '1.3.8':
		scripts: 'angular-mocks.js'
	'angular-route': '1.3.8':
		scripts: 'angular-route.min.js'
	'angular-loading-bar': '0.6.0':
		scripts: 'build/loading-bar.min.js'
		styles:  'build/loading-bar.min.css'
	'bootstrap': '3.3.1':
		fonts:   'dist/fonts/**/*.{eot,svg,ttf,woff}'
		styles:  'dist/css/*.min.css'
	'google-code-prettify': '1.0.3':
		scripts: 'src/prettify.js'
		styles:  'src/prettify.css'
	'showdown': '0.3.1':
		scripts: 'src/showdown.js'

LANGUAGES =
	SCRIPTS: [
		# 'babel'
		'coffeeScript'
		# 'liveScript'
		# 'typeScript'
	]
	STYLES: [
		'less'
		# 'sass'
	]
	VIEWS: [
		# 'haml'
		# 'jade'
		'markdown'
	]

PROXY_CONFIG = [
	route: '/api'
	url: 'http://localhost:8182/api'
]

SCRIPTS = [
	'**/angular.min.js'
	'**/angular-animate.min.js'
	'**/angular-mocks.js'
	'**/angular-route.min.js'
	'**/loading-bar.min.js'
	'**/app.js'
	'**/*.js'
]

STYLES = [
	'**/bootstrap.min.css'
	'**/bootstrap-theme.min.css'
	'**/*.css'
]

module.exports = {APP_NAME, BOWER_COMPONENTS, LANGUAGES, PROXY_CONFIG, SCRIPTS, STYLES}
