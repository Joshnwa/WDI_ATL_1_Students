(function() {
    var app = angular.module('leatherLaneMarketApp', []);

     app.controller('MarketController', function($scope){
       $scope.basket = 0;

       $scope.addToBasket = function() {
       $scope.basket ++
       }
     });



  })();