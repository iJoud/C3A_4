/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const form = document.getElementById("postForm");

// input fields to check
const city = document.getElementById("cityName");
const hospital = document.getElementById('hospitalName');
const postBody = document.getElementById('postBody');


form.addEventListener('submit', e => {
    // console.log(checkInputs())
    if (checkInputs() === false) {
        e.preventDefault();
    }else{
        document.getElementById('hiddenInput').value = "filled";
    }
});

function checkInputs() {

    // to check validity
    let CITY = false;
    let HOSPITAL = false;
    let BODY = false;

    // Check City Name
    const cityValue = city.value.trim();

    if (!/^[a-zA-Z\s]+$/g.test(cityValue)) {
        ShowError(city, "City Name Should Contain Only Letters");
    } else if (cityValue.length > 30) {
        ShowError(city, "City Length Can't Exceed 30 Charecters");
    } else {
        valid(city);
        CITY = true;
    }

    // Check Hospital Name
    const hospitalValue = hospital.value.trim();

    if (!/^[a-zA-Z\s]+$/g.test(hospitalValue)) {
        ShowError(hospital, "Hospital Name Should Contain Only Letters");
    } else if (hospitalValue.length > 40) {
        ShowError(hospital, "Hospital Name Length Can't Exceed 40 Charecters");
    } else {
        valid(hospital);
        HOSPITAL = true;
    }

    // Check Hospital Name
    const postBodyValue = postBody.value.trim();

    if (!/^[0-9a-zA-Z\s,.]+$/g.test(postBodyValue)) {
        ShowError(postBody, "Post Body Should Contain Only Letters, Numbers, Commas, or/and Full Stops");
    } else if (postBodyValue.length > 140) {
        ShowError(postBody, "Post Length Can't Exceed 140 Charecters");
    } else {
        valid(postBody);
        BODY = true;

    }
    // optional field
    if (postBodyValue == "") {
        valid(postBody);
        BODY = true;
    }

    // Check validity
    return (CITY && HOSPITAL && BODY) ? true : false ;

}


function ShowError(element, errorMsg) {
    const parent = element.parentElement;
    const small = parent.querySelector('small');
    small.style.visibility = "visible";
    small.innerText = errorMsg;

    element.className = "error";
}

function valid(element) {
    const parent = element.parentElement;
    const small = parent.querySelector('small');
    small.style.visibility = "hidden";
    element.className = "";
}




