QUnit.module('JSHint - controllers');
QUnit.test('controllers/words.js should pass jshint', function(assert) { 
  assert.ok(false, 'controllers/words.js should pass jshint.\ncontrollers/words.js: line 1, col 1, \'import\' is only available in ES6 (use esnext option).\ncontrollers/words.js: line 3, col 20, Missing semicolon.\ncontrollers/words.js: line 5, col 1, \'export\' is only available in ES6 (use esnext option).\ncontrollers/words.js: line 11, col 27, Missing semicolon.\n\n4 errors'); 
});
