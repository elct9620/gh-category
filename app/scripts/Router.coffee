define ['jquery', 'backbone', 'require',
        'controllers/Search', 'controllers/ListCategories', 'controllers/ListRepositories'], ($, Backbone, require) ->

  Router = Backbone.Router.extend {
    routes: {
      "": "index",
      "search": "search",
      "search/:keyword": "search",
      "categories": "categories",
      "category/:name": "category",
      "repository/:user@:repo": "repository"
    }

    index: ()->

    search: ()->

    categories: ()->

    category: ()->

    repository: ()->
  }
