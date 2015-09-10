import Ember from 'ember';

export default Ember.Route.extend({

  controllerName: 'words',

  model: function model() {
    return $.getJSON('http://localhost:3000/words/computer');
  },

  setupController: function setupController(controller, model) {
    controller.set('model', model);
  }

});