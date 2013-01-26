define ['jquery', 'underscore', 'views/Search'], ($, _, SearchView) ->

  class Search
    @search = null

    constructor: ->
      @search = new SearchView

    doSearch: (name)->
      @search.doSearch(name)
