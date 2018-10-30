var server_url = "http://27.72.105.49:8582";
String.prototype.absoluteUrl = String.prototype.absolute || function (defaultValue) {
    var imgUrlLowerCase = this.toLowerCase();
    if (this == "" || this == undefined)
        if (defaultValue != undefined)
            return defaultValue;
        else
            return this;
    if (this.startsWith("http") || this.startsWith("blob") || this.startsWith("https")) {
        return this;
    }
    if (imgUrlLowerCase.endsWith(".jpg") || imgUrlLowerCase.endsWith(".png") || imgUrlLowerCase.endsWith(".gif") || imgUrlLowerCase.endsWith(".swf")) {
        return server_url + this;
    }
    if (!imgUrlLowerCase.endsWith(".jpg") || !imgUrlLowerCase.endsWith(".png") || !imgUrlLowerCase.endsWith(".gif")) {
        return defaultValue;
    }
    return server_url + this;
}
function guid() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }

    return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
        s4() + '-' + s4() + s4() + s4();
}
function genId() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }

    return s4() + s4() + s4() + s4() + s4() + s4() + s4() + s4();
}
angular.module('ng.select', []).value('uiSelect2Config', {})
    .directive('ngSelect', ['uiSelect2Config', '$timeout', function (uiSelect2Config, $timeout) {
        var options = {};
        if (uiSelect2Config) {
            angular.extend(options, uiSelect2Config);
        }
        return {
            require: 'ngModel',
            priority: 1,
            link: function (scope, elm, attrs, ngModel) {
                elm.select2();
                scope.$watch(attrs.ngData, function (current, old) {
                    console.log(elm.attr("data-value"));
                    setTimeout(function () {
                        elm.val(elm.attr("data-value")).trigger("change");
                    }, 1000);
                });
                scope.$watch(attrs.ngModel, function (current, old) {
                    if (current) {
                        elm.attr("data-value", current);
                        setTimeout(function () {
                            elm.trigger("change");
                            if (attrs.ngChange) {
                                //
                                // var fun = scope.$eval(attrs.ngChange);
                                // if (fun)
                                //     fun();
                            }
                        }, 1000);
                    }
                    else {
                        setTimeout(function () {
                            if (!current)
                                elm.val("");
                            elm.trigger("change");
                        }, 1000);
                    }
                    // if (current === "" || current) {
                    //     if (attrs.ngData) {
                    //         var data = scope.$eval(attrs.ngData);
                    //         if (data && data.length > 0) {
                    //             setTimeout(function () {
                    //                 elm.trigger("change");
                    //             });
                    //         } else {
                    //             setTimeout(function () {
                    //                 elm.trigger("change");
                    //             }, 3000);
                    //         }
                    //     } else
                    //         setTimeout(function () {
                    //             elm.trigger("change");
                    //         });
                    // }
                }, true);
                elm.bind("$destroy", function () {
                    elm.select2("destroy");
                });

                attrs.$observe('disabled', function (value) {
                    elm.select2('enable', !value);
                });

                attrs.$observe('readonly', function (value) {
                    elm.select2('readonly', !!value);
                });
            }
        };
    }]);
