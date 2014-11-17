angular.module('leatherLaneMarketApp')
.service('stallService', function($http) {

  var stallsUrl = '/stalls';

  this.stalls = [];

  this.getAll = function() {
    return $http.get(stallsUrl + '.json');
  };

  this.add = function(stall) {
    return $http.post(stallsUrl + '.json', { stall : stall });
  };

  this.update = function(stall) {
    return $http.put(stallsUrl + '/' + stall.id + '.json', { stall: stall });
  };

  this.delete = function(stall) {
    return $http.delete(stallsUrl + '/' + stall.id + '.json');
  };

});
