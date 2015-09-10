import DS from 'ember-data';

export default DS.RESTAdapter.extend({
  namespace: 'words',
  host: 'http://localhost:3000'
});