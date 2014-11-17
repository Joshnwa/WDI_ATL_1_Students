angular.module('leatherLaneMarketApp', ['ngAnimate', 'ngRoute'])
.config(function($routeProvider) {
  $routeProvider
  .when('/market', {
    templateUrl: 'views/market.html',
    controller: 'MarketController'
  })
  .when('/add', {
    templateUrl: 'views/add.html',
    controller: 'AddController'
  })
  .otherwise({
    redirectTo: '/market'
  });
});
