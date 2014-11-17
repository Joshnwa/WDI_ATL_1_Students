angular.module('leatherLaneMarketApp')
.controller('AddController',
            ["$scope", "$location", "stallService",
            function($scope, $location, stallService) {

              console.log('AddController is alive!');

  $scope.stalls = stallService.stalls;

  $scope.addStall = function() {
    stallService.add($scope.newStall)
    .success(function(data) {
      $scope.stalls.push(data);
      $scope.newStall = null;
      $scope.stallForm.$setPristine();
      $location.url('/#/market');
    }).error(function() {
      alert('Something went wrong!');
    });
  };

}]);
