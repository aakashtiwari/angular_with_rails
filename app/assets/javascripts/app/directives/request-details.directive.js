angular.module('avocureDemo')
       .directive('requestDetails', function() {
        return {
          restrict: 'AE',
          replace: true,
          templateUrl: 'request-details.html'
        }
      });