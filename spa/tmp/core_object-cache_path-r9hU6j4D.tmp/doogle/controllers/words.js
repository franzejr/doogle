define('doogle/controllers/words', ['exports', 'ember'], function (exports, Ember) {

  'use strict';

  var w = Ember['default'].Word;

  exports['default'] = Ember['default'].ObjectController.extend({
    anyVariable: 1,

    actions: {
      teste: function teste() {
        var todo = this.get('model');
        console.log(todo);
      }
    }
  });

});