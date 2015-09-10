/* jshint ignore:start */

define('doogle/config/environment', ['ember'], function(Ember) {
  var prefix = 'doogle';
/* jshint ignore:start */

try {
  var metaName = prefix + '/config/environment';
  var rawConfig = Ember['default'].$('meta[name="' + metaName + '"]').attr('content');
  var config = JSON.parse(unescape(rawConfig));

  return { 'default': config };
}
catch(err) {
  throw new Error('Could not read config from meta tag with name "' + metaName + '".');
}

/* jshint ignore:end */

});

if (runningTests) {
  require("doogle/tests/test-helper");
} else {
  require("doogle/app")["default"].create({"name":"doogle","version":"0.0.0+f8524e5d"});
}

/* jshint ignore:end */
