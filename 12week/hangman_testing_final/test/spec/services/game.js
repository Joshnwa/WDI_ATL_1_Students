'use strict';

describe('Service: GameService', function() {

  beforeEach(module('hangmanApp'));

  var GameService;

  // Initialize the service
  beforeEach(inject(function(_GameService_) {
    GameService = _GameService_;
  }));

  it('should initialize properly', function() {
    expect(GameService).toBeDefined();
    expect(GameService).not.toBeNull();
  });

  it('should have an array of the 26 letters in the alphabet', function() {
    expect(GameService.letters).toBeDefined();
    expect(GameService.letters).not.toBeNull();
    expect(GameService.letters).toBeArrayOfObjects();
    expect(GameService.letters).toBeArrayOfSize(26);
    expect(GameService.letters[0]).toEqual ( { name: 'a', chosen: false } );
    expect(GameService.letters[1]).toEqual ( { name: 'b', chosen: false } );
    expect(GameService.letters[25]).toEqual( { name: 'z', chosen: false } );
  });

  it('should return a random word as an array', function() {
    var randomWord = GameService.getRandomWord();
    expect(randomWord).toBeDefined();
    expect(randomWord).not.toBeNull();
    expect(randomWord).toBeArrayOfObjects();
  });

  it('should detect a win when all letters are chosen', function() {
    var randomWord = GameService.getRandomWord();
    expect(GameService.isWin(randomWord)).toBeFalse();
    _.each(randomWord, function(letter) {
      letter.chosen = true;
    });
    expect(GameService.isWin(randomWord)).toBeTrue();
  });

  it('should detect a no win when any letters are not chosen', function() {
    var randomWord = GameService.getRandomWord();
    expect(GameService.isWin(randomWord)).toBeFalse();
    randomWord[0].chosen = true;
    expect(GameService.isWin(randomWord)).toBeFalse();
  });

});
