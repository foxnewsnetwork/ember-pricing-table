# Ember-pricing-table

>Note: bootstrap and foundation not implemented

Every Ember App that makes money should have a pricing table somewhere, this addon provides a pricing table that plays well with the materialize and bootstrap and foundation frameworks. 

Check out the demo here:

https://foxnewsnetwork.github.io/ember-pricing-table

## Usage
As a stand-alone component
```handlebars
{{#em-pricing-table flavor="materialize" plans=model.plans chosenPlan=model.chosenPlan as |xx|}}
  {{#em-pricing-card table=xx.table plan=xx.plan as |yields|}}
    {{#yields.title}}{{xx.plan.planName}}{{/yields.title}}
    {{#yields.description}}{{xx.plan.description}}{{/yields.description}}
    {{#yields.price}}{{xx.plan.price}} / month{{/yields.price}}
    {{#yields.bullet append=true}}{{xx.plan.availability}} hours / day{{/yields.bullet}}
    {{#yields.bullet append=true}}{{xx.plan.availability}} gbs{{/yields.bullet}}
    {{#yields.cta}}Select{{/yields.cta}}
  {{/em-pricing-card}}
{{/em-pricing-table}}
```

## Dependencies
```
ember-named-yields
ember-truth-helpers
```
## Installation

* `git clone` this repository
* `npm install`
* `bower install`

## Running

* `ember server`
* Visit your app at http://localhost:4200.

## Running Tests

* `ember test`
* `ember test --server`

## Building

* `ember build`

For more information on using ember-cli, visit [http://www.ember-cli.com/](http://www.ember-cli.com/).
