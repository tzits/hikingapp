# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
app = angular.module('hyker', [ 'ngRoute' ])
app.config ($routeProvider) ->
  $routeProvider.when('/checklists',
    templateUrl: 'partials/index.html'
    controller: 'ChecklistIndexController'
    controllerAs: 'indexCtrl').when '/checklists/:id',
    templateUrl: 'partials/show.html'
    controller: 'ChecklistShowController'
    controllerAs: 'showCtrl'
  return