var ngApp = angular.module('manageAdminApp', ['ngSanitize','ui.select2','ngValidate','ng.select','jkAngularRatingStars'])
    .factory("fileManager", ['$http', function ($http) {
        return {
            upload: function (fileData, callBack, error) {
                var oMyForm = new FormData();
                oMyForm.append("file", fileData);
                $.ajax({
                    dataType: 'json',
                    enctype: 'multipart/form-data',
                    type: 'POST',
                    url: "/service/fileManager/Upload",
                    data: oMyForm,
                    processData: false,  // tell jQuery not to process the data
                    contentType: false,  // tell jQuery not to set contentType
                    success: function (data) {
                        callBack(data);
                    },
                    error: function (data) {
                        error(data);
                    }
                });
            },
            uploadFiles: function (fileData,fileName, callBack, error) {
                var oMyForm = new FormData();
                oMyForm.append("file", fileData);
                oMyForm.append("name", fileName);
                $.ajax({
                    dataType: 'json',
                    enctype: 'multipart/form-data',
                    type: 'POST',
                    url: "/service/fileManager/uploadFiles",
                    data: oMyForm,
                    processData: false,  // tell jQuery not to process the data
                    contentType: false,  // tell jQuery not to set contentType
                    success: function (data) {
                        callBack(data);
                    },
                    error: function (data) {
                        error(data);
                    }
                });
            }
        }
    }]).factory("httpRequest", ['$http', function ($http) {
        return {
            $http: $http,
            post: function (url, data, success, failed, showLoading) {
                if (showLoading)
                    $("body").addClass("loading");
                $http({
                    method: 'post',
                    url: url,
                    data: data
                }).then(function successCallback(response) {
                        if (showLoading)
                            $("body").removeClass("loading");
                        if (success)
                            success(response.data);
                    },
                    function errorCallback(response) {
                        if (response && response.status == 401) {
                            location.href = "/dang-nhap";
                            return;
                        }
                        if (showLoading)
                            $("body").removeClass("loading");
                        if (failed)
                            failed(response.data);
                    });
            },
            put: function (url, data, success, failed, showLoading) {
                if (showLoading)
                    $("body").addClass("loading");
                $http({
                    method: 'put',
                    url: url,
                    data: data
                }).then(function successCallback(response) {
                        if (showLoading)
                            $("body").removeClass("loading");
                        if (success)
                            success(response.data);
                    },
                    function errorCallback(response) {
                        if (response && response.status == 401) {
                            location.href = "/dang-nhap";
                            return;
                        }
                        if (showLoading)
                            $("body").removeClass("loading");
                        if (failed)
                            failed(response.data);
                    });
            },
            get: function (url, success, failed, showLoading) {
                if (showLoading)
                    $("body").addClass("loading");
                $http({
                    method: 'get',
                    url: url
                }).then(function successCallback(response) {
                    if (response && response.status == 401) {
                        location.href = "/dang-nhap";
                        return;
                    }
                    if (showLoading)
                        $("body").removeClass("loading");
                    if (success)
                        success(response.data);
                }, function errorCallback(response) {
                    if (response && response.status == 401) {
                        location.href = "/dang-nhap";
                        return;
                    }
                    if (showLoading)
                        $("body").removeClass("loading");
                    if (failed)
                        failed(response.data);
                });
            },
            delete: function (url, success, failed, showLoading) {
                if (showLoading)
                    $("body").addClass("loading");
                $http({
                    method: 'DELETE',
                    url: url
                }).then(function successCallback(response) {
                    if (response && response.status == 401) {
                        location.href = "/dang-nhap";
                        return;
                    }
                    if (showLoading)
                        $("body").removeClass("loading");
                    if (success)
                        success(response.data);
                }, function errorCallback(response) {
                    if (response && response.status == 401) {
                        location.href = "/dang-nhap";
                        return;
                    }
                    if (showLoading)
                        $("body").removeClass("loading");
                    if (failed)
                        failed(response.data);
                });
            },
        }
    }])
    .directive('ckeditor', function ($rootScope) {
        return {
            require: 'ngModel',
            link: function (scope, element, attr, ngModel) {
                // enable ckeditor
                var ckeditor = CKEditorSetup.Show(attr.id);

                ckeditor.on('change', function () {
                    ngModel.$setViewValue(this.getData());
                });
            }
        };
    }).directive('ngRepeatDone', function () {
        return function (scope, element, attrs) {
            if (scope.$last) { // all are rendered
                scope.$eval(attrs.ngRepeatDone);
            }
        }
    }).directive('ngEnter', function () {
        return function (scope, element, attrs) {
            element.bind("keydown keypress", function (event) {
                if (event.which === 13) {
                    scope.$apply(function () {
                        scope.$eval(attrs.ngEnter);
                    });
                    event.preventDefault();
                }
            });
        };
    }).directive('ngEsc', function () {
        return function (scope, element, attrs) {
            element.bind("keydown keypress", function (event) {
                if (event.which === 27) {
                    scope.$apply(function () {
                        scope.$eval(attrs.ngEsc);
                    });
                    event.preventDefault();
                }
            });
        };
    }).directive('ngFileChange', function () {
        return {
            restrict: 'A',
            link: function ($scope, element, attrs, ngModel) {
                var onChangeFunc = $scope.$eval(attrs.ngFileChange);
                element.bind('change', function (event) {
                    // ngModel.$setViewValue(event.target.value);
                    onChangeFunc($scope);
                    $scope.$apply();
                });
            }
        };
    }).directive('compile', function ($compile, $parse) {
        return {
            restrict: 'A',
            link: function (scope, element, attr) {
                var parsed = $parse(attr.ngBindHtml);

                function getStringValue() {
                    return (parsed(scope) || '').toString();
                }

                // Recompile if the template changes
                scope.$watch(getStringValue,
                    function () {
                        $compile(element,
                            null,
                            -9999)(
                            scope); // The -9999 makes it skip directives so that we do not recompile ourselves
                    });
            }
        };
    }).directive('ngDateMilisecond', function () {
        return {
            restrict: 'A',
            link: function ($scope, element, attrs) {

            }
        }
    }).directive('ngDatePicker', ['$parse', function ($parse) {
        return {
            restrict: 'A',
            // require: "^ngModel",
            link: function ($scope, element, attrs) {
                var format = attrs.ngDatePicker;
                var _callback = attrs.ngDatePickerCallBack;
                var callback;
                if (_callback)
                    callback = $scope.$eval(_callback);
                if (!format)
                    format = "dd/mm/yy";
                element.datepicker({
                    inline: true,
                    showOtherMonths: true,
                    onSelect: function (date) {
                        if (callback)
                            callback($scope);
                        $scope.$apply();
                    }
                }).datepicker('widget').wrap('<div class="ll-skin-latoja"/>');
            }
        };
    }]).directive('ngDatePickerCallBack', function () {
        return {
            restrict: 'A',
            link: function (scope, element, attrs) {
            }
        };
    }).directive('inputDate',function(){
        return {
            restrict:'A',
            // require: "^ngModel",
            link:function ($scope, element) {
                element.checkDate({
                    callback:function () {
                        console.log("Date Input!")
                    }
                })
            }
        }
    }).directive('ngRating',function () {
        return {
            restrict: 'EA',
            template:
            '<div style="margin-top: -4%;" class="rating">' +
            '  <span ng-repeat="star in stars" class="star" ng-class="{filled: star.filled}" style="margin-left: 2px;" ng-click="toggle($index)">' +
            '    <i class="fa fa-star"></i>' + // or &#9733
            '  </span>' +
            '</div>',
            scope: {
                ratingValue: '=ngModel',
                max: '=?', // optional (default is 5)
                onRatingSelect: '&?',
                readonly: '=?'
            },
            link: function(scope, element, attributes) {
                if (scope.max == undefined) {
                    scope.max = 5;
                }
                function updateStars() {
                    scope.stars = [];
                    for (var i = 0; i < scope.max; i++) {
                        scope.stars.push({
                            filled: i < scope.ratingValue
                        });
                    }
                };
                scope.toggle = function(index) {
                    if (scope.readonly == undefined || scope.readonly === false){
                        scope.ratingValue = index + 1;
                        scope.onRatingSelect({
                            rating: index + 1
                        });
                    }
                };
                scope.$watch('ratingValue', function(oldValue, newValue) {
                    if (newValue || newValue === 0) {
                        updateStars();
                    }
                });
            }
        };
    }).directive('myClickOnce', function ($timeout) {
        var delay = 500;
        return {
            restrict: 'A',
            priority: -1,
            link: function (scope, elem) {
                var disabled = false;
                function onClick(evt) {
                    if (disabled) {
                        evt.preventDefault();
                        evt.stopImmediatePropagation();
                    } else {
                        disabled = true;
                        $timeout(function () { disabled = false; }, delay, false);
                    }
                }
                scope.$on('$destroy', function () { elem.off('click', onClick); });
                elem.on('click', onClick);
            }
        };
    });
ngApp.config(function($httpProvider){
    $httpProvider.useApplyAsync(1000); //true
});