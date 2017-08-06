angular.module('avocureDemo').service('PatientService', function(PatientResource, $resource) {
  this.getPatients = function() {
    return PatientResource.query();
  };
  this.setFavourite = function( _id ) {
    PatientResource.setFavourite( {id: _id} );
  };

  this.sendQuote = function( _id, _form ) {
    return PatientResource.sendQuote({id: _id, quote: _form}).$promise;
  }
});