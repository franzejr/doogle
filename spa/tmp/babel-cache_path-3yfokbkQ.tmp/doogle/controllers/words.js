import Ember from 'ember';

var w = Ember.Word;

export default Ember.ObjectController.extend({
  anyVariable: 1,

  actions: {
    teste: function teste() {
      var todo = this.get('model');
      console.log(todo);
    }
  }
});