define ['jquery', 'underscore', 'backbone', 'github', 'text!templates/Search.html'], ($, _, Backbone, Github, searchTemplate) ->

  Search = Backbone.View.extend {
    el: '#panel',
    template: _.template( searchTemplate )

    initialize: ->
      this.$el.html(this.template)

    events: {
      "click #search": "doSearch"
    }

    doSearch: (name)->

      self = @

      this.$el.html("Loading...")

      unless name
        keyword =  $("#keyword").val()
      else
        keyword = name

      repos = Github.Repositories.search keyword, {start_page: 1}, (err, res) ->
        if err
          self.$el.html("Search Error!")
          alert("Search Error!")


        list = document.createElement('div')
        $(list).addClass("table-striped table")
        Github.Repositories.each (repo)->

          if repo.name != "undefined" and repo.description != "undefined"
            $(list).append("<div><a href=\"#/repository/#{repo.name}\">#{repo.name}</a> - <p>#{repo.description}</p></div>")

        self.$el.html(list)

  }
