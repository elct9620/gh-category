define ['backbone', 'router', 'views/Main', 'views/Categories'], (Backbone, Router, MainView, CategoriesView)->

  class App

    @router = null
    @mainView = null

    constructor: (options) ->
      @router = new Router

      @mainView = new MainView
      new CategoriesView

      #Backbone.history.start({pushState: true, root: '/'})
      Backbone.history.start()
