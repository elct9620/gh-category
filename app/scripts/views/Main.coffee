define ['jquery', 'underscore', 'backbone', 'text!templates/Main.html'], ($, _, Backbone, mainTemplate) ->

  View = Backbone.View.extend {
    el: '#mainFrame',
    template: _.template(mainTemplate, {})

    initialize: () ->
      this.$el.html(this.template)
  }
