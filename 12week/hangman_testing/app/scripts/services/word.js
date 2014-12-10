'use strict';

angular.module('hangmanApp')
.service('WordService', function($http) {

  this.getWords = function() {
    return $http
    .get('/words')
    .then(function(words) {
      return _.map(words.data, function(word) {
        return word.charAt(0).toUpperCase() + word.slice(1);
      });
    });
  };

});
