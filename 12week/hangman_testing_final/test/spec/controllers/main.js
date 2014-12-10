'use strict';

describe('Controller: MainCtrl', function() {

  // it('can do a simple expect matcher', function() {
  //   expect(true).toBe(true);
  // });

  var makeLetters = function(word) {
    return _.map(word.split(''), function(letter) {
      return { name: letter, chosen: false };
    });
  };

  // load the controller's module
  beforeEach(module('hangmanApp'));

  var MainCtrl;
  var scope;

  beforeEach(inject(function($controller, $rootScope) {
    scope = $rootScope.$new();
    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
    scope.reset();
  }));

  it('should add a missesAllowed value of 6 to the scope', function() {
    expect(scope.missesAllowed).toBe(6);
  });

  it('should add a numMisses value of 0 to the scope', function() {
    expect(scope.numMisses).toBe(0);
  });

  it('should add a won value of false to the scope', function() {
    expect(scope.won).toBeFalse();
  });

  it('should add a lost value of false to the scope', function() {
    expect(scope.lost).toBeFalse();
  });

  it('should add a secretWord to the scope', function() {
    expect(scope.secretWord).toBeDefined();
    expect(scope.secretWord).not.toBeNull();
    expect(scope.secretWord).toBeArrayOfObjects();
    _.each(scope.secretWord, function(letter) {
      expect(letter.name).toBeDefined();
      expect(letter.name).not.toBeNull();
      expect(letter.chosen).toBeDefined();
      expect(letter.chosen).not.toBeNull();
      expect(letter.chosen).toBeFalse();
    });
  });

  it('should add a try method to the scope and detect a win', function() {
    scope.secretWord = makeLetters('banana');
    expect(scope.won).toBeFalse();
    expect(scope.lost).toBeFalse();

    scope.try(scope.letters[0]);  // guess 'a'
    scope.try(scope.letters[1]);  // guess 'b'
    scope.try(scope.letters[13]); // guess 'n'

    expect(scope.won).toBeTrue();
    expect(scope.lost).toBeFalse();
  });

  it('should add a try method to the scope and detect a loss', function() {
    scope.secretWord = makeLetters('banana');
    expect(scope.won).toBeFalse();
    expect(scope.lost).toBeFalse();

    var index = 0;
    while(scope.lost === false) {
      scope.try(scope.letters[index]);
      index += 1;
    }

    expect(scope.won).toBeFalse();
    expect(scope.lost).toBeTrue();
    expect(scope.numMisses).toBe(6);
    expect(index).toBe(8);
  });

});
