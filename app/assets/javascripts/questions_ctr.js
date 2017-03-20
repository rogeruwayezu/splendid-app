(function() {
  "use strict";

  angular.module("app").controller("questionsCtrl", function($scope, $http) {

    $scope.setup = function(scholarship_id) {
      $http.get("/api/v1/scholarships/" + scholarship_id +".json").then(function(response) {
        $scope.scholarship = response.data;
        for (var i = 0; i < $scope.scholarship.questions.length; i++){
          $scope.scholarship.questions[i].titleUpdate = $scope.scholarship.questions[i].title
        }
      });
    }    
 
  $scope.questions = [];

  $scope.addQuestion = function(questionTitle) {
    var question = {
      title: questionTitle,
      scholarship_id: $scope.scholarship.id
    };
    $http.post("/api/v1/questions.json", question).then(function(response) {
      var questionResponse = response.data;
      questionResponse.titleUpdate = questionTitle;
      $scope.scholarship.questions.push(questionResponse);
    });
  
  }

  $scope.deleteQuestion = function(question, index) {
   
    $http.delete("/api/v1/questions/" + question.id + ".json").then(function(response){
      $scope.scholarship.questions.splice(index, 1);
      });
  }
  $scope.updateQuestion = function(question, index){
    var editquestion = {
      title: question.titleUpdate
    };
    $http.patch("/api/v1/questions/" + question.id + ".json", editquestion).then(function(response){
      var questionResponse = response.data;
      questionResponse.titleUpdate = question.titleUpdate;
      $scope.scholarship.questions[index] = questionResponse;

    });
  }

    
    window.$scope = $scope;

  });
})();