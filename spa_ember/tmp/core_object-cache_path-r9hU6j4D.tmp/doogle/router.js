define('doogle/router', ['exports', 'ember', 'doogle/config/environment'], function (exports, Ember, config) {

  'use strict';

  var Router = Ember['default'].Router.extend({
    location: config['default'].locationType
  });

  Router.map(function () {
    this.route('words');
  });

  exports['default'] = Router;

});