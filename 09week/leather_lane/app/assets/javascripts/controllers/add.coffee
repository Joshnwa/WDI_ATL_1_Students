angular.module("leatherLaneMarketApp").controller "AddController", [
  "$scope"
  "$location"
  "stallService"
  ($scope, $location, stallService) ->
    console.log "AddController is alive!"
    $scope.stalls = stallService.stalls
    reset = ->
      $scope.newStall = null
      $scope.stallForm.$setPristine()
      $location.path "/market"
      return

    $scope.addStall = ->
      stallService.add($scope.newStall).success((data) ->
        reset()
        return
      ).error ->
        alert "Something went wrong!"
        return

      return

    $scope.cancel = ->
      reset()
      return
]
