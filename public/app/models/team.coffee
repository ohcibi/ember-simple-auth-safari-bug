`import DS from 'ember-data'`

attr = DS.attr

Team = DS.Model.extend
  name: DS.attr "string"

`export default Team`
