`import Ember from 'ember'`

BasicPlan =
  planName: "basic"
  price: 5
  description: "basic plan for basic users doing basic things that will produce basic results"
  availability: 6
  storage: 10
StandardPlan =
  planName: "standard"
  price: 10
  description: "average plan for medicore companies"
  availability: 10
  storage: 20
SuperPlan =
  planName: "super"
  price: 20
  description: "super plan with all features enabled for enterprise customers"
  availability: 22
  storage: Infinity
PriceyPlan =
  planName: "enterprise"
  price: 40
  description: "enterprise plan for the heavy industry users to squeeze out the most of this system"
  availability: 24
  storage: Infinity

AppRoute = Ember.Route.extend
  model: ->
    plans: Ember.A [BasicPlan, StandardPlan, SuperPlan, PriceyPlan]
    chosenPlan: StandardPlan

`export default AppRoute`