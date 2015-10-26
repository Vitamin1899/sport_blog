@IndexCtrl = ($scope, $location, $http, postData) ->
#angular.module('myapp', []).controller 'IndexCtrl', ($scope) ->
  $scope.data = postData.data

  postData.loadPosts()

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)

  $scope.navNewPost = ->
    $location.url('/post/new')

@IndexCtrl.$inject = ['$scope', '$location', '$http', 'postData']
