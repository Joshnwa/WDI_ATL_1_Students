import Ember from 'ember';

var Router = Ember.Router.extend({
  location: EmberdemoENV.locationType
});

Router.map(function() {
  this.route('foo');
});

export default Router;
