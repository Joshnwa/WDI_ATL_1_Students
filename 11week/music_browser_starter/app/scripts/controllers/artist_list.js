'use strict';

angular.module('uiRouterApp')
.controller('ArtistListCtrl', function ($scope) {

  $scope.artists = [
    { "id": 1, "name": "The Beatles" },
    { "id": 2, "name": "Bob Dylan" },
    { "id": 3, "name": "The Rolling Stones" }
  ];

});
