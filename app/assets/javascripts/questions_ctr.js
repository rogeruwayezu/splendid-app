(function() {
  "use strict";

  angular.module("app").controller("questionsCtrl", function($scope, $http) {

    $scope.setup = function(scholarship_id) {
      $http.get("/api/v1/scholarships/" + scholarship_id +".json").then(function(response) {
        $scope.scholarship = response.data;
      });
    }    
 
  $scope.questions = [];

    $scope.addQuestion = function(questionTitle) {
      var question = {
        title: questionTitle,
        scholarship_id: $scope.scholarship.id
      };
      $http.post("/api/v1/questions.json", question).then(function(response) {
        $scope.questions.push(response.data);
      });
    
    }



    
    window.$scope = $scope;

  });
})();