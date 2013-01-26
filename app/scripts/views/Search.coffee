define ['jquery', 'underscore', 'backbone', 'github', 'text!templates/Search.html'], ($, _, Backbone, Github, searchTemplate) ->

  Search = Backbone.View.extend {
    el: '#panel',
    template: _.template( searchTemplate )

    initialize: ->
      console.log "Hey"
      this.$el.html(this.template)

    events: {
      "click #search": "doSearch"
    }

    doSearch: ->
      console.log $("#keyword").val()

  }
