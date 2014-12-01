'use strict';

/**
 * @ngdoc overview
 * @name uiRouterApp
 * @description
 * # uiRouterApp
 *
 * Main module of the application.
 */
angular
.module('uiRouterApp', [
  'ngAnimate',
  'ngCookies',
  'ngResource',
  'ui.router',
  'ui.router.stateHelper',
  // 'ct.ui.router.extras',
  'ngSanitize',
  'ngTouch'
])
.config(function ($stateProvider, $urlRouterProvider, stateHelperProvider) {

  console.log(stateHelperProvider);

  var artists = {
    name: 'artists',
    url: '/artists',
    templateUrl: 'views/artist_list.html',
    controller: 'ArtistListCtrl'
  },
  about = {
      name: 'about',
      url: '/about',
      templateUrl: 'views/about.html'
  };

  $stateProvider.state(artists);
  $stateProvider.state(about);

  $urlRouterProvider.otherwise('/artists');

})
.run(function ($rootScope, $state) {
   $state.transitionTo('artists');
});
