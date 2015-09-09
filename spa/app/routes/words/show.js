import Ember from 'ember';

export default Ember.Route.extend({

	controllerName: 'word',

  model: function(params) {
    return this.store.find('word', "computer");
  },

  setupController: function(controller, model){
    controller.set('model', model);
  }
});
