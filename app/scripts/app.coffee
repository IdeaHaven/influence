'use strict'

angular.module('appApp', ['appApp.services', 'appApp.controllers', 'appApp.directives'])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/bills',
        templateUrl: 'views/billtext.html'
        controller: 'BillCtrl'
      .when '/individual',
        templateUrl: 'views/individual.html'
        controller: 'IndividualCtrl'
      .when '/district_map',
        templateUrl: 'views/district_map.html'
        controller: 'DistrictCtrl'
      .otherwise
        redirectTo: '/'
  ]
# depency inject should happen here
angular.module('appApp.controllers', ['appApp.services', 'appApp.directives', 'ui.bootstrap'])
angular.module('appApp.directives', [])
angular.module('appApp.services', [])

# set default headers to cors for api access
angular.module('appApp')
  .config ['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common['X-Requested-With']
  ]