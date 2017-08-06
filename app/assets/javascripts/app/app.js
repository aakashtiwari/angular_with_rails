var app = angular.module('avocureDemo', [ 'ngResource', 'ngAria', 'ngMaterial', 'ngAnimate', 'ui.router', 'templates']);

app.config(function ($qProvider, $stateProvider, $urlRouterProvider, $locationProvider) {
    $qProvider.errorOnUnhandledRejections(false);
    /**
     * Routes and States
     */
    $stateProvider
        .state('home', {
            url: '/',
            templateUrl: 'home.html',
            controller: 'HomeCtrl'
        })
        .state('requests', {
            url: '/requests',
            templateUrl: 'requests.html',
            controller: 'RequestsCtrl'
        });

    // default fall back route
    $urlRouterProvider.otherwise('/');

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
});