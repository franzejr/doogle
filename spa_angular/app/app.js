angular.module('doogle', ['ngRoute'])

.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'views/word.html',
        controller: 'DictionaryController'
      }).
      otherwise({
        redirectTo: '/'
      });
  }])
.controller('DictionaryController',['$scope', '$http', function($scope, $http){
	$scope.definitions = [];
	$scope.search = "";
	$scope.state = false;
	$scope.inprogress = false;

	$scope.doSearch = function(){
			var search = $scope.search;
			$scope.definitions = [];

			if(search){
				$scope.inprogress = true;
				$scope.state = true;
					$http.get("http://localhost:3000/words/" + $scope.search).then(function(response){
						$scope.inprogress = false;
						$scope.definitions = response.data.definitions;
					});	
			}
	}
}]);