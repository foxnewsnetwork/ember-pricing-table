`import Ember from 'ember'`

alias = Ember.computed.alias

Co = Ember.Component.extend
  flavor: "materialize"
  fontFlavor: "fontawesome"
  value: alias "chosenPlan"
  chosenPlan: null
  classNames: ["ember-pricing-table"]
  classNameBindings: ["cardContainerClass"]
  cardContainerClass: Ember.computed "flavor", ->
    switch @get "flavor"
      when "materialize", "bootstrap" then "row"
      else ""
  actions:
    select: (plan) ->
      @set "chosenPlan", plan
      @sendAction "action", plan

`export default Co`
