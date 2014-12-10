$(document).ready(function () {
 $("#new_master").validate({
debug: true,
rules: {
"master[name]": {required: true, email: true, remote:"/master/check_name" },
"master[description]": {required: true}

}
});
alert("document ready");
 
});
