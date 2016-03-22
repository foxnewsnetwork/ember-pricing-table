`import Ember from 'ember'`
`import layout from '../templates/components/em-pricing-card'`

{computed, Component} = Ember
{alias, oneWay} = computed

equal = (key1, key2) -> 
  computed key1, key2, ->
    @get(key1)? and @get(key1) is @get(key2)

materializeClasses = ["col", "l3", "m6", "s12"]
bootstrapClasses = ["col-lg-3", "col-md-6", "col-sm-12", "col-xs-12"]
foundationClasses = ["columns", "large-3", "medium-6", "small-12"]
mdlClasses = ["mdl-cell", "mdl-cell--3-col", "mdl-cell--6-col-tablet", "mdl-cell--12-col-phone"]
Co = Component.extend
  layout: layout
  flavor: alias "table.flavor"
  fontFlavor: alias "table.fontFlavor"
  classNames: ["em-pricing-card"]
  classNameBindings: ["frameworkContainerClass"]
  frameworkContainerClass: oneWay "defaultFrameworkContainerClass"
  defaultFrameworkContainerClass: computed "flavor", ->
    switch @get "flavor"
      when "materialize" then materializeClasses.join(" ")
      when "bootstrap" then bootstrapClasses.join(" ")
      when "foundation" then foundationClasses.join(" ")
      when "mdl" then mdlClasses.join(" ")
      else ""

  isSelected: equal "plan", "table.chosenPlan"

  actions:
    select: ->
      @get("table")?.send "select", @get "plan"



`export default Co`
