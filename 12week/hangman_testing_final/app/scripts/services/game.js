'use strict';

var words = [
  'Rails', 'AngularJS', 'Bootstrap', 'Ruby', 'JavaScript',
  'authentication', 'function', 'array', 'object', 'sublime',
  'github', 'agile', 'route', 'database', 'model', 'view',
   'controller', 'terminal', 'array', 'data', 'inheritance',
  'Heroku', 'scope',  'closure'
];

angular.module('hangmanApp')
.service('GameService', function() {

  this.getRandomWord = function() {
    return this.makeLetters(words[Math.floor(Math.random() * words.length)]);
  };

  this.isWin = function(secretWord) {
    return _.reduce(secretWord, function(memo, letter) {
      return memo && letter.chosen;
    }, true);
  };

  this.makeLetters = function(word) {
    return _.map(word.split(''), function(letter) {
      return { name: letter, chosen: false };
    });
  };

  this.letters = this.makeLetters('abcdefghijklmnopqrstuvwxyz');

});
