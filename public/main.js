"use strict";

angular.module("myApp", [])
    .controller('DefaultCtrl', function($scope, $http) {

        $scope.known_words = new Array();
        $scope.words = new Array();

        $scope.init = function() {
            $http.get("/v1/words").success(function(data) {
                $scope.words = data;
            });
        }

        $scope.iknowit = function(word) {
            $scope.known_words.push(word);
        }

        $scope.save = function() {
            
        }


    });