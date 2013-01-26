require.config({
  shim: {
    jquery: {
      exports: "$"
    },
    backbone: {
      deps: ['jquery', 'underscore'],
      exports: "Backbone"
    },
    underscore: {
      deps: ['jquery'],
      exports: "_"
    },
    github: {
      deps: ['jquery'],
      exports: "Gh3"
    },
    localStorage: {
      deps: ['backbone'],
      exports: "localStorage"
    }
  },

  paths: {
    hm: 'vendor/hm',
    esprima: 'vendor/esprima',
    jquery: 'vendor/jquery.min',

    text: "../components/requirejs-text/text",

    github: "vendor/gh3",
    backbone: "../components/backbone/backbone-min",
    underscore: "../components/underscore/underscore-min"
    localStorage: "../components/backbone.localStorage/backbone.localStorage-min"
  }
});

require ['jquery', 'app'], ($, App)->

  $(document).ready ->
    app = new App


