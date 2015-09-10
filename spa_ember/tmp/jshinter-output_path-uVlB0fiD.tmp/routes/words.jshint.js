QUnit.module('JSHint - routes');
QUnit.test('routes/words.js should pass jshint', function(assert) { 
  assert.ok(false, 'routes/words.js should pass jshint.\nroutes/words.js: line 1, col 1, \'import\' is only available in ES6 (use esnext option).\nroutes/words.js: line 3, col 1, \'export\' is only available in ES6 (use esnext option).\n\n2 errors'); 
});
