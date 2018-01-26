/**
 * 
 */
var app = angular.module("myHome", ["ngRoute"]);

app.config(function($routeProvider){
		console.log('abcdefghijklmnopqrstuvwxyz');
		$routeProvider.when("/",{
			templateUrl : "static/features/home/home.html",
			controller : "home"
		})




});