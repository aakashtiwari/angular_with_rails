angular.module('avocureDemo')
 .controller('RequestsCtrl', function ($scope, PatientService) {
    $scope.currentNavItem = 'requests';
    $scope.accordion = 1;
    $scope.starred = undefined;
    $scope.active_patient = {};
    $scope.form = {};
    PatientService.getPatients().$promise.then(function(response){
      $scope.patients = response;
      $scope.active_patient = response[0];
    });

    $scope.openDetail = function( _id ){
      $scope.active_patient = this.patients.find(function(patient){
        return patient.id == _id;
      });
    }

    $scope.setFavourite = function( _id ){
      let patient = this.patients.find(function(patient){
        return patient.id == _id;
      });
      patient.starred = !patient.starred;
      PatientService.setFavourite( _id );
    }

    $scope.showStarred = function( _boolean_ ){
      this.starred = _boolean_;
      if( _boolean_ != undefined ) {
        $scope.active_patient = this.patients.find(function(patient){
          return patient.starred == _boolean_;
        }); 
      };
    }

    $scope.submitQuote = function( _id ){
      PatientService.sendQuote(_id, this.form).then(function(response){
        $scope.active_patient.quote = response.quote;
        $scope.form = {};
      });
    }
  });