# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./controllers/main
#= require_tree ./directives/main
#= require_tree ./filters/main
#= require_tree ./services/main

# Creates new Angular module called 'Blog'
Blog = angular.module('Blog',['ngRoute'])

# Sets up routing
Blog.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider
    .when('/post/new', { templateUrl: '../templates/mainCreatePost.html', controller: 'CreatePostCtrl' } )
    .when('/post/:postId', { templateUrl: '../templates/mainPost.html', controller: 'PostCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../templates/mainIndex.html', controller: 'IndexCtrl' } )

])

Blog.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
