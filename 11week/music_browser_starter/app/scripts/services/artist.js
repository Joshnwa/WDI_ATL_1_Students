'use strict';

angular.module('uiRouterApp')
.service('ArtistService', function($http) {

  var that = this;

  that.artists = [];
  that.promise = undefined;

  that.getArtists = function() {
    if (!that.promise) {
      return $http.get('data/artists.json').success(function(data){
        that.artists = data;
        console.log('that.artists: ' + JSON.stringify(that.artists));

      });
    }
    return that.promise;
  };

});
