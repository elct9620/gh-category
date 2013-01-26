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
      deps: ['jquery', 'base64'],
      exports: "Gh3"
    }
  },

  paths: {
    hm: 'vendor/hm',
    esprima: 'vendor/esprima',
    jquery: 'vendor/jquery.min',

    github: "vendor/gh3",
    base64: "../components/github/lib/base64",
    backbone: "../components/backbone/backbone-min",
    underscore: "../components/underscore/underscore-min"
  }
});

require ['app'], (app)->


