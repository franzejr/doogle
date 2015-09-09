define('doogle/tests/models/word.jshint', function () {

  'use strict';

  QUnit.module('JSHint - models');
  QUnit.test('models/word.js should pass jshint', function(assert) { 
    assert.ok(false, 'models/word.js should pass jshint.\nmodels/word.js: line 1, col 1, \'import\' is only available in ES6 (use esnext option).\nmodels/word.js: line 7, col 1, \'export\' is only available in ES6 (use esnext option).\n\n2 errors'); 
  });

});