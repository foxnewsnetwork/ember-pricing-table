module.exports = {
  description: 'Installs required addons',

  // locals: function(options) {
  //   // Return custom template variables here.
  //   return {
  //     foo: options.entity.options.foo
  //   };
  // }

  afterInstall: function(options) {
    return this.addAddonToProject("ember-truth-helpers", "~1.0.0");
  }
};
