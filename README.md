# Ember-pricing-table

>Note: bootstrap and foundation not implemented

Every Ember App that makes money should have a pricing table somewhere, this addon provides a pricing table that plays well with the materialize and bootstrap and foundation frameworks. 

Check out the demo here:

https://foxnewsnetwork.github.io/ember-pricing-table

## Usage
As a stand-alone component
```handlebars
{{#em-pricing-table plans=myPlans flavor="materialize" iconFlavor="fontawesome" action="selectPlan" as |plan|}}
  {{#em-pricing-card plan=plan}}
    <li class="title">{{plan.planName}}</li>
    <li class="price">{{plan.price}}</li>
    <li class="description">{{plan.description}}</li>
    <li class="bullet-item">{{plan.availability}} / day</li>
    <li class="bullet-item">{{plan.storage}} gbs</li>
  {{/em-pricing-card}}
{{/em-pricing-table}}
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
