angular.module('avocureDemo').factory('PatientResource', function($resource) {
  return $resource('/api/patient/:id', { id: '@_id' }, {
    update: {
      method: 'PUT'
    },
    setFavourite: {
      method: 'GET',
      url: "/api/patient/set_favourite"
    },
    sendQuote: {
      method: 'POST',
      url: "/api/patient/create_patient_quote"
    }
  });
});