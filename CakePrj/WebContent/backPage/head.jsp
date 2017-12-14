
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Zoom Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="/CakePrj/backPage/node_modules/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="/CakePrj/backPage/node_modules/mdi/css/materialdesignicons.css">
  <link rel="stylesheet" href="/CakePrj/backPage/node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="/CakePrj/backPage/node_modules/icheck/skins/all.css" />
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/CakePrj/backPage/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="/CakePrj/backPage/images/favicon.png" />
  
  <script type="text/javascript" src="myscript.js">
	

	
	
</script>
  
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar navbar-primary col-lg-12 col-12 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper">
            <a class="navbar-brand brand-logo" href="#">Zoom
              <i class="mdi mdi-cube-send"></i>
            </a>
            <a class="navbar-brand brand-logo-mini" href="#"><i class="mdi mdi-cube-send"></i></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
            <button class="navbar-toggler navbar-toggler d-none d-lg-block align-self-center mr-2" type="button" data-toggle="minimize">
                <span class="mdi mdi-chevron-left"></span>
            </button>
            <div class="nav-profile">
              <span>Hi, Dave Mattew</span>
              <img src="/CakePrj/backPage/images/faces/face6.jpg" />
            </div>
            <form class="form-inline mt-2 mt-md-0 d-none d-lg-block ml-lg-auto">
                <input class="form-control search" type="text" placeholder="Search">
            </form>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator" id="notificationDropdown" href="#" data-toggle="dropdown">
                        <i class="mdi mdi-bell-outline"></i>
                        <span class="count bg-warning">7</span>
                    </a>
                    <div class="dropdown-menu navbar-dropdown notification-drop-down" aria-labelledby="notificationDropdown">
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-birthday-cake text-success fa-fw"></i>
                            <span class="notification-text">Today is John's birthday</span>
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-phone text-danger fa-fw"></i>
                            <span class="notification-text">Call John Doe</span>
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-handshake-o text-primary fa-fw"></i>
                            <span class="notification-text">Meeting Alisa</span>
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-exclamation-triangle text-danger fa-fw"></i>
                            <span class="notification-text">Server space almost full</span>
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-bell text-warning fa-fw"></i>
                            <span class="notification-text">Payment Due</span>
                        </a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator" id="MailDropdown" href="#" data-toggle="dropdown">
                        <i class="mdi mdi-comment-outline"></i>
                        <span class="count bg-danger">4</span>
                    </a>
                    <div class="dropdown-menu navbar-dropdown mail-notification" aria-labelledby="MailDropdown">
                        <a class="dropdown-item" href="#">
                            <div class="sender-img">
                                <img src="/CakePrj/backPage/images/faces/face6.jpg" alt="">
                                <span class="badge badge-success">&nbsp;</span>
                            </div>
                            <div class="sender">
                                <p class="Sende-name">John Doe</p>
                                <p class="Sender-message">Hey, We have a meeting planned at the end of the day.</p>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="sender-img">
                                <img src="/CakePrj/backPage/images/faces/face2.jpg" alt="">
                                <span class="badge badge-success">&nbsp;</span>
                            </div>
                            <div class="sender">
                                <p class="Sende-name">Leanne Jones</p>
                                <p class="Sender-message">Can we schedule a call this afternoon?</p>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="sender-img">
                                <img src="/CakePrj/backPage/images/faces/face3.jpg" alt="">
                                <span class="badge badge-primary">&nbsp;</span>
                            </div>
                            <div class="sender">
                                <p class="Sende-name">Stella</p>
                                <p class="Sender-message">Great presentation the other day. Keep up the good work!</p>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="sender-img">
                                <img src="/CakePrj/backPage/images/faces/face4.jpg" alt="">
                                <span class="badge badge-warning">&nbsp;</span>
                            </div>
                            <div class="sender">
                                <p class="Sende-name">James Brown</p>
                                <p class="Sender-message">Need the updates of the project at the end of the week.</p>
                            </div>
                        </a>
                        <a href="#" class="dropdown-item view-all">View all</a>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-chevron-left"></span>
              </button>
        </div>
    </nav>

    <!--menu ends -->
    <div class="container-fluid page-body-wapper">
      <div class="row row-offcanvas row-offcanvas-right">
        <!-- sidebar starts -->
        <nav class="sidebar sidebar-fixed sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <!--main pages start-->
                <li class="nav-item nav-category">
                    <span class="nav-link">General</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#dashboardSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-speedometer"></i>
                        <span class="menu-title">Dashboard</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="dashboardSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link active" href="index.html">Dashboard 1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/dashboard/dashboard-2.html">Dashboard 2</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#layoutsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-size-actual"></i>
                        <span class="menu-title">Page layouts</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="layoutsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/boxed_layout.html">Boxed</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/rtl_layout.html">Rtl</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#sidebarLayoutsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-list"></i>
                        <span class="menu-title">Sidebar layouts</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="sidebarLayoutsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/sidebar-compact.html">Compact menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/sidebar-collapsed.html">Collapsed</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/sidebar-hidden.html">Hidden</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/sidebar-hidden-overlay.html">Hidden overlay</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/layout/horizontal_menu.html">Horizontal menu</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/widgets.html">
                        <i class="icon-wrench"></i>
                        <span class="menu-title">Widgets</span>
                    </a>
                </li>
                <!--main pages end-->
                <!--sample pages start-->
                <li class="nav-item nav-category">
                    <span class="nav-link">Sample pages</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#authSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-support"></i>
                        <span class="menu-title">Authentication</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="authSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/register.html">
                                              Register
                                            </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/login.html">
                                              Login
                                            </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#errorSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-docs"></i>
                        <span class="menu-title">Error pages</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="errorSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/error-404.html">
                                              404
                                            </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/error-500.html">
                                              500
                                            </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#generalSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-paper-plane"></i>
                        <span class="menu-title">General Pages</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="generalSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/blank-page.html">
                                  Blank Page
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/invoice.html">
                                  Invoice
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/samples/pricing-table.html">
                                  Pricing Table
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!--sample pages end-->
                <!--ui features start-->
                <li class="nav-item nav-category">
                    <span class="nav-link">UI Features</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#uiBasicSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-layers"></i>
                        <span class="menu-title">Basic Elements</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="uiBasicSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/accordions.html">Accordions</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/dropdowns.html">Dropdowns</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/tabs.html">Tabs</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/progress.html">Progress</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/modals.html">Modals</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/pagination.html">Pagination</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/typography.html">Typography</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#uiAdvancedSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-grid"></i>
                        <span class="menu-title">Advanced Elements</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="uiAdvancedSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/image-cropper.html">Cropper</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/clipboard.html">Clipboard</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/dragula.html">Dragula</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/listify.html">Listify</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/context-menu.html">Context menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/carousel.html">Carousel</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/colcade.html">Colcade</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#uiPopupSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-bubble"></i>
                        <span class="menu-title">Popups</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="uiPopupSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/alerts.html">Alerts</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/avgrund.html">Avgrund</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/tour.html">Tour</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#uiNotificationsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-bell"></i>
                        <span class="menu-title">Notifications</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="uiNotificationsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/notifications.html">Toast</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/desktop-notification.html">Desktop notification</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#uiSliderSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-bubble"></i>
                        <span class="menu-title">Sliders</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="uiSliderSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/ion-range-slider.html">Ion range</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/ui-features/no-ui-slider.html">No-ui-slider</a>
                            </li>
                        </ul>
                    </div>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#iconsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                            <i class="icon-emotsmile"></i>
                            <span class="menu-title">Icons</span>
                            <i class="icon-arrow-down"></i>
                        </a>
                        <div class="collapse" id="iconsSubmenu">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="pages/icons/font-awesome-icons.html">Font awesome</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="pages/icons/themify-icons.html">Themify</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="pages/icons/flag-icons.html">Flag icons</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="pages/icons/simple-line-icons.html">Simple line icons</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </li>
                <!-- ui features end-->
                <!-- Data rep start -->
                <li class="nav-item nav-category">
                    <span class="nav-link">Data Representation</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#chartsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-pie-chart"></i>
                        <span class="menu-title">Charts</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="chartsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/chartjs.html">ChartJs</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/flot-chart.html">Flot</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/chartist.html">Chartist</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/sparkline.html">Sparkline</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/c3.html">C3</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/morris.html">Morris</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/charts/rickshaw.html">Rickshaw</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#tablesSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-screen-desktop"></i>
                        <span class="menu-title">Tables</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="tablesSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="/CakePrj/cake/check">查看表</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/tables/bootstrap-table.html">Bootstrap Table</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#mapsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-map"></i>
                        <span class="menu-title">Maps</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="mapsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/maps/vector-map.html">Vector map</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!--data rep end-->
                <!--forms start-->
                <li class="nav-item nav-category">
                    <span class="nav-link">Forms</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#formsSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-note"></i>
                        <span class="menu-title">Form components</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="formsSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/basic-elements.html">Basic elements</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-wizard.html">Wizard</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-mask.html">Form mask</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-repeater.html">Form repeater</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/x-editable.html">X-editable</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/typeahead.html">Typeahead</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#formsAdvancedSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-equalizer"></i>
                        <span class="menu-title">Advanced plugins</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="formsAdvancedSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-addons.html">Form addons</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-picker.html">Form pickers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/icheck.html">Icheck</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/bt-select-splitter.html">Splitter</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#validationSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-flag"></i>
                        <span class="menu-title">Validation</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="validationSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/form-validation.html">Form validation</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/bt-maxlength.html">Maxlength</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#fileUploadSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-paper-clip"></i>
                        <span class="menu-title">File upload</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="fileUploadSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/dropify.html">Dropify</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/dropzone.html">Dropzone</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/jquery-file-upload.html">Jquery upload</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#textEditorSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-pencil"></i>
                        <span class="menu-title">Text editors</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="textEditorSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/summernote.html">Summernote</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/tinymce.html">Tinymce</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/quill-editor.html">Quill</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/simplemde-editor.html">SimpleMde</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/wysihtml.html">Wysihtml</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#codeEditorSubmenu" aria-expanded="false" aria-controls="collapseExample">
                        <i class="icon-vector"></i>
                        <span class="menu-title">Code editors</span>
                        <i class="icon-arrow-down"></i>
                    </a>
                    <div class="collapse" id="codeEditorSubmenu">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/ace.html">Ace</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/forms/code-mirror.html">Codemirror</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!--forms end-->
                <!--Apps start-->
                <li class="nav-item nav-category">
                    <span class="nav-link">Applications</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/apps/email.html">
                        <i class="icon-envelope-open"></i>
                        <span class="menu-title">E-mail</span>
                    </a>
                </li>
                <li class="nav-item">
                  <li class="nav-item">
                    <a class="nav-link" href="pages/apps/gallery.html">
                      <i class="icon-picture"></i>
                      <span class="menu-title">Gallery</span>
                    </a>
                  </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/apps/calendar.html">
                        <i class="icon-calendar"></i>
                        <span class="menu-title">Calendar</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/apps/todo-list.html">
                        <i class="icon-event"></i>
                        <span class="menu-title">Todo list</span>
                    </a>
                </li>
                <!--Apps end-->
                <li class="nav-item nav-category">
                    <span class="nav-link">Documentation</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/documentation.html">
                        <i class="icon-doc"></i>
                        <span class="menu-title">Documentation</span>
                    </a>
                </li>
            </ul>
        </nav>