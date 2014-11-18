angular.module('leatherLaneMarketApp')
.controller('MarketController',
            ["$scope", "stallService",
            function($scope, stallService) {

  $scope.getStalls = function() {
    stallService.getAll().success(function(data) {
      $scope.stalls = data;
    }).error(function() {
      alert('Something went wrong!');
    });
  };

  $scope.getStalls();

  $scope.newStall = null;

  $scope.selectStall = function(stall) {
    $scope.selectedStall = stall;
  };

  $scope.clearSelectedStall = function() {
    $scope.selectedStall = null;
  };

  $scope.deleteStall = function(stall) {
    stallService.delete(stall)
    .success(function(data) {
      $scope.selectedStall = null;
    });
  };

  $scope.setEditStall = function(stall) {
    $scope.editStall = angular.copy(stall);
  };

  $scope.clearEditStall = function() {
    $scope.editStall = null;
  };

  $scope.updateStall = function(stall) {
    stallService.update(stall)
    .success(function() {
      angular.copy($scope.editStall, $scope.selectedStall);
      $scope.clearEditStall();
    });
  };

  $scope.searchFunction = function(stall) {
    if (!$scope.search) {
      return true;
    }
    // case insensitive filtering
    if (stall.name.toUpperCase().indexOf($scope.search.toUpperCase()) != -1
     || stall.description.toUpperCase().indexOf($scope.search.toUpperCase()) != -1) {
      return true;
    }
    return false;
  };
}]);
