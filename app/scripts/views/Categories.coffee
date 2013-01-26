define ['jquery', 'underscore', 'backbone', 'text!templates/Categories.html'], ($, _, Backbone, categoriesTemplate) ->

  CategoriesView = Backbone.View.extend {
    el: '#panel'

    initialize: ->

      fakeData = [
        { name: "PHP" },
        { name: "JavaScript" },
        { name: "Ruby" },
        { name: "jQuery" },
        { name: "Game" }
      ]

      codes = ""

      _.each fakeData, (data) ->
        codes += "<li><a href=\"#/category/#{data.name}\">#{data.name}</a></li>"

      template = _.template(categoriesTemplate, {codes: codes})

      this.$el.html(template)

  }
