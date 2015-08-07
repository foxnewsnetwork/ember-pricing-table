`import Ember from 'ember'`

alias = Ember.computed.alias
equal = (key1, key2) -> 
  Ember.computed key1, key2, ->
    @get(key1)? and @get(key1) is @get(key2)

materializeClasses = ["col", "s12", "m6", "l3"]
bootstrapClasses = ["col-lg-3", "col-md-6", "col-sm-12", "col-xs-12"]
foundationClasses = ["columns", "large-3", "medium-6", "small-12"]
Co = Ember.Component.extend
  flavor: alias "parentView.flavor"
  fontFlavor: alias "parentView.fontFlavor"
  classNameBindings: ["frameworkContainerClass"]
  frameworkContainerClass: Ember.computed "flavor", ->
    switch @get "flavor"
      when "materialize" then materializeClasses.join(" ")
      when "bootstrap" then bootstrapClasses.join(" ")
      when "foundationClasses" then foundationClasses.join(" ")
      else ""

  isSelected: equal "plan", "parentView.chosenPlan"
  cardContentClassNames: ""
  cardClassNames: Ember.computed "isSelected", ->
    if @get "isSelected" then "z-depth-2 amber lighten-5"
  btnClassNames: Ember.computed "flavor", "isSelected", ->
    color = if @get("isSelected") then "red" else "grey"
    frame = switch @get "flavor"
      when "materialize"
        "waves-light btn-large waves-effect waves-light red"
      else ""
    "#{frame} #{color}"
  btnText: "whatever"

  actions:
    select: ->
      @get("parentView")?.send "select", @get "plan"



`export default Co`