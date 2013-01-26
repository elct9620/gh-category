define ['jquery', 'backbone', 'require',
        'controllers/Search', 'controllers/ListCategories', 'controllers/ListRepositories', 'views/Categories'], ($, Backbone, require) ->

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
      Cat = require('views/Categories')
      new Cat

    search: ()->
      Search = require('controllers/Search')
      search = new Search

    categories: ()->

    category: (name)->

      if name
        Search = require('controllers/Search')
        search = new Search
        search.doSearch(name)



    repository: ()->
  }
