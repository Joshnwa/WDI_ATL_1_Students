'use strict';

describe('Service: WordService', function() {

  beforeEach(module('hangmanApp'));

  var WordService, httpBackend;
  var words = ['apple', 'orange', 'banana'];

  // Initialize the service
  beforeEach(inject(function(_WordService_, _$httpBackend_) {
    WordService = _WordService_;
    httpBackend = _$httpBackend_;

    // configure httpBackend to return an array of words
    httpBackend.whenGET('/words').respond(function() {
      return [200, words, null];
    });
  }));

  afterEach(function() {
    httpBackend.verifyNoOutstandingExpectation();
    httpBackend.verifyNoOutstandingRequest();
  });

  it('should initialize properly', function() {
    expect(WordService).toBeDefined();
    expect(WordService).not.toBeNull();
  });

  it('should get an array of capitalized words via HTTP GET', function() {
    WordService.getWords().then(function(words) {
      expect(words).toBeDefined();
      expect(words).not.toBeNull();
      expect(words).toBeArrayOfSize(3);
      expect(words).toEqual( [ 'Apple', 'Orange', 'Banana' ]);
    });
    httpBackend.flush();
  });

});
