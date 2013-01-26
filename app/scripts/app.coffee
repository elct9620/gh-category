define ['backbone', 'router', 'views/Main'], (Backbone, Router, MainView)->

  class App

    @router = null
    @mainView = null

    constructor: (options) ->
      @router = new Router

      @mainView = new MainView

      #Backbone.history.start({pushState: true, root: '/'})
      Backbone.history.start()
