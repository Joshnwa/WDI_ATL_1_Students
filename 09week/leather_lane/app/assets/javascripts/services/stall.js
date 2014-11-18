angular.module('leatherLaneMarketApp')
.service('stallService', function($http) {

  var that = this;
  var stallsUrl = '/stalls';

  that.stalls = [];

  this.getAll = function() {
    return $http.get(stallsUrl + '.json').success(function(data) {
      that.stalls = data;
    });
  };

  this.add = function(stall) {
    return $http.post(stallsUrl + '.json', { stall : stall }).success(function(data) {
      that.stalls.push(data);
    });
  };

  this.update = function(stall) {
    return $http.put(stallsUrl + '/' + stall.id + '.json', { stall: stall });
  };

  this.delete = function(stall) {
    return $http.delete(stallsUrl + '/' + stall.id + '.json').success(function(data) {
      // getAll();
      that.stalls.splice(that.stalls.indexOf(stall), 1);
    });
  };

});
