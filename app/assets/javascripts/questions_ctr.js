(function() {
  "use strict";

  angular.module("app").controller("questionsCtrl", function($scope, $http) {

    $scope.setup = function(scholarship_id) {
      $scope.scholarship_id = scholarship_id;
    }  

    $scope.questions = [];  

    $scope.addQuestion = function(questionTitle) {
      var question = {
        title: questionTitle,
        scholarship_id: $scope.scholarship_id
      };
      $http.post("/api/v1/questions.json", question).then(function(response) {
        $scope.questions.push(response.data);
      });
    }



    
    window.$scope = $scope;

  });
})();