<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<!-- Title Page-->
<title><decorator:title default="admin"></decorator:title></title>

<!-- Title Page-->
<title><decorator:title default="admin"></decorator:title></title>
<link href="<c:url value="/assets/user/admin/css/bootstrap-datetimepicker.min.css.css"/>"
	rel="stylesheet" media="all">
<link href="<c:url value="/assets/user/admin/css/theme.css"/>"
	rel="stylesheet" media="all">
<link href="<c:url value="/assets/user/admin/css/font-face.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/assets/user/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/assets/user/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/assets/user/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"/>"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->

<!-- Main CSS-->
<link href="<c:url value="/assets/user/admin/css/theme.css" />"
	rel="stylesheet" media="all">
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
	

	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});

</script>
</head>
<body class="animsition" style="animation-duration: 900ms; opacity: 1;">
 	<div class="page-wrapper">
		<%@include file="./admin/navigation.jsp"%>
		<div class="page-container">
			<%@include file="./admin/header.jsp"%>
	   <decorator:body />
		</div>
	</div>

<style>
/*------------------------------------------------------------------
[Master Stylesheet]

Project:  CoolAdmin
Version:	1.0
Last change:	08/10/2018 [Add Define a table of contents Link]
Assigned to:	Hau Nguyen
Primary use:	Open Source
-------------------------------------------------------------------*/
/*------------------------------------------------------------------
[LAYOUT]

* body
    + Header / header
	+ Page Content / .page-content .name-page
        + Section Layouts / section .name-section
        ...
	+ Footer / footer

-------------------------------------------------------------------*/
/*------------------------------------------------------------------
# [Color codes]

# Text Color (text): #666666
# Text Color Deep (Text, title): #333333

------------------------------------------------------------------*/
/*------------------------------------------------------------------
[Typography]

Notes:	decreasing heading by 0.4em with every subsequent heading level
-------------------------------------------------------------------*/
/*-----------------------------------------------------*/
/*                   SETTINGS                          */
/*-----------------------------------------------------*/
/*-----------------------------------------------------*/
/*                   TOOLS                             */
/*-----------------------------------------------------*/
/*-----------------------------------------------------*/
/*                   GENERIC                           */
/*-----------------------------------------------------*/
/* ----- Normalize ----- */
* {
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

ul {
    margin: 0;
}

button,
input[type='button'] {
    cursor: pointer;
}

button:focus,
input:focus,
textarea:focus {
    outline: none;
}

input, textarea {
    border: none;
}

button {
    border: none;
    background: none;
}

img {
    max-width: 100%;
    height: auto;
}

p {
    margin: 0;
}

.table-responsive {
    padding-right: 1px;
}

.card {
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.btn {
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

/* ----- Typography ----- */
body {
    font-family: "Poppins", sans-serif;
    font-weight: 400;
    font-size: 16px;
    line-height: 1.625;
    color: #666;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

h1,
h2,
h3,
h4,
h5,
h6 {
    color: #333333;
    font-weight: 700;
    margin: 0;
    line-height: 1.2;
}

h1 {
    font-size: 36px;
}

h2 {
    font-size: 30px;
}

h3 {
    font-size: 24px;
}

h4 {
    font-size: 18px;
}

h5 {
    font-size: 15px;
}

h6 {
    font-size: 13px;
}

blockquote {
    margin: 0;
}

strong {
    font-weight: 700;
}

/*-----------------------------------------------------*/
/*                   ELEMENTS                          */
/*-----------------------------------------------------*/
/* ----- Title ----- */
.title--sbold {
    font-weight: 600;
}

.title-1 {
    text-transform: capitalize;
    font-weight: 400;
    font-size: 30px;
}

.title-2 {
    text-transform: capitalize;
    font-weight: 400;
    font-size: 24px;
    line-height: 1;
}

.title-3 {
    text-transform: capitalize;
    font-weight: 400;
    font-size: 24px;
    color: #333;
}

.title-3 i {
    margin-right: 13px;
    vertical-align: baseline;
}

.title-4 {
    font-weight: 500;
    font-size: 30px;
    color: #393939;
}

.title-5 {
    text-transform: capitalize;
    font-size: 22px;
    font-weight: 500;
    color: #393939;
}

.title-6 {
    font-size: 24px;
    font-weight: 500;
    color: #fff;
}

.heading-title {
    font-size: 24px;
    font-weight: 500;
    color: #333;
    text-transform: capitalize;
    margin-bottom: 10px;
}

/* ----- Links ----- */
a {
    display: inline-block;
}

a:hover,
a:focus,
a:active {
    text-decoration: none;
    outline: none;
}

a:hover,
a {
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
}

/*-----------------------------------------------------*/
/*                   OBJECTS                           */
/*-----------------------------------------------------*/
/* ----- Section----- */
section {
    position: relative;
}

.section__content {
    position: relative;
    margin: 0 auto;
    z-index: 1;
}

.section__content--w1830 {
    max-width: 1830px;
}

.section__content--p30 {
    padding: 0 30px;
}

@media (max-width: 991px) {
    .section__content--p30 {
        padding: 0;
    }
}

.section__content--p35 {
    padding: 0 35px;
}

/* ----- Page Wrapper----- */
/*Override Grid Bootstrap*/
@media (min-width: 1200px) {
    .container {
        max-width: 1320px;
    }
}

/*Page Objects*/
.page-wrapper {
    overflow: hidden;
    background: #e5e5e5;
    padding-bottom: 8vh;
}

@media (max-width: 991px) {
    .page-wrapper {
    overflow: auto;
    background: #e5e5e5;
    padding-bottom: 12vh;
}
}
.page-container {
    background: #e5e5e5;
    padding-left: 300px;
}

@media (max-width: 991px) {
    .page-container {
        position: relative;
        top: 88px;
        padding-left: 0;
    }
}

.page-container2 {
    background: #f2f2f2;
    padding-left: 300px;
}

@media (max-width: 991px) {
    .page-container2 {
        position: relative;
        padding-left: 0;
    }
}

.page-container3 {
    background: #f7f7f7;
}

.main-content {
    padding-top: 116px;
    min-height: 100vh;
}

@media (max-width: 991px) {
    .main-content {
        padding-top: 50px;
	padding-bottom: 100px;
    }
}

.page-content--bgf7 {
    background: #f7f7f7;
}

.page-content--bge5 {
    background: #e5e5e5;
    height: 100vh;
}

.login-wrap {
    max-width: 540px;
    padding-top: 8vh;
    margin: 0 auto;
}

.login-logo {
    text-align: center;
    margin-bottom: 30px;
}

.login-checkbox {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

.login-checkbox label input[type="checkbox"] {
    margin-right: 8px;
}

.login-checkbox > label > a {
    color: #ff2e44;
}

@media (max-width: 991px) {
    .login-checkbox {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }
}

.login-form .form-group label {
    display: block;
}

.login-content {
    background: #fff;
    padding: 30px 30px 20px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}

.social-login-content {
    border-top: 1px solid #e7e7e7;
    border-bottom: 1px solid #e7e7e7;
    padding: 20px 0px;
}

.register-link {
    padding-top: 15px;
    text-align: center;
    font-size: 14px;
}

.register-link > p > a {
    color: #ff2e44;
}

.fontawesome-list-wrap {
    background: #fff;
    border: 1px solid #C9CDD7;
    padding: 20px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}

.fontawesome-list__title {
    padding-bottom: 20px;
    border-bottom: 1px solid #C9CDD7;
    margin-bottom: 20px;
    margin-top: 30px;
}

.fa-hover a {
    color: #666;
    font-size: 15px;
}

.fa-hover a i {
    margin-right: 10px;
}

.fa-hover a:hover {
    color: #333;
}

.main-content--pb30 {
    padding-bottom: 30px;
}

/*-----------------------------------------------------*/
/*                   COMPONENTS                        */
/*-----------------------------------------------------*/
/* ----- Buttons----- */
.au-btn {
    line-height: 45px;
    padding: 0 35px;
    text-transform: uppercase;
    color: #fff;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
    cursor: pointer;
}

.au-btn:hover {
    color: #fff;
    background: #3868cd;
}

.au-btn--blue2 {
    background: #00aced;
}

.au-btn--blue2:hover {
    background: #00a2e3;
}

.au-btn--block {
    display: block;
    width: 100%;
}

.au-btn-icon i {
    vertical-align: baseline;
    margin-right: 5px;
}

.au-btn--blue {
    background: #4272d7;
}

.au-btn--green {
    background: #63c76a;
}

.au-btn--green:hover {
    background: #59bd60;
}

.au-btn-plus {
    position: absolute;
    height: 45px;
    width: 45px;
    background: #63c76a;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
    bottom: -22.5px;
    right: 45px;
    z-index: 3;
}

.au-btn-plus i {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    font-size: 15px;
    font-weight: 500;
    color: #fff;
}

.au-btn-plus:hover {
    background: #59bd60;
}

.au-btn-load {
    background: #808080;
    padding: 0 40px;
    font-size: 15px;
    color: #fff;
}

.au-btn-load:hover {
    background: #767676;
}

.au-btn-filter {
    font-size: 14px;
    color: #808080;
    background: #fff;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -moz-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    padding: 0 15px;
    line-height: 40px;
    text-transform: capitalize;
}

.au-btn-filter i {
    margin-right: 5px;
}

.au-btn--small {
    padding: 0 20px;
    line-height: 40px;
    font-size: 14px;
}

/*Page Loader*/
.page-loader {
    background: #f8f8f8;
    bottom: 0;
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 99999;
}

.page-loader__spin {
    width: 35px;
    height: 35px;
    position: absolute;
    top: 50%;
    left: 50%;
    border-top: 6px solid #f6f6f6;
    border-right: 6px solid #f6f6f6;
    border-bottom: 6px solid #f6f6f6;
    border-left: 6px solid #1b1b1b;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    -webkit-animation: spinner 1000ms infinite linear;
    -moz-animation: spinner 1000ms infinite linear;
    -o-animation: spinner 1000ms infinite linear;
    animation: spinner 1000ms infinite linear;
    z-index: 100000;
}

@-webkit-keyframes spinner {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@-moz-keyframes spinner {
    0% {
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    100% {
        -webkit-transform: rotate(360deg);
        -moz-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@-o-keyframes spinner {
    0% {
        -webkit-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    100% {
        -webkit-transform: rotate(360deg);
        -o-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@keyframes spinner {
    0% {
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    100% {
        -webkit-transform: rotate(360deg);
        -moz-transform: rotate(360deg);
        -o-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

/* ----- Form ----- */
.form-header {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
}

@media (max-width: 991px) {
    .form-header {
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -moz-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
}

.form-header2 .au-btn--submit {
    border: none;
    line-height: 45px;
}

.form-header2 .au-input {
    border-color: rgba(255, 255, 255, 0.2);
    background: rgba(255, 255, 255, 0.051);
    color: #999;
}

.form-header2 .au-input::-webkit-input-placeholder {
    /* WebKit, Blink, Edge */
    color: #999;
}

.form-header2 .au-input:-moz-placeholder {
    /* Mozilla Firefox 4 to 18 */
    color: #999;
    opacity: 1;
}

.form-header2 .au-input::-moz-placeholder {
    /* Mozilla Firefox 19+ */
    color: #999;
    opacity: 1;
}

.form-header2 .au-input:-ms-input-placeholder {
    /* Internet Explorer 10-11 */
    color: #999;
}

.form-header2 .au-input:-ms-input-placeholder {
    /* Microsoft Edge */
    color: #999;
}

/* ----- Input ----- */
.au-input {
    line-height: 43px;
    border: 1px solid #e5e5e5;
    font-size: 14px;
    color: #666;
    padding: 0 17px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.au-input--style2 {
    color: #808080;
    line-height: 43px;
    border: 1px solid #e5e5e5;
    font-size: 14px;
    padding: 0 17px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.au-input--full {
    width: 100%;
}

.au-input--h65 {
    line-height: 63px;
    font-size: 16px;
    color: #808080;
}

.au-input--w300 {
    min-width: 300px;
}

.au-input--w435 {
    min-width: 435px;
}

@media (max-width: 767px) {
    .au-input--w435 {
        min-width: 230px;
    }
}

.au-form-icon {
    position: relative;
}

.au-form-icon .au-input {
    padding-right: 80px;
}

.au-form-icon--sm {
    position: relative;
}

.au-form-icon--sm .au-input {
    padding-right: 43px;
}

.au-input-icon {
    position: absolute;
    top: 1px;
    right: 12px;
    width: 63px;
    height: 63px;
    line-height: 63px;
    text-align: center;
    display: block;
}

.au-input-icon i {
    font-size: 30px;
    color: #808080;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.au-input--xl {
    min-width: 935px;
}

@media (max-width: 1600px) {
    .au-input--xl {
        min-width: 350px;
    }
}

@media (max-width: 991px) {
    .au-input--xl {
        min-width: 350px;
    }
}

@media (max-width: 767px) {
    .au-input--xl {
        min-width: 150px;
    }
}

.au-btn--submit {
    position: relative;
    right: 0;
    min-width: 65px;
    line-height: 43px;
    border: 1px solid #e5e5e5;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    background: #4272d7;
    margin-left: -3px;
}

.au-btn--submit:hover {
    background: #3868cd;
}

.au-btn--submit > i {
    font-size: 20px;
    color: #fff;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.au-btn--submit2 {
    height: 43px;
    width: 43px;
    position: absolute;
    top: 1px;
    right: 0;
}

.au-btn--submit2 i {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    color: #4c4c4c;
    font-size: 20px;
}

.rs-select2--sm {
    width: 114px;
}

.rs-select2--md {
    width: 160px;
}

.select2-container {
    display: block;
    max-width: 100% !important;
    width: auto !important;
    outline: none;
}

.rs-select2--dark {
    display: inline-block;
}

@media (max-width: 767px) {
    .rs-select2--dark {
        display: block;
        margin-right: 0;
        margin-bottom: 10px;
    }
}

.rs-select2--dark .select2-container--default .select2-selection--single {
    border: none;
    outline: none;
    padding-left: 18px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    height: 40px;
    background: #808080;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.rs-select2--dark .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #fff;
    font-size: 14px;
}

.rs-select2--dark .select2-container .select2-selection--single .select2-selection__rendered {
    padding: 0;
}

.rs-select2--dark .select2-container--default .select2-selection--single .select2-selection__arrow {
    height: 40px;
    top: 0;
    right: 13px;
}

.rs-select2--dark .select2-container--default .select2-selection--single .select2-selection__arrow b {
    border-color: #fff transparent transparent transparent;
}

.rs-select2--dark .select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
    border-color: transparent transparent #fff transparent;
}

.rs-select2--dark .select2-container--open .select2-dropdown,
.rs-select2--trans .select2-container--open .select2-dropdown,
.rs-select2--light .select2-container--open .select2-dropdown,
.rs-select2--trans .select2-container--open .select2-dropdown {
    font-size: 14px;
    box-shadow: 0px 2px 15px 3px rgba(0,0,0,0.1);
    border-radius: 4px;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border: 1px solid #e0e0e0;
    margin-top: 8px;
    overflow: hidden;
}

.rs-select2--dark .select2-container--open .select2-dropdown .select2-results__option ,
.rs-select2--trans .select2-container--open .select2-dropdown .select2-results__option,
.rs-select2--light .select2-container--open .select2-dropdown .select2-results__option {
    padding: 8px 16px;
}

.select2-container--default .select2-results__option--highlighted[aria-selected] {
    background: #4272d7;
}

.select2-container--default.select2-container--open.select2-container--below .select2-selection--single,
.select2-container--default.select2-container--open.select2-container--below .select2-selection--multiple {
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 3px;
 }

.rs-select2--border .select2-container--default .select2-selection--single,

.rs-select2--dark2 .select2-container--default .select2-selection--single {
    background: #555;
}

.rs-select2--light {
    display: inline-block;
}

@media (max-width: 767px) {
    .rs-select2--light {
        display: block;
        margin-right: 0;
        margin-bottom: 10px;
    }
}

.rs-select2--light .select2-container--default .select2-selection--single {
    border: none;
    outline: none;
    padding-left: 18px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    height: 40px;
    background: #fff;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -moz-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
}

.rs-select2--light .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #808080;
    font-size: 14px;
}

.rs-select2--light .select2-container .select2-selection--single .select2-selection__rendered {
    padding: 0;
}

.rs-select2--light .select2-container--default .select2-selection--single .select2-selection__arrow {
    height: 40px;
    top: 0;
    right: 13px;
}

.rs-select2--light .select2-container--default .select2-selection--single .select2-selection__arrow b {
    border-color: #808080 transparent transparent transparent;
}

.rs-select2--light .select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
    border-color: transparent transparent #808080 transparent;
}

.rs-select2--light v .select2-container--open .select2-dropdown {
    font-size: 14px;
}

.rs-select2--border .select2-container--default .select2-selection--single {
    background: transparent;
    border: 1px solid #e5e5e5;
}

.rs-select2--border .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #808080;
}

.rs-select2--border .select2-container--default .select2-selection--single .select2-selection__arrow b {
    border-color: #808080 transparent transparent transparent;
}

.rs-select2--border .select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
    border-color: transparent transparent #808080 transparent;
}

.rs-select2--trans .select2-container--default .select2-selection--single {
    border: none;
    outline: none;
}

.rs-select2--trans .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #808080;
    font-size: 14px;
    padding-left: 0;
}

.rs-select2--trans .select2-container--open .select2-dropdown {
    font-size: 14px;
}

.au-checkbox {
    display: block;
    position: relative;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

.au-checkbox input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

.au-checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 22px;
    width: 22px;
    background-color: #fff;
    border: 2px solid #e5e5e5;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}

.au-checkbox:hover input ~ .au-checkmark {
    background-color: transparent;
}

.au-checkbox input:checked ~ .au-checkmark {
    background-color: transparent;
}

.au-checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

.au-checkbox input:checked ~ .au-checkmark:after {
    display: block;
}

.au-checkbox .au-checkmark:after {
    left: 5px;
    top: -1px;
    width: 9px;
    height: 15px;
    border: solid #00ad5f;
    border-width: 0 4px 4px 0;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    transform: rotate(45deg);
}

.form-control {
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}

.card {
    margin-bottom: 30px;
}

.input-group-addon {
    background-color: transparent;
    border-left: 0;
}

.input-group-addon, .input-group-btn {
    white-space: nowrap;
    vertical-align: middle;
}

.input-group-addon {
    padding: .5rem .75rem;
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.25;
    color: #495057;
    text-align: center;
    background-color: #e9ecef;
    border: 1px solid rgba(0, 0, 0, 0.15);
    -webkit-border-radius: .25rem;
    -moz-border-radius: .25rem;
    border-radius: .25rem;
}

/* ----- Header ----- */
.header-desktop {
    background: #f5f5f5;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    position: fixed;
    top: 0;
    right: 0;
    left: 300px;
    height: 75px;
    z-index: 3;
}

.header-desktop .section__content {
    overflow: visible;
    position: absolute;
    top: 50%;
    left: 0;
    right: 0;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
}

@media (max-width: 991px) {
    .header-desktop {
        position: relative;
        top: 0;
        left: 0;
        height: 170px;
    }
}

.header-desktop .mess-dropdown {
    top: 51px;
}

.header-desktop .email-dropdown {
    top: 51px;
}

.header-desktop .notifi-dropdown {
    top: 51px;
}

@media (max-width: 991px) {
    .logo {
        text-align: center;
    }
}

.header-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

@media (min-width: 992px) and (max-width: 1199px) {
    .header-wrap .account-item > .content {
        display: none;
    }
}

@media (max-width: 991px) {
    .header-wrap {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }

    .header-wrap .mess-dropdown {
        left: 0;
    }

    .header-wrap .mess-dropdown::before {
        left: 0;
    }

    .header-wrap .notifi-dropdown {
        left: -83px;
    }

    .header-wrap .notifi-dropdown::before {
        left: 79px;
    }
}

.header-button {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

@media (max-width: 991px) {
    .header-button {
        margin-top: 30px;
        width: 100%;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        -moz-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
    }
}

.noti-wrap {
    height: 45px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.noti-wrap .noti__item:last-child {
    margin-right: 50px;
}

@media (max-width: 1200px) {
    .noti-wrap .noti__item:last-child {
        margin-right: 30px;
    }
}

@media (max-width: 991px) {
    .noti-wrap .noti__item:last-child {
        margin-right: 0;
    }
}

.noti__item {
    position: relative;
    margin-right: 35px;
    display: inline-block;
    cursor: pointer;
}

@media (max-width: 1200px) {
    .noti__item {
        margin-right: 25px;
    }
}

@media (max-width: 767px) {
    .noti__item {
        margin-right: 20px;
    }
}

.noti__item:hover i {
    color: #999;
}

.noti__item i {
    font-size: 30px;
    color: #a9b3c9;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
    vertical-align: middle;
}

@media (max-width: 767px) {
    .noti__item i {
        font-size: 24px;
    }
}

.noti__item .quantity {
    position: absolute;
    display: inline-block;
    top: -4px;
    right: -7px;
    height: 15px;
    width: 15px;
    line-height: 15px;
    text-align: center;
    background: #ff4b5a;
    color: #fff;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    font-size: 12px;
}

.account-wrap {
    position: relative;
}

.account-item {
    cursor: pointer;
}

.account-item .image {
    width: 45px;
    height: 45px;
    float: left;
    overflow: hidden;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.account-item .image > img {
    width: 100%;
}

.account-item > .content {
    margin-left: 45px;
    padding: 9px 0;
    padding-left: 12px;
}

.account-item > .content > a {
    color: #333;
    text-transform: capitalize;
    font-weight: 500;
}

.account-item > .content > a:after {
    font-family: "Material-Design-Iconic-Font";
    font-weight: 500;
    content: '\f2f9';
    display: inline-block;
    font-size: 16px;
    margin-left: 5px;
}

.account-item > .content > a:hover {
    color: #666;
}

.account-dropdown {
    min-width: 305px;
    position: absolute;
    top: 58px;
    right: 0;
    background: #fff;
    -webkit-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
    -webkit-transition: all 0.4s ease;
    -o-transition: all 0.4s ease;
    -moz-transition: all 0.4s ease;
    transition: all 0.4s ease;
    -webkit-transform-origin: right top;
    -moz-transform-origin: right top;
    -ms-transform-origin: right top;
    -o-transform-origin: right top;
    transform-origin: right top;
    z-index: 3;
}

.account-dropdown .info {
    padding: 25px;
    border-top: 1px solid #f5f5f5;
    border-bottom: 1px solid #f2f2f2;
}

.account-dropdown .info .image {
    float: left;
    height: 65px;
    width: 65px;
    overflow: hidden;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.account-dropdown .info .content {
    margin-left: 65px;
    padding: 11px 0;
    padding-left: 12px;
}

.account-dropdown .info .content .name {
    line-height: -webkit-calc(20/16);
    line-height: -moz-calc(20/16);
    line-height: calc(20/16);
}

.account-dropdown .info .content .name a {
    color: #333;
    font-weight: 500;
    text-transform: capitalize;
}

.account-dropdown .info .content .name a:hover {
    color: #666;
}

.account-dropdown .info .content .email {
    font-size: 13px;
    color: #999;
    line-height: -webkit-calc(20/13);
    line-height: -moz-calc(20/13);
    line-height: calc(20/13);
}

.account-dropdown:after {
    content: '';
    display: block;
    width: 19px;
    height: 19px;
    border-bottom: 9px solid #fff;
    border-top: 9px solid transparent;
    border-left: 9px solid transparent;
    border-right: 9px solid transparent;
    position: absolute;
    top: -18px;
    right: 33px;
}

.account-dropdown__item a {
    display: block;
    color: #333;
    padding: 15px 25px;
    font-size: 14px;
}

.account-dropdown__item a:hover {
    background: #4272d7;
    color: #fff;
}

.account-dropdown__item a i {
    line-height: 1;
    margin-right: 20px;
    font-size: 18px;
    vertical-align: middle;
}

.account-dropdown__body {
    padding: 12px 0;
}

.account-dropdown__footer {
    border-top: 1px solid #f2f2f2;
}

.account-dropdown__footer a {
    display: block;
    color: #333;
    padding: 15px 25px;
    font-size: 14px;
}

.account-dropdown__footer a:hover {
    background: #4272d7;
    color: #fff;
}

.account-dropdown__footer a i {
    line-height: 1;
    margin-right: 20px;
    font-size: 18px;
    vertical-align: middle;
}

.menu-sidebar {
    width: 300px;
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    background: #fff;
    overflow-y: auto;
}

.menu-sidebar .logo {
    background: #f5f5f5;
    height: 75px;
    padding: 0 35px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    border-right: 1px solid #e5e5e5;
    position: relative;
    z-index: 3;
}

.menu-sidebar .navbar__list .navbar__sub-list {
    display: none;
    padding-left: 34px;
}

.menu-sidebar .navbar__list .navbar__sub-list li a {
    padding: 11.5px 0;
}

.menu-sidebar__content {
    position: relative;
    height: -webkit-calc(100vh - 75px);
    height: -moz-calc(100vh - 75px);
    height: calc(100vh - 75px);
}

.navbar-sidebar {
    padding: 35px;
    padding-bottom: 0;
}

.navbar-sidebar .navbar__list li a {
    display: block;
    color: #555;
    font-size: 16px;
    padding: 15px 0;
}

.navbar-sidebar .navbar__list li a i {
    margin-right: 19px;
}

.navbar-sidebar .navbar__list li a:hover {
    color: #4272d7;
}

.navbar-sidebar .navbar__list li.active > a {
    color: #4272d7;
}

.has-sub {
    position: relative;
}

.header-mobile {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
}

.header-mobile .header-mobile__bar {
    padding: 15px 0;
}

.header-mobile .header-mobile-inner {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

.header-mobile .hamburger {
    width: 36px;
    height: 36px;
    padding: 0;
    line-height: 1;
    vertical-align: top;
    background: #fff;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -moz-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.header-mobile .hamburger .hamburger-box {
    width: 20px;
    height: 15px;
}

.header-mobile .hamburger .hamburger-box .hamburger-inner {
    width: 20px;
    height: 2px;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
}

.header-mobile .hamburger .hamburger-box .hamburger-inner:before {
    width: 20px;
    height: 2px;
    top: 6px;
}

.header-mobile .hamburger .hamburger-box .hamburger-inner:after {
    top: 12px;
    width: 20px;
    height: 2px;
}

.header-mobile .navbar-mobile {
    display: none;
    position: absolute;
    width: 100%;
    top: 88px;
    z-index: 20;
}

.header-mobile .navbar-mobile .navbar-mobile__list {
    background: #f8f8f8;
}

.header-mobile .navbar-mobile .navbar-mobile__list > li > a {
    padding-left: 15px !important;
}

.header-mobile .navbar-mobile .navbar-mobile__list li a {
    color: #555;
    display: block;
    padding: 10px 15px;
    padding-right: 25px;
    padding-left: 0;
    border-bottom: 1px solid #e6e6e6;
    text-transform: capitalize;
    line-height: inherit;
}

.header-mobile .navbar-mobile .navbar-mobile__list li a:hover {
    color: #4272d7;
}

.header-mobile .navbar-mobile .navbar-mobile__list li a > i {
    margin-right: 19px;
}

.header-mobile .navbar-mobile .navbar-mobile__list li.has-dropdown > a:after {
    content: '\f105';
    font-family: FontAwesome, cursive;
    float: right;
    font-size: 16px;
    line-height: 22px;
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
}

.header-mobile .navbar-mobile .navbar-mobile__list li.has-dropdown > a.active::after {
    -webkit-transform: rotate(90deg);
    -moz-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    -o-transform: rotate(90deg);
    transform: rotate(90deg);
}

.header-mobile .navbar-mobile .navbar-mobile__dropdown {
    padding-left: 35px;
    display: none;
}

.navbar-mobile-sub__list {
    display: none;
    padding-left: 30px;
    background: #fff;
}

.header-mobile .navbar-mobile .navbar-mobile-sub__list li a {
    padding-left: 15px;
}

.header-mobile-2 {
    background: #393939;
    position: static;
}

.header-mobile-2.header-mobile .navbar-mobile {
    top: 82px;
}

.header-mobile-2.header-mobile .hamburger {
    background: transparent;
}

.header-mobile-2.header-mobile .hamburger .hamburger-box .hamburger-inner {
    background: #fff;
}

.header-mobile-2.header-mobile .hamburger .hamburger-box .hamburger-inner::before {
    background: #fff;
}

.header-mobile-2.header-mobile .hamburger .hamburger-box .hamburger-inner::after {
    background: #fff;
}

.sub-header-mobile-2 {
    background: #fff;
    padding: 15px;
}

.sub-header-mobile-2 .header__tool {
    -webkit-box-pack: end;
    -webkit-justify-content: flex-end;
    -moz-box-pack: end;
    -ms-flex-pack: end;
    justify-content: flex-end;
}

.sub-header-mobile-2 .header__tool .header-button-item {
    color: #a9b3c9;
}

.sub-header-mobile-2 .header__tool .account-wrap .account-item--style2 .content a {
    color: #333;
}

.sub-header-mobile-2 .header__tool .notifi-dropdown {
    top: 49px;
}

.sub-header-mobile-2 .header__tool .setting-dropdown {
    top: 49px;
}

.hamburger.is-active .hamburger-box .hamburger-inner:after {
    -webkit-transform: translate3d(0, -12px, 0) rotate(-90deg);
    -moz-transform: translate3d(0, -12px, 0) rotate(-90deg);
    transform: translate3d(0, -12px, 0) rotate(-90deg);
}

.mess-dropdown, .email-dropdown, .notifi-dropdown, .setting-dropdown {
    position: absolute;
    z-index: 9999;
    min-width: 340px;
    background: #fff;
    -webkit-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    border: 1px solid #e5e5e5;
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
    -webkit-transition: all 0.4s ease;
    -o-transition: all 0.4s ease;
    -moz-transition: all 0.4s ease;
    transition: all 0.4s ease;
    -webkit-transform-origin: left top;
    -moz-transform-origin: left top;
    -ms-transform-origin: left top;
    -o-transform-origin: left top;
    transform-origin: left top;
    top: 100%;
    left: 0;
}

.mess-dropdown:before, .email-dropdown:before, .notifi-dropdown:before, .setting-dropdown:before {
    content: '';
    display: block;
    width: 19px;
    height: 19px;
    border-bottom: 9px solid #fff;
    border-top: 9px solid transparent;
    border-left: 9px solid transparent;
    border-right: 9px solid transparent;
    position: absolute;
    top: -17px;
    left: 55px;
    z-index: 3;
}

.mess__title, .email__title, .notifi__title {
    padding: 22px;
    border-bottom: 1px solid #f2f2f2;
    cursor: default;
}

.mess__title p, .email__title p, .notifi__title p {
    line-height: -webkit-calc(29/14);
    line-height: -moz-calc(29/14);
    line-height: calc(29/14);
    font-size: 14px;
    color: #808080;
}

.mess__footer a, .email__footer a, .notifi__footer a {
    display: block;
    text-transform: capitalize;
    text-align: center;
    font-size: 14px;
    color: #4272d7;
    padding: 24px 0;
}

.mess__footer a:hover, .email__footer a:hover, .notifi__footer a:hover {
    color: #3868cd;
}

.mess-dropdown {
    top: 49px;
    left: -55px;
}

.mess__item {
    padding: 19px 22px;
    padding-bottom: 14px;
    border-bottom: 1px solid #f2f2f2;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.mess__item:hover {
    background: #f7f7f7;
}

.mess__item .image {
    margin-right: 15px;
}

.mess__item .content {
    width: -webkit-calc(100% - 55px);
    width: -moz-calc(100% - 55px);
    width: calc(100% - 55px);
    text-align: left;
}

.mess__item .content h6 {
    font-size: 14px;
    font-weight: 600;
    padding-top: 4px;
}

.mess__item .content p {
    font-size: 14px;
    color: #555;
    line-height: -webkit-calc(24/14);
    line-height: -moz-calc(24/14);
    line-height: calc(24/14);
    margin-bottom: 4px;
}

.mess__item .content .time {
    font-size: 12px;
    color: #999;
}

.email-dropdown {
    top: 49px;
    left: -53px;
}

.email__item {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    padding: 19px 22px;
    padding-bottom: 14px;
    border-bottom: 1px solid #f2f2f2;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.email__item:hover {
    background: #f7f7f7;
}

.email__item .image {
    margin-right: 15px;
}

.email__item .content {
    width: -webkit-calc(100% - 55px);
    width: -moz-calc(100% - 55px);
    width: calc(100% - 55px);
    text-align: left;
    font-size: 14px;
}

.email__item .content p {
    color: #555;
    line-height: 1;
    padding-top: 4px;
    margin-bottom: 3px;
}

.email__item .content span {
    font-size: 12px;
    color: #999;
}

.notifi-dropdown {
    left: -117px;
    top: 49px;
}

.notifi-dropdown::before {
    left: 63px;
}

.notifi__item {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    padding: 19px 22px;
    padding-bottom: 14px;
    border-bottom: 1px solid #f2f2f2;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.notifi__item:hover {
    background: #f7f7f7;
}

.notifi__item .img-cir {
    position: relative;
    margin-right: 15px;
}

.notifi__item .img-cir i {
    font-size: 22px;
    color: #fff;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.notifi__item .content {
    width: -webkit-calc(100% - 55px);
    width: -moz-calc(100% - 55px);
    width: calc(100% - 55px);
    text-align: left;
    font-size: 14px;
}

.notifi__item .content p {
    color: #555;
    line-height: 1;
    padding-top: 5px;
    margin-bottom: 2px;
}

.notifi__item .content .date {
    font-size: 12px;
    color: #999;
}

.show-dropdown .js-dropdown {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
}

.menu-sidebar-min {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
}

.menu-sidebar2 {
    width: 300px;
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    background: #fff;
    overflow-y: auto;
    height: 100vh;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
    z-index: 1000;
}

.menu-sidebar2 .logo {
    height: 75px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    background: #365cad;
    padding: 0 35px;
}

@media (max-width: 991px) {
    .menu-sidebar2 {
        top: 0;
        right: -300px;
        left: auto;
        -webkit-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
        -moz-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
        box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    }

    .menu-sidebar2.show-sidebar {
        right: 0;
    }
}

.account2 {
    padding: 38px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -moz-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -moz-box-orient: vertical;
    -moz-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    border-bottom: 1px  solid #f2f2f2;
}

.account2 .name {
    text-transform: capitalize;
    font-weight: 500;
    font-size: 20px;
    margin-top: 20px;
    margin-bottom: 5px;
}

.account2 > a {
    font-size: 14px;
    color: #999;
}

.account2 > a:hover {
    color: #666;
}

.menu-sidebar2__content {
    height: -webkit-calc(100vh - 75px);
    height: -moz-calc(100vh - 75px);
    height: calc(100vh - 75px);
    border-right: 1px solid #e5e5e5;
    position: relative;
}

.navbar-sidebar2 .navbar__list li {
    position: relative;
    cursor: pointer;
}

.navbar-sidebar2 .navbar__list li .arrow {
    position: absolute;
    right: 15px;
    top: 0;
    text-align: center;
    vertical-align: middle;
    height: 63px;
    width: 63px;
    line-height: 63px;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.navbar-sidebar2 .navbar__list li .arrow.up {
    -webkit-transform: rotate(-180deg);
    -moz-transform: rotate(-180deg);
    -ms-transform: rotate(-180deg);
    -o-transform: rotate(-180deg);
    transform: rotate(-180deg);
}

.navbar-sidebar2 .navbar__list li .arrow i {
    font-size: 16px;
    color: #999;
}

.navbar-sidebar2 .navbar__list li:hover > a {
    color: #4272d7;
}

.navbar-sidebar2 .navbar__list li a {
    font-size: 16px;
    color: #555;
    display: block;
    padding: 18px 35px;
    border-bottom: 1px solid #f2f2f2;
}

.navbar-sidebar2 .navbar__list li a > i {
    margin-right: 20px;
}

.navbar-sidebar2 .navbar__list li.active > a {
    color: #4272d7;
}

.navbar-sidebar2 .navbar__sub-list {
    display: none;
}

.navbar-sidebar2 .navbar__sub-list li {
    background: #f5f5f5;
}

.navbar-sidebar2 .navbar__sub-list li a {
    border-color: #ebebeb;
}

.inbox-num {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    right: 34px;
    width: 30px;
    height: 30px;
    background: #ff4b5a;
    text-align: center;
    line-height: 30px;
    font-size: 14px;
    color: #fff;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.header-desktop2 {
    height: 75px;
    background: #4272d7;
    position: fixed;
    z-index: 1001;
    top: 0;
    right: 0;
    left: 300px;
}

@media (max-width: 991px) {
    .header-desktop2 {
        left: 0;
        position: relative;
    }
}

.header-desktop2 .section__content {
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
}

.header-wrap2 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
    -webkit-justify-content: flex-end;
    -moz-box-pack: end;
    -ms-flex-pack: end;
    justify-content: flex-end;
}

@media (max-width: 991px) {
    .header-wrap2 {
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        -moz-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
    }
}

.header-button .notifi-dropdown::before {
    left: 117px;
}

.header-button2 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
}

.header-button2 .header-button-item:last-child {
    margin-right: 0;
}

.header-button2 .header-button-item {
    cursor: pointer;
}

.header-button2 .header-button-item i {
    vertical-align: middle;
}

.header-button2 .header-button-item .search-dropdown {
    top: 52px;
}

@media (max-width: 991px) {
    .header-button2 .header-button-item .search-dropdown {
        top: 63px;
        right: -75px;
        -webkit-transform-origin: 70% top;
        -moz-transform-origin: 70% top;
        -ms-transform-origin: 70% top;
        -o-transform-origin: 70% top;
        transform-origin: 70% top;
    }

    .header-button2 .header-button-item .search-dropdown::before {
        right: 79px;
    }
}

.header-button2 .header-button-item .notifi-dropdown {
    top: 52px;
    left: auto;
    right: -68px;
    -webkit-transform-origin: right top;
    -moz-transform-origin: right top;
    -ms-transform-origin: right top;
    -o-transform-origin: right top;
    transform-origin: right top;
}

.header-button2 .header-button-item .notifi-dropdown::before {
    margin-left: 0;
    left: auto;
    right: 68px;
}

@media (max-width: 991px) {
    .header-button2 .header-button-item .notifi-dropdown {
        top: 63px;
        right: -48px;
        -webkit-transform-origin: 80% top;
        -moz-transform-origin: 80% top;
        -ms-transform-origin: 80% top;
        -o-transform-origin: 80% top;
        transform-origin: 80% top;
    }

    .header-button2 .header-button-item .notifi-dropdown::before {
        margin-left: 0;
        left: auto;
        right: 45px;
    }
}

.header-button-item {
    font-size: 30px;
    color: #fff;
    margin-right: 34px;
    position: relative;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

@media (max-width: 767px) {
    .header-button-item {
        font-size: 22px;
        margin-right: 15px;
    }
}

.has-noti > i {
    position: relative;
}

.has-noti > i:after {
    content: '';
    height: 8px;
    width: 8px;
    background: #ff4b5a;
    position: absolute;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    top: 0;
    right: -6px;
}

.search-dropdown {
    -webkit-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    min-width: 340px;
    position: absolute;
    top: 61px;
    right: -125px;
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
    -webkit-transform-origin: center top;
    -moz-transform-origin: center top;
    -ms-transform-origin: center top;
    -o-transform-origin: center top;
    transform-origin: center top;
    -webkit-transition: all 0.4s ease;
    -o-transition: all 0.4s ease;
    -moz-transition: all 0.4s ease;
    transition: all 0.4s ease;
    z-index: 5;
}

.search-dropdown::before {
    content: '';
    display: block;
    width: 19px;
    height: 19px;
    border-bottom: 9px solid #fff;
    border-top: 9px solid transparent;
    border-left: 9px solid transparent;
    border-right: 9px solid transparent;
    position: absolute;
    top: -18px;
    right: 125px;
}

.search-dropdown form {
    height: 63px;
}

.search-dropdown form .au-input {
    padding-left: 53px;
    font-size: 14px;
    border: none;
    color: #666;
}

.search-dropdown .search-dropdown__icon {
    position: absolute;
    top: 0;
    left: 26px;
    font-size: 24px;
    color: #c9c9c9;
    height: 63px;
    line-height: 63px;
}

.setting-menu {
    position: fixed;
    min-width: 300px;
    right: -300px;
    top: 54px;
    background: #fff;
    text-align: left;
    -webkit-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.1);
    height: -webkit-calc(100vh - 75px);
    height: -moz-calc(100vh - 75px);
    height: calc(100vh - 75px);
    -webkit-transition: all .5s ease;
    -o-transition: all .5s ease;
    -moz-transition: all .5s ease;
    transition: all .5s ease;
}

.setting-menu:before {
    content: '';
    display: block;
    width: 19px;
    height: 19px;
    border-bottom: 9px solid #fff;
    border-top: 9px solid transparent;
    border-left: 9px solid transparent;
    border-right: 9px solid transparent;
    position: absolute;
    top: -18px;
    right: 47px;
}

.setting-menu .account-dropdown__body {
    border-bottom: 1px solid #f2f2f2;
}

.setting-menu .account-dropdown__item a {
    color: #555;
}

.setting-menu .account-dropdown__item a:hover {
    color: #fff;
}

.show-sidebar {
    right: 0;
}

.header-desktop3 {
    background: #393939;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 76px;
    position: -webkit-sticky;
    position: sticky;
    top: 0;
    z-index: 999;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
}

.header-desktop3 .section__content {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    left: 0;
    right: 0;
}

@media (max-width: 1315px) and (min-width: 992px) {
    .header-desktop3 .section__content {
        padding: 0 15px;
    }
}

.header-desktop3 .header-button-item {
    color: #ccc;
}

.header3-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    position: relative;
}

.header3-wrap .header__navbar {
    width: 100%;
    position: absolute;
    left: 50%;
    -webkit-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    -o-transform: translateX(-50%);
    transform: translateX(-50%);
    top: -12px;
}

.header__logo {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    position: relative;
    z-index: 3;
}

.header__navbar ul {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -moz-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.header__navbar ul li {
    position: relative;
}

.header__navbar ul li:last-child a {
    border-right: 1px solid rgba(255, 255, 255, 0.102);
}

.header__navbar ul li a {
    display: block;
    font-size: 16px;
    color: #ccc;
    padding: 25px 30px;
    border-left: 1px solid rgba(255, 255, 255, 0.102);
}

.header__navbar ul li a i {
    margin-right: 13px;
}

.header__navbar ul li a:hover {
    color: #4272d7;
}

.header__navbar ul li a:hover .bot-line {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
    opacity: 1;
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
}

@media (max-width: 1570px) and (min-width: 992px) {
    .header__navbar ul li a {
        padding: 25px 15px;
    }
}

@media (max-width: 1315px) and (min-width: 992px) {
    .header__navbar ul li a {
        font-size: 13px;
        padding: 27px 15px;
    }

    .header__navbar ul li a i {
        margin-right: 5px;
    }
}

.header__navbar ul li.active > a {
    color: #4272d7;
}

.header__navbar ul li.active > a .bot-line {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
    opacity: 1;
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
}

.header__navbar ul.header3-sub-list {
    display: block;
}

.header__navbar li.has-sub:hover > .header3-sub-list {
    opacity: 1;
    -webkit-transform: scaleY(1);
    -moz-transform: scaleY(1);
    -ms-transform: scaleY(1);
    -o-transform: scaleY(1);
    transform: scaleY(1);
    -webkit-transition: all .3s ease;
    -o-transition: all .3s ease;
    -moz-transition: all .3s ease;
    transition: all .3s ease;
}

.header__navbar .header3-sub-list {
    position: absolute;
    min-width: 260px;
    background: #fff;
    -webkit-box-shadow: 0px 3px 20px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 3px 20px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 3px 20px 0px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    opacity: 0;
    -webkit-transform: scaleY(0);
    -moz-transform: scaleY(0);
    -ms-transform: scaleY(0);
    -o-transform: scaleY(0);
    transform: scaleY(0);
    -webkit-transform-origin: top center;
    -moz-transform-origin: top center;
    -ms-transform-origin: top center;
    -o-transform-origin: top center;
    transform-origin: top center;
    -webkit-transition: all .3s ease;
    -o-transition: all .3s ease;
    -moz-transition: all .3s ease;
    transition: all .3s ease;
}

.header__navbar .header3-sub-list li a {
    font-size: 15px;
    color: #777777;
    padding: 10px 22px;
    border: none;
    border-bottom: 1px solid #e1e6eb;
}

.header__navbar .header3-sub-list li a:hover {
    color: #4272d7;
    background: #f7f7f7;
}

.header__tool {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.header__tool .notifi-dropdown {
    left: -68px;
    top: 53px;
}

.header__tool .notifi-dropdown::before {
    left: 70px;
}

.header__tool .header-button-item {
    margin-right: 40px;
}

@media (max-width: 1570px) and (min-width: 992px) {
    .header__tool .header-button-item {
        margin-right: 20px;
    }
}

@media (max-width: 1315px) and (min-width: 992px) {
    .header__tool .header-button-item {
        margin-right: 20px;
        font-size: 24px;
    }
}

@media (max-width: 1315px) and (min-width: 992px) {
    .header__tool .account-item > .content {
        display: none;
    }
}

.bot-line {
    position: absolute;
    width: 100%;
    height: 3px;
    background: #4272d7;
    left: 0;
    bottom: 0;
    opacity: 0;
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
    -webkit-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
    -webkit-transform-origin: top center;
    -moz-transform-origin: top center;
    -ms-transform-origin: top center;
    -o-transform-origin: top center;
    transform-origin: top center;
}

.setting-dropdown {
    top: 54px;
    left: -97px;
    border: none;
    min-width: 305px;
}

.setting-dropdown::before {
    left: 99px;
}

.setting-dropdown .account-dropdown__body {
    border-bottom: 1px solid #f2f2f2;
}

.setting-dropdown .account-dropdown__body:last-child {
    border-bottom: none;
}

.setting-dropdown .account-dropdown__item a {
    color: #555;
}

.setting-dropdown .account-dropdown__item a:hover {
    color: #fff;
}

.header-button-item {
    cursor: pointer;
}

.notifi-dropdown--no-bor {
    border: none;
}

.notifi-dropdown .notifi__item {
    cursor: pointer;
}

.account-item--style2 .image {
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
}

.account-item--style2 .content a {
    font-size: 16px;
    color: #ccc;
    font-weight: 500;
}

.account-item--style2 .content a:hover {
    color: #fff;
}

.account-item--style2 .account-dropdown {
    top: 61px;
}

.account-item--style2 .account-dropdown .info .image {
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
}

.header-desktop4 {
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    position: -webkit-sticky;
    position: sticky;
    top: 0;
    z-index: 999;
    background: #fff;
}

@media (max-width: 991px) {
    .header-desktop4 {
        position: static;
    }
}

.header4-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

.header4-wrap .header__logo {
    margin: 11.5px 0;
}

.header4-wrap .header__tool .header-button-item {
    color: #a9b3c9;
}

@media (max-width: 991px) {
    .header4-wrap .header__tool .header-button-item {
        margin-right: 20px;
    }
}

.header4-wrap .header__tool .notifi-dropdown {
    top: 51px;
}

@media (max-width: 991px) {
    .header4-wrap .header__tool .notifi-dropdown {
        left: -220px;
        -webkit-transform-origin: 60% 0%;
        -moz-transform-origin: 60% 0%;
        -ms-transform-origin: 60% 0%;
        -o-transform-origin: 60% 0%;
        transform-origin: 60% 0%;
    }
}

.header4-wrap .header__tool .setting-dropdown {
    border: 1px solid #e5e5e5;
    top: 51px;
}

@media (max-width: 991px) {
    .header4-wrap .header__tool .setting-dropdown {
        left: -240px;
        -webkit-transform-origin: 85% 0%;
        -moz-transform-origin: 85% 0%;
        -ms-transform-origin: 85% 0%;
        -o-transform-origin: 85% 0%;
        transform-origin: 85% 0%;
    }
}

.header4-wrap .header__tool .account-dropdown {
    top: 59px;
}

@media (max-width: 1315px) and (min-width: 992px) {
    .header4-wrap .header__tool .account-item > .content {
        display: block;
    }
}

@media (max-width: 991px) {
    .header4-wrap .header__tool .account-item > .content {
        display: none;
    }
}

.header4-wrap .header__tool .account-item--style2 .content a {
    color: #333;
}

.header4-wrap .header__tool .account-item--style2 .content a:hover {
    color: #222;
}

.navbar-sidebar3 {
    padding-right: 20px;
}

.navbar-sidebar3 .navbar__list li.active > a {
    background: #4272d7;
    color: #fff;
}

.navbar-sidebar3 .navbar__list li.active > a > .arrow > i {
    color: #fff;
}

.navbar-sidebar3 .navbar__list li a {
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    padding: 18px 27px;
    border-bottom: none;
}

.navbar-sidebar3 .navbar__sub-list {
    padding-left: 36px;
    padding-top: 10px;
    padding-bottom: 10px;
}

.navbar-sidebar3 .navbar__sub-list li {
    background: transparent;
}

.navbar-sidebar3 .navbar__sub-list li a {
    padding: 11.5px 27px;
}

.navbar-sidebar3 .has-sub.open > a {
    background: #fff;
    border: 1px solid #e5e5e5;
}

@media (max-width: 1199px) {
    .navbar-sidebar3 {
        padding-right: 0;
        margin-bottom: 30px;
    }
}

/* ----- Overview ----- */
.overview-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

@media (max-width: 767px) {
    .overview-wrap {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }

    .overview-wrap .button {
        -webkit-box-ordinal-group: 2;
        -webkit-order: 1;
        -moz-box-ordinal-group: 2;
        -ms-flex-order: 1;
        order: 1;
    }

    .overview-wrap h2 {
        -webkit-box-ordinal-group: 3;
        -webkit-order: 2;
        -moz-box-ordinal-group: 3;
        -ms-flex-order: 2;
        order: 2;
    }
}

.overview-item {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    padding: 30px;
    padding-bottom: 0;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    margin-bottom: 40px;
}

@media (min-width: 992px) and (max-width: 1519px) {
    .overview-item {
        padding-left: 15px;
        padding-right: 15px;
    }
}

.overview-item--c1 {
    background-image: -moz-linear-gradient(90deg, #3f5efb 0%, #fc466b 100%);
    background-image: -webkit-linear-gradient(90deg, #3f5efb 0%, #fc466b 100%);
    background-image: -ms-linear-gradient(90deg, #3f5efb 0%, #fc466b 100%);
}

.overview-item--c2 {
    background-image: -moz-linear-gradient(90deg, #11998e 0%, #38ef7d 100%);
    background-image: -webkit-linear-gradient(90deg, #11998e 0%, #38ef7d 100%);
    background-image: -ms-linear-gradient(90deg, #11998e 0%, #38ef7d 100%);
}

.overview-item--c3 {
    background-image: -moz-linear-gradient(90deg, #ee0979 0%, #ff6a00 100%);
    background-image: -webkit-linear-gradient(90deg, #ee0979 0%, #ff6a00 100%);
    background-image: -ms-linear-gradient(90deg, #ee0979 0%, #ff6a00 100%);
}

.overview-item--c4 {
    background-image: -moz-linear-gradient(90deg, #45b649 0%, #dce35b 100%);
    background-image: -webkit-linear-gradient(90deg, #45b649 0%, #dce35b 100%);
    background-image: -ms-linear-gradient(90deg, #45b649 0%, #dce35b 100%);
}

.overview-box .icon {
    display: inline-block;
    vertical-align: top;
    margin-right: 15px;
}

.overview-box .icon i {
    font-size: 60px;
    color: #fff;
}

@media (min-width: 992px) and (max-width: 1199px) {
    .overview-box .icon {
        margin-right: 3px;
    }

    .overview-box .icon i {
        font-size: 30px;
    }
}

@media (max-width: 991px) {
    .overview-box .icon {
        font-size: 46px;
    }
}

.overview-box .text {
    font-weight: 300;
    display: inline-block;
}

.overview-box .text h2 {
    font-weight: 300;
    color: #fff;
    font-size: 36px;
    line-height: 1;
    margin-bottom: 5px;
}

.overview-box .text span {
    font-size: 18px;
    color: rgba(255, 255, 255, 0.6);
}

@media (min-width: 992px) and (max-width: 1199px) {
    .overview-box .text {
        display: inline-block;
    }

    .overview-box .text h2 {
        font-size: 20px;
        margin-bottom: 0;
    }

    .overview-box .text span {
        font-size: 14px;
    }
}

@media (max-width: 991px) {
    .overview-box .text h2 {
        font-size: 26px;
    }

    .overview-box .text span {
        font-size: 15px;
    }
}

.overview-chart {
    height: 115px;
    position: relative;
}

.overview-chart canvas {
    width: 100%;
}

/* ----- Card ----- */
.au-card {
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    padding: 40px;
    padding-right: 35px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    background: #fff;
    overflow: hidden;
}

.au-card--border {
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.au-card--border .au-card-title {
    -webkit-border-top-left-radius: 3px;
    -moz-border-radius-topleft: 3px;
    border-top-left-radius: 3px;
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
}

.au-card--border .au-card-title .bg-overlay {
    -webkit-border-top-left-radius: 3px;
    -moz-border-radius-topleft: 3px;
    border-top-left-radius: 3px;
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
}

.au-card-bordered {
    border: 1px solid #e5e5e5;
    background: #fff;
    padding: 40px;
    padding-top: 42px;
    padding-right: 55px;
    margin-bottom: 40px;
}

.au-card--bg-blue {
    background-image: -moz-linear-gradient(90deg, #396afc 0%, #2948ff 100%);
    background-image: -webkit-linear-gradient(90deg, #396afc 0%, #2948ff 100%);
    background-image: -ms-linear-gradient(90deg, #396afc 0%, #2948ff 100%);
}

.au-card-top-countries {
    padding: 40px;
    padding-top: 25px;
    padding-bottom: 29px;
}

.au-card--no-shadow {
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
}

.au-card--no-pad {
    padding: 0;
}

.au-card-title {
    position: relative;
    padding: 40px;
    padding-top: 45px;
    padding-bottom: 47px;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    -webkit-border-top-left-radius: 10px;
    -moz-border-radius-topleft: 10px;
    border-top-left-radius: 10px;
    -webkit-border-top-right-radius: 10px;
    -moz-border-radius-topright: 10px;
    border-top-right-radius: 10px;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
}

.au-card-title .bg-overlay {
    -webkit-border-top-left-radius: 10px;
    -moz-border-radius-topleft: 10px;
    border-top-left-radius: 10px;
    -webkit-border-top-right-radius: 10px;
    -moz-border-radius-topright: 10px;
    border-top-right-radius: 10px;
}

.au-card-title h3 {
    position: relative;
    z-index: 2;
    color: #fff;
    font-weight: 400;
}

.au-card-title h3 i {
    color: #fff;
    font-size: 24px;
    margin-right: 12px;
}

.au-task {
    color: #808080;
}

.au-task--border .au-task__title {
    border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
}

.au-task--border .au-task-list {
    border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
}

.au-task--border .au-task__footer {
    border: 1px solid #e5e5e5;
    border-top: none;
}

.au-task__title {
    padding: 27px 15px;
    padding-left: 40px;
    padding-bottom: 22px;
    border-bottom: 1px solid #f2f2f2;
    font-size: 14px;
}

.au-task-list {
    height: 424px;
    position: relative;
    overflow-y: auto;
}

.au-task__item {
    border-bottom: 1px solid #f2f2f2;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.au-task__item:hover {
    background: #f7f7f7;
}

.au-task__item-inner {
    padding: 26px 15px;
    padding-left: 40px;
}

.au-task__item-inner .task {
    font-size: 16px;
    margin-bottom: 6px;
}

.au-task__item-inner .task a {
    font-size: 16px;
    color: #808080;
    font-weight: 400;
}

.au-task__item-inner .task a:hover {
    color: #333;
}

.au-task__item-inner .time {
    font-size: 14px;
    color: #555;
    text-transform: uppercase;
    font-weight: 600;
}

.au-task__item--danger .au-task__item-inner {
    border-left: 3px solid #fa4251;
}

.au-task__item--warning .au-task__item-inner {
    border-left: 3px solid #ffa037;
}

.au-task__item--primary .au-task__item-inner {
    border-left: 3px solid #4272d7;
}

.au-task__item--success .au-task__item-inner {
    border-left: 3px solid #00ad5f;
}

.au-task__footer {
    text-align: center;
    padding-top: 35px;
    padding-bottom: 45px;
}

.au-message__footer {
    text-align: center;
    padding-top: 35px;
    padding-bottom: 45px;
}

.au-message p {
    color: #808080;
}

.au-message-list {
    height: 424px;
    position: relative;
    overflow-y: auto;
}

.au-message__noti {
    padding: 25px 15px;
    padding-left: 40px;
    padding-bottom: 22px;
    border-bottom: 1px solid #f2f2f2;
}

.au-message__noti p {
    font-size: 14px;
}

.au-message__noti p span {
    font-weight: 600;
}

.au-message__item {
    border-bottom: 1px solid #f2f2f2;
    cursor: pointer;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.au-message__item:hover {
    background: #f7f7f7;
}

.au-message__item-inner {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    padding: 19px 40px;
    padding-right: 50px;
    padding-bottom: 25px;
}

@media (min-width: 992px) and (max-width: 1199px) {
    .au-message__item-inner {
        padding: 15px;
        padding-right: 10px;
        padding-bottom: 15px;
    }
}

@media (max-width: 767px) {
    .au-message__item-inner {
        padding: 15px;
        padding-right: 10px;
        padding-bottom: 15px;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-align: start;
        -webkit-align-items: flex-start;
        -moz-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start;
    }
}

.au-message__item-time {
    margin-top: 26px;
}

.au-message__item-time span {
    font-size: 14px;
    color: #808080;
}

.au-message__item-text .text {
    margin-left: 60px;
    padding: 7px 0;
    padding-left: 23px;
}

.au-message__item-text .text .name {
    font-size: 16px;
    font-weight: 600;
    color: #666;
    margin-bottom: 2px;
}

.au-message__item-text .text p {
    color: #808080;
}

@media (max-width: 767px) {
    .au-message__item-text .text {
        margin: 0;
        padding: 0;
    }
}

.avatar-wrap {
    position: relative;
    float: left;
}

@media (max-width: 767px) {
    .avatar-wrap {
        float: none;
        display: inline-block;
        margin-bottom: 20px;
    }
}

.online .avatar::after {
    background: #63c76a;
}

.avatar {
    height: 60px;
    width: 60px;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    overflow: hidden;
}

.avatar::after {
    content: '';
    display: block;
    height: 15px;
    width: 15px;
    background: #ccc;
    border: 2px solid #fff;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    position: absolute;
    bottom: 0;
    right: 0;
}

.avatar--small {
    height: 50px;
    width: 50px;
}

.avatar--tiny {
    height: 32px;
    width: 32px;
}

.avatar--tiny::after {
    display: none;
}

.au-message__item.unread .au-message__item-inner {
    border-left: 3px solid #999;
}

.au-message__item.unread .au-message__item-text .text .name {
    color: #333;
}

.au-message__item.unread .au-message__item-text .text p {
    color: #333;
}

.au-chat--border .au-chat__title {
    border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
}

.au-chat--border .au-chat__content {
    border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
}

.au-chat--border .au-chat-textfield {
    border: 1px solid #e5e5e5;
    border-top: none;
}

.au-chat__title {
    border-bottom: 1px solid #f2f2f2;
}

.au-chat-info {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    padding: 12px 40px;
}

.au-chat-info .avatar-wrap {
    float: none;
    display: inline-block;
    margin-bottom: 0;
}

.au-chat-info .nick {
    margin-left: 15px;
}

.au-chat-info .nick a {
    font-weight: 600;
    font-size: 16px;
    color: #333;
}

.au-chat-info .nick a:hover {
    color: #666;
}

.au-chat__content {
    height: 400px;
    overflow: auto;
    padding: 30px 40px;
    padding-bottom: 0;
    position: relative;
}

.au-chat__content2 .recei-mess {
    max-width: 240px;
    -webkit-border-top-left-radius: 3px;
    -moz-border-radius-topleft: 3px;
    border-top-left-radius: 3px;
    -webkit-border-bottom-left-radius: 3px;
    -moz-border-radius-bottomleft: 3px;
    border-bottom-left-radius: 3px;
    -webkit-border-top-right-radius: 15px;
    -moz-border-radius-topright: 15px;
    border-top-right-radius: 15px;
    -webkit-border-bottom-right-radius: 15px;
    -moz-border-radius-bottomright: 15px;
    border-bottom-right-radius: 15px;
}

.au-chat__content2 .send-mess {
    max-width: 240px;
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
    -webkit-border-bottom-right-radius: 3px;
    -moz-border-radius-bottomright: 3px;
    border-bottom-right-radius: 3px;
    -webkit-border-top-left-radius: 15px;
    -moz-border-radius-topleft: 15px;
    border-top-left-radius: 15px;
    -webkit-border-bottom-left-radius: 15px;
    -moz-border-radius-bottomleft: 15px;
    border-bottom-left-radius: 15px;
}

.mess-time {
    font-size: 14px;
    color: #999;
}

.recei-mess-wrap {
    text-align: center;
}

.recei-mess {
    background: #f2f2f2;
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
    padding: 12px 25px;
    max-width: 390px;
    margin-bottom: 2px;
    text-align: left;
}

.recei-mess__inner {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    margin-top: 6px;
}

.recei-mess__inner .avatar--tiny {
    -webkit-align-self: flex-end;
    -ms-flex-item-align: end;
    align-self: flex-end;
    justify-self: flex-start;
    margin-right: 10px;
}

.recei-mess-list {
    width: -webkit-calc(100% - 42px);
    width: -moz-calc(100% - 42px);
    width: calc(100% - 42px);
}

.recei-mess-list .recei-mess:last-child {
    margin-bottom: 0;
}

.send-mess-wrap {
    text-align: center;
    margin-top: 20px;
}

.send-mess__inner {
    margin-top: 6px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
    -webkit-justify-content: flex-end;
    -moz-box-pack: end;
    -ms-flex-pack: end;
    justify-content: flex-end;
}

.send-mess {
    background: #4272d7;
    color: #fff;
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
    padding: 12px 25px;
    max-width: 390px;
    margin-bottom: 2px;
    text-align: left;
}

.au-chat-textfield {
    padding: 40px;
    padding-top: 32px;
    padding-bottom: 50px;
}

.au-inbox-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    width: 200%;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.au-inbox-wrap.show-chat-box {
    -webkit-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    -o-transform: translateX(-50%);
    transform: translateX(-50%);
}

.au-message {
    width: 50%;
}

.au-chat {
    width: 50%;
}

.task-progress {
    border: 1px solid  #e5e5e5;
    background: #fff;
    padding: 40px;
    padding-top: 42px;
    padding-right: 55px;
    padding-bottom: 74px;
    margin-bottom: 40px;
}

.task-progress .title-3 {
    margin-bottom: 32px;
}

.task-progress .au-progress {
    padding: 11px 0;
}

.recent-report2 {
    border: 1px solid #e5e5e5;
    background: #fff;
    padding: 40px;
    padding-top: 42px;
    padding-right: 55px;
    padding-bottom: 51px;
    margin-bottom: 40px;
}

.recent-report2 .recent-rep2-chart {
    height: 230px;
}

.recent-report2 .chart-info {
    margin-bottom: 45px;
}

@media (min-width: 992px) and (max-width: 1519px) {
    .recent-report2 .chart-info {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }
}

@media (max-width: 991px) {
    .recent-report2 .chart-info {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }
}

.recent-report2 .chart-info__left {
    -webkit-align-self: flex-end;
    -ms-flex-item-align: end;
    align-self: flex-end;
    margin-bottom: -5px;
}

@media (min-width: 992px) and (max-width: 1519px) {
    .recent-report2 .chart-info__left {
        -webkit-align-self: auto;
        -ms-flex-item-align: auto;
        align-self: auto;
        margin-bottom: 30px;
        margin-top: 20px;
    }
}

@media (max-width: 991px) {
    .recent-report2 .chart-info__left {
        -webkit-align-self: auto;
        -ms-flex-item-align: auto;
        align-self: auto;
        margin-bottom: 30px;
        margin-top: 20px;
    }
}

.user-data {
    border: 1px solid #e5e5e5;
    background: #fff;
    padding-top: 44px;
}

.user-data .title-3 {
    padding-left: 40px;
    padding-right: 55px;
}

.user-data .filters {
    padding-left: 40px;
    padding-right: 55px;
}

.user-data__footer {
    padding: 29px 0;
    text-align: center;
}

.map-data {
    border: 1px solid #e5e5e5;
    background: #fff;
    padding: 40px;
    padding-top: 44px;
    padding-right: 60px;
}

.recent-report3, .chart-percent-3 {
    background: #fff;
    border: 1px solid #e5e5e5;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    padding-top: 45px;
    padding-left: 40px;
    padding-right: 50px;
    padding-bottom: 50px;
}

.recent-report3 .title-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    margin-bottom: 27px;
}

.recent-report3 .title-wrap .chart-info-wrap {
    margin-top: 3px;
}

.recent-report3 .title-wrap .chart-note {
    font-size: 14px;
    margin-right: 30px;
}

.chart-percent-3 {
    padding-bottom: 60px;
}

.chart-percent-3 .chart-note {
    display: block;
    font-size: 14px;
}

/* ----- Charts ----- */
#chartjs-tooltip {
    opacity: 1;
    position: absolute;
    background: rgba(0, 0, 0, 0.7);
    color: white;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-transition: all .1s ease;
    -o-transition: all .1s ease;
    -moz-transition: all .1s ease;
    transition: all .1s ease;
    pointer-events: none;
    -webkit-transform: translate(-50%, 0);
    -moz-transform: translate(-50%, 0);
    -ms-transform: translate(-50%, 0);
    -o-transform: translate(-50%, 0);
    transform: translate(-50%, 0);
}

.recent-report {
    padding-bottom: 65px;
    margin-bottom: 60px;
}

.chart-info {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: baseline;
    -webkit-align-items: baseline;
    -moz-box-align: baseline;
    -ms-flex-align: baseline;
    align-items: baseline;
    margin-bottom: 30px;
    font-size: 14px;
}

.chart-note {
    text-transform: capitalize;
    display: inline-block;
    margin-right: 12px;
    font-size: 14px;
}

.chart-note .dot {
    margin-right: 7px;
}

.chart-statis {
    display: inline-block;
    margin-right: 35px;
}

.chart-statis i {
    font-size: 18px;
    margin-right: 5px;
}

.chart-statis .label {
    display: block;
    text-transform: capitalize;
    line-height: 1.2;
}

.chart-statis .index {
    font-size: 18px;
    color: #333;
}

.recent-report__chart canvas {
    height: 250px;
    width: 100%;
}

.chart-percent-card {
    margin-bottom: 60px;
    padding-top: 47px;
}

.chart-percent-card .chart-note {
    margin-bottom: 8px;
}

.incre i {
    color: #63c76a;
}

.decre i {
    color: #ff4b5a;
}

.dot {
    display: inline-block;
    width: 10px;
    height: 10px;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
}

.dot--blue {
    background: #00b5e9;
}

.dot--green {
    background: #00ad5f;
}

.dot--red {
    background: #fa4251;
}

.chart-note-wrap {
    margin-top: 20px;
}

.percent-chart {
    padding-right: 65px;
    padding-bottom: 40px;
    padding-top: 27px;
}

@media (min-width: 992px) and (max-width: 1519px) {
    .percent-chart {
        padding-right: 0;
    }
}

.statistic-chart {
    padding-top: 22px;
}

.statistic-chart-1, .top-campaign, .chart-percent-2 {
    background: #fff;
    padding: 0 40px;
    padding-top: 45px;
    padding-bottom: 50px;
    -webkit-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -moz-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}

.statistic-chart-1 {
    padding-bottom: 42px;
    margin-bottom: 40px;
}

.statistic-chart-1-note {
    margin-top: 18px;
    padding-left: 8px;
}

.statistic-chart-1-note span {
    font-size: 14px;
    color: #808080;
}

.statistic-chart-1-note .big {
    font-size: 18px;
    color: #393939;
}

.top-campaign {
    padding-bottom: 97px;
    margin-bottom: 40px;
}

.chart-percent-2 {
    margin-bottom: 40px;
    padding-bottom: 70px;
}

.chart-percent-2 .chart-info {
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -moz-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    margin-bottom: 0;
    margin-top: 30px;
}

.chart-percent-2 .chart-info .chart-note {
    margin-right: 34px;
}

.chart-percent-2 .chart-info .chart-note:last-child {
    margin-right: 0;
}

/* ----- Table ----- */
.table {
    margin: 0;
}

.table-responsive.table--no-card {
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
    box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.1);
}

.table-earning thead th {
    background: #333;
    font-size: 16px;
    color: #fff;
    vertical-align: middle;
    font-weight: 400;
    text-transform: capitalize;
    line-height: 1;
    padding: 22px 40px;
    white-space: nowrap;
}

.table-earning thead th.text-right {
    padding-left: 15px;
    padding-right: 65px;
}

.table-earning tbody td {
    color: #808080;
    padding: 12px 40px;
    white-space: nowrap;
}

.table-earning tbody td.text-right {
    padding-left: 15px;
    padding-right: 65px;
}

.table-earning tbody tr:hover td {
    color: #555;
    cursor: pointer;
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fff;
}

.table-striped tbody tr:nth-of-type(even) {
    background-color: #f5f5f5;
}

.table-top-countries tbody td {
    white-space: nowrap;
    font-size: 14px;
    color: #fff;
    padding: 14px 5px;
    border-top: none;
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.table-top-countries tbody tr:last-child td {
    border-bottom: none;
}

.table-wrap {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

@media (min-width: 992px) and (max-width: 1519px) {
    .table-wrap {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }
}

@media (max-width: 991px) {
    .table-wrap {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }
}

.table-style1 {
    max-width: 280px;
    margin-bottom: 30px;
}

.table-style1 .table tr:last-child td {
    border-bottom: none;
}

.table-style1 .table tr td:last-child {
    padding-right: 30px;
}

.table-style1 .table td {
    font-size: 14px;
    color: #808080;
    border-top: none;
    border-bottom: 1px solid #f2f2f2;
    padding: 12px 6px;
    vertical-align: middle;
}

.table-data {
    height: 472px;
    overflow-y: auto;
}

.table-data thead tr td {
    font-size: 12px;
    font-weight: 600;
    color: #808080;
    text-transform: uppercase;
}

.table-data .table td {
    border-top: none;
    border-bottom: 1px solid #f2f2f2;
    padding-top: 23px;
    padding-bottom: 33px;
    padding-left: 40px;
    padding-right: 10px;
}

.table-data .table tr td:last-child {
    padding-right: 24px;
}

.table-data tbody tr:hover td .more {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
}

.table-data__info h6 {
    font-size: 14px;
    color: #808080;
    text-transform: capitalize;
    font-weight: 400;
}

.table-data__info span a {
    font-size: 12px;
    color: #999;
}

.table-data__info span a:hover {
    color: #666;
}

.more {
    display: inline-block;
    cursor: pointer;
    width: 30px;
    height: 30px;
    background: #e5e5e5;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    position: relative;
    -webkit-transition: all 0.4s ease;
    -o-transition: all 0.4s ease;
    -moz-transition: all 0.4s ease;
    transition: all 0.4s ease;
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
}

.more i {
    font-size: 20px;
    color: #808080;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.role {
    display: inline-block;
    line-height: 30px;
    font-size: 14px;
    color: #fff;
    padding: 0 15px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    text-transform: capitalize;
}

.role.admin {
    background: #fa4251;
}

.role.user {
    background: #00b5e9;
}

.role.member {
    background: #57b846;
}

.table-top-campaign.table td {
    border-top: none;
    border-bottom: 1px solid #e5e5e5;
    font-size: 14px;
    padding: 12px 6px;
}

.table-top-campaign.table tr td:first-child {
    color: #808080;
}

.table-top-campaign.table tr td:last-child {
    color: #4272d7;
    text-align: right;
}

.table-top-campaign.table tr:last-child td {
    border-bottom: none;
}

@media (min-width: 1200px) {
    .table-responsive-data2 {
        overflow: visible;
    }
}

.table-data2 {
    border-collapse: collapse;
    overflow: visible;
}

.table-data2.table thead th {
    font-size: 12px;
    color: #555;
    text-transform: uppercase;
    border: none;
    font-weight: 600;
    vertical-align: top;
    padding: 15px 40px;
    padding-right: 10px;
}

.table-data2.table thead th:first-child {
    padding-right: 0;
}

.table-data2.table tbody {
    background: #fff;
}

.table-data2.table tbody tr td:first-child {
    -webkit-border-top-left-radius: 3px;
    -moz-border-radius-topleft: 3px;
    border-top-left-radius: 3px;
    -webkit-border-bottom-left-radius: 3px;
    -moz-border-radius-bottomleft: 3px;
    border-bottom-left-radius: 3px;
    vertical-align: top;
}

.table-data2.table tbody tr td:first-child .au-checkbox {
    margin-top: 5px;
}

@media (max-width: 1199px) {
    .table-data2.table tbody tr td:first-child {
        vertical-align: middle;
    }

    .table-data2.table tbody tr td:first-child .au-checkbox {
        margin-top: 0;
    }
}

.table-data2.table tbody tr td:last-child {
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
    -webkit-border-bottom-right-radius: 3px;
    -moz-border-radius-bottomright: 3px;
    border-bottom-right-radius: 3px;
    padding-right: 35px;
}

.table-data2.table tbody td {
    font-size: 14px;
    color: #808080;
    vertical-align: middle;
    padding: 25px 40px;
    padding-right: 10px;
    border: none;
}

.table-data2.table tbody td.desc {
    color: #4272d7;
}

.table-data2 .spacer {
    height: 5px;
    background: transparent;
}

.tr-shadow {
    -webkit-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -moz-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
}

.table-data__tool {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    margin-bottom: 28px;
}

.table-data__tool .table-data__tool-left > div {
    margin-right: 12px;
}

.table-data__tool .table-data__tool-right > button {
    margin-right: 12px;
}

@media (max-width: 991px) {
    .table-data__tool {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }

    .table-data__tool .table-data__tool-right {
        margin-top: 10px;
    }

    .table-data__tool .table-data__tool-right > button {
        margin-right: 0;
        margin-bottom: 10px;
    }
}

.table-data-feature {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
    -webkit-justify-content: flex-end;
    -moz-box-pack: end;
    -ms-flex-pack: end;
    justify-content: flex-end;
}

.table-data-feature .item {
    display: block;
    height: 30px;
    width: 30px;
    position: relative;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    background: #e5e5e5;
    margin-right: 5px;
}

.table-data-feature .item:last-child {
    margin-right: 0;
}

.table-data-feature .item i {
    font-size: 20px;
    color: #808080;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.block-email {
    font-size: 14px;
    color: #808080;
    display: inline-block;
    background: #f2f2f2;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    line-height: 30px;
    padding: 0 14px;
}

.status--process {
    color: #00ad5f;
}

.status--denied {
    color: #fa4251;
}

.table-data3 thead {
    background: #333;
}

.table-data3 thead tr th {
    font-size: 16px;
    color: #fff;
    font-weight: 400;
    text-transform: capitalize;
    padding: 18px 40px;
    padding-right: 10px;
}

.table-data3 thead tr th:first-child {
    -webkit-border-top-left-radius: 3px;
    -moz-border-radius-topleft: 3px;
    border-top-left-radius: 3px;
}

.table-data3 thead tr th:last-child {
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
}

.table-data3 thead tr th:last-child {
    text-align: right;
    padding-right: 50px;
}

.table-data3 tbody tr td:last-child {
    text-align: right;
    padding-right: 50px;
}

.table-data3 tbody tr {
    border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
}

.table-data3 tbody tr:last-child td:first-child {
    -webkit-border-bottom-left-radius: 8px;
    -moz-border-radius-bottomleft: 8px;
    border-bottom-left-radius: 8px;
}

.table-data3 tbody tr:last-child td:last-child {
    -webkit-border-bottom-right-radius: 8px;
    -moz-border-radius-bottomright: 8px;
    border-bottom-right-radius: 8px;
}

.table-data3 tbody td {
    border-bottom: 1px solid #f5f5f5;
    background: #fff;
    font-size: 14px;
    color: #808080;
    padding: 12px 40px;
    padding-right: 10px;
}

.table-data3 tbody td.process {
    color: #00ad5f;
}

.table-data3 tbody td.denied {
    color: #fa4251;
}

/* ----- Footer ----- */
.copyright {
    text-align: center;
    padding: 60px 0;
    padding-top: 20px;
}

.copyright p {
    font-size: 14px;
    color: #666;
    line-height: -webkit-calc(24/14);
    line-height: -moz-calc(24/14);
    line-height: calc(24/14);
}

/* ----- Breadcrumb ----- */
.au-breadcrumb {
    height: 75px;
    background: #fff;
    position: relative;
    z-index: 0;
}

@media (max-width: 991px) {
    .au-breadcrumb {
        height: 130px;
    }

    .au-breadcrumb.m-t-75 {
        margin-top: 0;
    }
}

.au-breadcrumb .section__content {
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
}

.au-breadcrumb-content {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -moz-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

@media (max-width: 991px) {
    .au-breadcrumb-content {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -moz-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }

    .au-breadcrumb-content .au-breadcrumb-left {
        -webkit-box-ordinal-group: 3;
        -webkit-order: 2;
        -moz-box-ordinal-group: 3;
        -ms-flex-order: 2;
        order: 2;
    }

    .au-breadcrumb-content > button {
        margin-bottom: 15px;
    }
}

.au-breadcrumb-span {
    font-size: 14px;
    color: #999;
    display: inline-block;
}

.au-breadcrumb__list {
    display: inline-block;
    margin-left: 5px;
}

.au-breadcrumb__list li {
    font-size: 14px;
    color: #999;
}

.au-breadcrumb__list .list-inline-item:not(:last-child) {
    margin-right: 5px;
}

.au-breadcrumb__list .active a {
    color: #999;
}

.au-breadcrumb__list .active a:hover {
    color: #333;
}

.au-breadcrumb2 {
    padding-top: 48px;
    padding-bottom: 50px;
}

.au-breadcrumb2 .au-breadcrumb-span {
    color: #808080;
}
.overview-chart{height: 300px !important;}

.au-breadcrumb2 .au-breadcrumb__list .active a {
    color: #808080;
}

.au-breadcrumb2 .au-breadcrumb__list .active a:hover {
    color: #666;
}

.au-breadcrumb2 .au-breadcrumb__list li {
    color: #808080;
}

@media (max-width: 991px) {
    .au-breadcrumb2 .au-breadcrumb-left {
        margin-top: 20px;
    }
}

.au-breadcrumb3 .au-breadcrumb__list .active a:hover {
    color: #ccc;
}

.line-seprate {
    height: 1px;
    width: 100%;
    background: #e5e5e5;
    border: none;
    margin-top: 20px;
    margin-bottom: 0;
}

.welcome2 {
    background: #393939;
}

.welcome2-inner {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}

.welcome2-inner .welcome2-greeting {
    width: -webkit-calc(100% - 500px);
    width: -moz-calc(100% - 500px);
    width: calc(100% - 500px);
}

.welcome2-inner form {
    height: 45px;
}

@media (max-width: 991px) {
    .welcome2-inner {
        -webkit-box-orient: vertical;
        -webkit-box-direction: reverse;
        -webkit-flex-direction: column-reverse;
        -moz-box-orient: vertical;
        -moz-box-direction: reverse;
        -ms-flex-direction: column-reverse;
        flex-direction: column-reverse;
    }

    .welcome2-inner.m-t-60 {
        margin-top: 0;
    }

    .welcome2-inner .welcome2-greeting {
        width: 100%;
    }

    .welcome2-inner form {
        margin-bottom: 30px;
        margin-top: 30px;
        -webkit-align-self: flex-start;
        -ms-flex-item-align: start;
        align-self: flex-start;
    }
}

.welcome2-greeting h1 {
    margin-bottom: 12px;
}

.welcome2-greeting p {
    font-size: 14px;
    color: #808080;
}

/* ----- Statistic ----- */
.statistic {
    padding-top: 57px;
}

.statistic__item {
    border: 1px solid #e5e5e5;
    background: #fff;
    padding: 20px 30px;
    position: relative;
    min-height: 180px;
    overflow: hidden;
    margin-bottom: 40px;
}

@media (min-width: 992px) and (max-width: 1199px) {
    .statistic__item {
        padding: 20px 10px;
    }
}

.statistic__item h2 {
    font-size: 36px;
    font-weight: 300;
    color: #4272d7;
}

@media (min-width: 992px) and (max-width: 1199px) {
    .statistic__item h2 {
        font-size: 22px;
    }
}

.statistic__item .desc {
    font-size: 18px;
    text-transform: uppercase;
    font-weight: 300;
    color: rgba(128, 128, 128, 0.6);
}

@media (min-width: 992px) and (max-width: 1199px) {
    .statistic__item .desc {
        font-size: 13px;
    }
}

.statistic__item .icon {
    display: inline-block;
    position: absolute;
    bottom: -50px;
    right: -7px;
}

.statistic__item .icon i {
    font-size: 180px;
    color: #808080;
    opacity: .2;
    line-height: 1;
    vertical-align: baseline;
}

.statistic__item--green {
    background: #00b26f;
}

.statistic__item--orange {
    background: #ff8300;
}

.statistic__item--blue {
    background: #00b5e9;
}

.statistic__item--red {
    background: #fa4251;
}

/* ----- Statistic 2 ----- */
.statistic2 {
    padding-top: 50px;
}

.statistic2 .statistic__item {
    border: none;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    -moz-box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
    box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.03);
}

.statistic2 .statistic__item h2 {
    color: #fff;
}

.statistic2 .statistic__item .desc {
    color: rgba(255, 255, 255, 0.6);
}

/* ----- Progress ----- */
.au-progress .au-progress__bar {
    height: 10px;
    position: relative;
    background: #d9d9d9;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
}

.au-progress .au-progress__bar .au-progress__inner {
    position: absolute;
    width: 0;
    top: 0;
    left: 0;
    bottom: 0;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-transition: width 1s ease-in-out;
    -o-transition: width 1s ease-in-out;
    -moz-transition: width 1s ease-in-out;
    transition: width 1s ease-in-out;
    background-color: #4272d7;
    overflow: visible;
}

.au-progress__title {
    font-size: 14px;
    color: #808080;
    display: inline-block;
    margin-bottom: 9px;
}

.au-progress__value {
    font-size: 14px;
    color: #808080;
    position: absolute;
    top: -28px;
    right: -15px;
}

/* ----- Alert ----- */
.au-alert {
    border: 1px solid #fff;
    background: #fff;
    border-left: 3px solid #fff;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    margin: 0;
    -webkit-border-top-right-radius: 3px;
    -moz-border-radius-topright: 3px;
    border-top-right-radius: 3px;
    -webkit-border-bottom-right-radius: 3px;
    -moz-border-radius-bottomright: 3px;
    border-bottom-right-radius: 3px;
    padding: 0;
    padding: 15px 30px;
}

.au-alert.alert-dismissible .close {
    font-size: 16px;
    color: black;
    opacity: 0.2;
    padding: 0 23px;
    top: 0;
    bottom: 0;
}

.au-alert > i {
    font-size: 30px;
    color: #00ad5f;
    vertical-align: middle;
    margin-right: 10px;
}

.au-alert .content {
    font-size: 16px;
    color: #808080;
}

.au-alert-success {
    background: #e5f6eb;
    border-color: #d9f1e3;
    border-left-color: #00ad5f;
}

.au-alert--70per {
    width: 70.5%;
    margin: 0 auto;
}

@media (max-width: 991px) {
    .au-alert--70per {
        width: 95%;
    }
}

/* Switch */
.switch.switch-default {
    position: relative;
    display: inline-block;
    vertical-align: top;
    width: 40px;
    height: 24px;
    background-color: transparent;
    cursor: pointer;
}

.switch.switch-default .switch-input {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
}

.switch.switch-default .switch-label {
    position: relative;
    display: block;
    height: inherit;
    font-size: 10px;
    font-weight: 600;
    text-transform: uppercase;
    background-color: #fff;
    border: 1px solid #f2f2f2;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    -webkit-transition: opacity background .15s ease-out;
    -o-transition: opacity background .15s ease-out;
    -moz-transition: opacity background .15s ease-out;
    transition: opacity background .15s ease-out;
}

.switch.switch-default .switch-input:checked ~ .switch-label::before {
    opacity: 0;
}

.switch.switch-default .switch-input:checked ~ .switch-label::after {
    opacity: 1;
}

.switch.switch-default .switch-handle {
    position: absolute;
    top: 2px;
    left: 2px;
    width: 20px;
    height: 20px;
    background: #fff;
    border: 1px solid #f2f2f2;
    -webkit-border-radius: 1px;
    -moz-border-radius: 1px;
    border-radius: 1px;
    -webkit-transition: left .15s ease-out;
    -o-transition: left .15s ease-out;
    -moz-transition: left .15s ease-out;
    transition: left .15s ease-out;
}

.switch.switch-default .switch-input:checked ~ .switch-handle {
    left: 18px;
}

.switch.switch-default.switch-lg {
    width: 48px;
    height: 28px;
}

.switch.switch-default.switch-lg .switch-label {
    font-size: 12px;
}

.switch.switch-default.switch-lg .switch-handle {
    width: 24px;
    height: 24px;
}

.switch.switch-default.switch-lg .switch-input:checked ~ .switch-handle {
    left: 22px;
}

.switch.switch-default.switch-sm {
    width: 32px;
    height: 20px;
}

.switch.switch-default.switch-sm .switch-label {
    font-size: 8px;
}

.switch.switch-default.switch-sm .switch-handle {
    width: 16px;
    height: 16px;
}

.switch.switch-default.switch-sm .switch-input:checked ~ .switch-handle {
    left: 14px;
}

.switch.switch-default.switch-xs {
    width: 24px;
    height: 16px;
}
.au-checkbox{
margin-right: 16px;
}
.table-data thead tr td {
   
 
    color: #808080;
    /* text-transform: uppercase; */
    font-size: 16px;
    font-weight: bold;
}
.table-data {
    height: 700px;
    overflow-y: auto;
}
.page-wrapper {
    
    padding-bottom: 0px !important;
}
.selected-default{
height: 38px ;
line-height: 38px;
padding-top: 0.375rem;
padding-right: 0.75rem;
padding-bottom: 0.375rem;
padding-left: 0.75rem;
border: 1px solid #ced4da;
}

</style>

	<script src="<c:url value="/assets/admin/vendor/jquery-3.2.1.min.js" />"></script>

	<script
		src="<c:url value="/assets/admin/vendor/bootstrap-4.1/popper.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/bootstrap-4.1/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/assets/admin/vendor/slick/slick.min.js"/>">
		
	</script>
	<script src="<c:url value="/assets/admin/vendor/wow/wow.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/animsition/animsition.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"/>">
		
	</script>
	<script
		src="<c:url value="/assets/admin/vendor/counter-up/jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/counter-up/jquery.counterup.min.js"/>">
		
	</script>
	<script
		src="<c:url value="/assets/admin/vendor/circle-progress/circle-progress.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/perfect-scrollbar/perfect-scrollbar.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/chartjs/Chart.bundle.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/vendor/select2/select2.min.js"/>">
		
	</script>


<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>


<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.timeseries.js"></script>

    <script src="<c:url value="/assets/admin/js/main.js"/>" ></script>

<script>


</script>
</body>

</html>
<!-- end document-->



