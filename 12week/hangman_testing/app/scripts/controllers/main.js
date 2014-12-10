'use strict';

angular.module('hangmanApp')
  .controller('MainCtrl', function ($scope, GameService) {

  $scope.missesAllowed = 6;

  var revealSecret = function() {
    _.each($scope.secretWord, function(letter) {
      letter.chosen = true;
    });
  };

  var checkForEndOfGame = function() {
    $scope.won = GameService.isWin($scope.secretWord);

    if ($scope.won === false &&
      $scope.numMisses === $scope.missesAllowed) {
      $scope.lost = true;
      revealSecret();
    }
  };

  $scope.letters = GameService.letters;

  $scope.reset = function() {
    _.each($scope.letters, function(letter) {
      letter.chosen = false;
    });

    $scope.secretWord = GameService.getRandomWord();
    $scope.numMisses = 0;
    $scope.won = false;
    $scope.lost = false;
  };

  $scope.reset();

  $scope.try = function(guess) {
    guess.chosen = true;
    var found = false;
    _.each($scope.secretWord, function(letter) {
      if (guess.name.toUpperCase() ===
          letter.name.toUpperCase() ) {
        letter.chosen = true;
        found = true;
      }
    });

    if (found === false) {
      $scope.numMisses++;
    }

    checkForEndOfGame();
  };
});
