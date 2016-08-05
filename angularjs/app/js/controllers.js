var phonecatControllers = angular.module('phonecatControllers', []);

// phonecatControllers.controller('PhoneListCtrl', ['$scope', '$http',
//   function ($scope, $http) {
//     $http.get('phones/phones.json').success(function(data) {
//       console.log(data);
//       $scope.phones = data;
//
//     });
//
//     $scope.orderProp = 'age';
//   }]);
phonecatControllers.controller('PhoneListCtrl', ['$scope', '$http',
  function ($scope, $http) {
    $http.get('http://localhost/angular_web/phone.php').success(function(data) {
      console.log(data);
      $scope.phones = data;

    });

    $scope.orderProp = 'age';
  }]);
// phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
//   function($scope, $routeParams, $http) {
//     $http.get('phones/' + $routeParams.phoneId + '.json').success(function(data) {
//       $scope.phone = data;
//
//     });
//   }]);
phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    $http.get('http://localhost/angular_web/phone_details.php?id=' + $routeParams.phoneId).success(function(data) {
      $scope.phone = data;

    });
  }]);
// phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
//   function($scope, $routeParams, $http) {
//     $http.get('phones/' + $routeParams.phoneId + '.json').success(function(data) {
//       $scope.phone = data;
//       $scope.mainImageUrl = data.images[0];
//     });
//
//     $scope.setImage = function(imageUrl) {
//       $scope.mainImageUrl = imageUrl;
//     }
//   }]);
phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    $http.get('http://localhost/angular_web/phone_details.php?id=' + $routeParams.phoneId).success(function(data) {
      $scope.phone = data;
      $scope.mainImageUrl = data.images[0];
    });

    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    }
  }]);
