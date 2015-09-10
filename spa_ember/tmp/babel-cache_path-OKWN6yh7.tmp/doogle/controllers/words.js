import Ember from 'ember';

var w = Ember.Word;

export default Ember.ObjectController.extend({
  // the initial value of the `search` property
  search: '',
  results: '',

  actions: {
    query: function query() {
      var controller = this;
      controller.set('results', '');
      var query = this.get('search');

      if (query != "") {
        $.getJSON('http://localhost:3000/words/' + query, function (response) {
          controller.set('results', response);
        });
      }
    }
  }

});