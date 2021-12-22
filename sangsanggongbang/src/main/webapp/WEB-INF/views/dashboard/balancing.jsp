<!--

=========================================================
* Spaces - Bootstrap Directory Listing Template
=========================================================

* Product Page: https://themes.getbootstrap.com/product/spaces/
* Copyright 2020 Themesberg EULA (https://themes.getbootstrap.com/licenses/)

* Coded by https://themesberg.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Spaces - Billing</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Billing">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Billing">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Billing">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/resources/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/resources/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

<!-- VectorMap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/jqvmap.min.css">

<!-- Main CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/css/spaces.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>
    <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-light navbar-theme-primary">
        <div class="container">
            <a class="navbar-brand @@logo_classes" href="${pageContext.request.contextPath}/resources/index.html">
                <img class="navbar-brand-dark common" src="${pageContext.request.contextPath}/resources/assets/img/brand/light.svg" height="35" alt="Logo light">
                <img class="navbar-brand-light common" src="${pageContext.request.contextPath}/resources/assets/img/brand/dark.svg" height="35" alt="Logo dark">
            </a>
            <div class="navbar-collapse collapse" id="navbar_global">
                <div class="navbar-collapse-header">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="${pageContext.request.contextPath}/resources/index.html">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/brand/dark.svg" height="35" alt="Logo Impact">
                            </a>
                        </div>
                        <div class="col-6 collapse-close">
                            <a href="#navbar_global" role="button" class="fas fa-times" data-toggle="collapse"
                                data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                                aria-label="Toggle navigation"></a>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav navbar-nav-hover justify-content-center">
                    <li class="nav-item dropdown">
                        <a href="#" id="mainPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Front pages</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu p-3 p-lg-4" aria-labelledby="mainPagesDropdown">
                            <div class="row">
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">Main pages</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/index.html">Landing</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/index-2.html">Landing 2</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/index-3.html">Landing 3</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/about.html">About</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/pricing.html">Pricing</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/team.html">Team</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/contact.html">Contact</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block text-primary">Legal</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/legal.html">Legal center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/terms.html">Terms & agreement</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">Listing</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/all-spaces.html">All spaces</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/all-spaces-map.html">Map view</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/all-spaces-sidebar.html">All spaces sidebar</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/single-space.html">Space details</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/profile.html">Profile</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Support</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/support.html">Support center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/support-topic.html">Support topic</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Blog</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/blog.html">Blog</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/blog-post.html">Blog post</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">User</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/sign-in.html">Sign in</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/sign-up.html">Sign up</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/forgot-password.html">Forgot password</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/reset-password.html">Reset password</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Special</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/404.html">404 Not Found</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/500.html">500 Server Error</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/maintenance.html">Maintenance</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/coming-soon.html">Coming soon</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/blank.html">Blank page</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" id="dashboardPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Dashboard</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4" aria-labelledby="dashboardPagesDropdown">
                            <div class="row">
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">User dashboard</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/account.html">My account</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/settings.html">Settings</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/security.html">Security</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Items</h6>
                                    <ul class="list-style-none">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/my-items.html">My items</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/edit-item.html">Edit item</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">Messaging</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/messages.html">Messages</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/single-message.html">Chat</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Billing</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/billing.html">Billing details</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="${pageContext.request.contextPath}/resources/html/dashboard/invoice.html">Invoice</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" id="supportDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Support</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg" aria-labelledby="supportDropdown">
                            <div class="col-auto px-0">
                                <div class="list-group list-group-flush">
                                    <a href="https://themesberg.com/docs/spaces/getting-started/quick-start/" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Documentation<span class="badge badge-sm badge-secondary ml-2">v3.0</span></span>
                                            <span class="small">Examples and guides</span>
                                        </div>
                                    </a>
                                    <a href="https://themesberg.com/contact" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-primary"><i
                                                class="fas fa-microphone-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Support</span>
                                            <span class="small">Looking for answers?</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="d-none d-lg-block @@cta_button_classes">
                <a href="https://themesberg.com/docs/spaces/components/buttons/" target="_blank" class="btn btn-md btn-outline-white animate-up-2 mr-3"><i class="fas fa-book mr-1"></i> <span class="d-xl-none">Docs</span> <span class="d-none d-xl-inline">Components</span></a>
                <a href="https://themes.getbootstrap.com/product/spaces/" target="_blank" class="btn btn-md btn-secondary animate-up-2"><i class="fas fa-shopping-bag mr-2"></i> Buy now</a>
            </div>
            <div class="d-flex d-lg-none align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
                    aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>
    </nav>
</header>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="${pageContext.request.contextPath}/resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
        <img src="${pageContext.request.contextPath}/resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
    </div>
</div>

        <div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                    
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
                <img src="${pageContext.request.contextPath}/resources/assets/img/team/profile-picture-4.jpg" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">Neil Sims</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
                <a href="./account.html" class="d-flex list-group-item list-group-item-action ">Overview <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./settings.html" class="d-flex list-group-item list-group-item-action ">Settings<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./my-items.html" class="d-flex list-group-item list-group-item-action ">My Items<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./security.html" class="d-flex list-group-item list-group-item-action ">Security<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./billing.html" class="d-flex list-group-item list-group-item-action  active ">Billing<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0 ">Settings</a>
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">My Items</a>
                    <a href="./security.html" class="list-group-item list-group-item-action d-none d-md-block border-0 ">Security</a>
                </div>
                <div class="col-2 d-flex justify-content-center">
                    <div class="btn-group dropleft">
                        <button class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="icon icon-sm">
                                <span class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
                            </span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0 ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0  active ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                    <div class="col-12 col-lg-8">
                        <div class="row mb-5">
                            <div class="col-12 mb-4">
                               <div class="card border-light text-center py-4 mb-4">
                                  <div class="card-body">
                                        <h2 class="display-4 mb-3">Spaces<span class="pixel-pro-badge subscription-badge bg-secondary font-weight-bolder text-white">PRO</span></h2>
                                        <p class="my-4">Next payment of <span class="font-weight-bold">$36 (yearly)</span> occurs on August 13, 2020.</p>
                                        <a class="btn btn-sm btn-dark" href="#">Cancel subscription</a>
                                  </div>
                               </div>
                                <form action="#" method="post" class="card border-light p-3 mb-4">
                                    <div class="card-header border-light p-3 mb-4 mb-md-0">
                                        <h3 class="h5 mb-0">Billing details</h3> 
                                    </div>
                                    <div class="card-body p-0 p-md-4">
                                        <div class="row justify-content-center">
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputEmail1">Email address *</label>
                                                    <input type="email" class="form-control" placeholder="example@company.com" id="cartInputEmail1" aria-describedby="cartInputEmail1" required>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!--Form-->
                                                <div class="form-group">
                                                    <label class="my-1 mr-2" for="cartFormCustomSelectPref1">Country</label>
                                                    <select class="custom-select my-1 mr-sm-2" id="cartFormCustomSelectPref1">
                                                        <option selected>Choose...</option>
                                                        <option value="1">United States</option>
                                                        <option value="2">Germany</option>
                                                        <option value="3">Canada</option>
                                                    </select>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputAdress1">Adress</label>
                                                    <input type="text" placeholder="Texas" class="form-control" id="cartInputAdress1" aria-describedby="cartInputAdress1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputCity1">City</label>
                                                    <input type="text" placeholder="Dallas" class="form-control" id="cartInputCity1" aria-describedby="cartInputCity1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputZip1">Zip/Postal code</label>
                                                    <input type="number" placeholder="123456" class="form-control" id="cartInputZip1" aria-describedby="cartInputZip1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputCompany1">Company Name *</label>
                                                    <input type="text" placeholder="Company LLC" class="form-control" id="cartInputCompany1" aria-describedby="cartInputCompany1" required>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputVAT1">VAT ID</label>
                                                    <input type="number" placeholder="NL232142" class="form-control" id="cartInputVAT1" aria-describedby="cartInputVAT1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputPhone1">Phone Number</label>
                                                    <input type="number" placeholder="+(12)345 6789" class="form-control" id="cartInputPhone1" aria-describedby="cartInputPhone1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary btn-dark mt-2 animate-up-2" type="submit">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form action="#" method="post" class="card border-light p-3 mb-4">
                                    <div class="card-header border-light p-3 mb-4 mb-md-0">
                                        <h3 class="h5 mb-0">Card details</h3> 
                                    </div>
                                    <div class="card-body p-0 p-md-4">
                                        <div class="row justify-content-center">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="form-label" for="cardNameLabel"><span class="small text-dark">(Full name as displayed on card)</span></label>
                                                    <div class="input-group mb-4">
                                                        <input class="form-control" id="cardNameLabel" placeholder="Name on Card *" type="text" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="cardNumberLabel">Card Number <span class="text-danger">*</span></label>
                                                    <div class="input-group mb-4">
                                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-credit-card"></span></span> </div>
                                                        <input class="form-control" id="cardNumberLabel" placeholder="0000 0000 0000 0000" type="number" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="cardCVCLabel">CVC <span class="text-danger">*</span></label>
                                                    <input class="form-control" id="cardCVCLabel" placeholder="CVC" type="number" required=""> </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="cardExpiryLabel">Card Expiry <span class="text-danger">*</span></label>
                                                    <div class="input-group mb-4">
                                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-calendar-alt"></span></span> </div>
                                                        <input class="form-control" id="cardExpiryLabel" placeholder="MM / YY" type="number" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary btn-dark mt-2 animate-up-2" type="submit">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                                <div class="card card-body bg-white border-light p-0 p-md-4">
                                    <div class="card-header border-bottom p-3">
                                        <h3 class="h5">Order History</h3>
                                        <p class="small pr-lg-10">This is a list of devices that have logged into your account. Revoke any sessions that you do not recognize.</p>
                                    </div>
                                    <div class="card-body px-0 pt-0">
                                        <ul class="list-group">
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120345</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed August 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <button class="btn btn-xs btn-outline-dark">
                                                            Pay now
                                                        </button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120344</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed July 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <span class="badge badge-pill badge-success">
                                                            <span class="text-uppercase font-weight-bold">Paid</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120343</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed June 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <span class="badge badge-pill badge-success">
                                                            <span class="text-uppercase font-weight-bold">Paid</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer py-6 bg-primary text-white">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 mb-3 mb-xl-0">
                <img src="${pageContext.request.contextPath}/resources/assets/img/brand/light.svg" height="30" class="mb-3" alt="Spaces logo">
                <p>Premium Bootstrap Directory Listing Template</p>
            </div>
            <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                <span class="h5">Themesberg</span>
                <ul class="footer-links mt-2">
                    <li><a target="_blank" href="https://themesberg.com/blog">Blog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/products">Products</a></li>
                    <li><a target="_blank" href="https://themesberg.com/about">About Us</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-6 col-xl-3 mb-5 mb-xl-0">
                <span class="h5">Other</span>
                <ul class="footer-links mt-2">
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/overview/">Documentation <span class="badge badge-sm badge-secondary ml-2">v3.0</span></a></li>
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/changelog/">Changelog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Support</a></li>
                    <li><a target="_blank" href="https://themesberg.com/licensing">License</a>
                    </li>
                </ul>
            </div>
            <div class="col-12 col-xl-4 mb-5 mb-xl-0">
                <span class="h5">Get the app</span>
                <p class="text-muted font-small mt-2">It's easy. Just select your device.</p>
                <a href="#" class="btn btn-sm btn-white mb-xl-0 mr-2">
                    <span class="d-flex align-items-center">
                        <span class="icon icon-brand mr-2"><span class="fab fa-apple"></span></span>
                        <span class="d-inline-block text-left">
                            <small class="font-weight-normal d-block">Available on</small> App Store 
                        </span> 
                    </span>
                </a>
                <a href="#" class="btn btn-sm btn-white">
                    <span class="icon icon-brand mr-2"><span class="fab fa-google-play"></span></span>
                    <span class="d-inline-block text-left">
                        <small class="font-weight-normal d-block">Available on</small> Google Play
                    </span> 
                </a>
            </div>
        </div>
        <hr class="my-3 my-lg-5">
        <div class="row">
            <div class="col mb-md-0">
                <a href="https://themesberg.com" target="_blank" class="d-flex justify-content-center">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/themesberg.svg" height="25" class="mb-3" alt="Themesberg Logo">
                </a>
            <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                <p class="font-weight-normal font-small mb-0">Copyright © Themesberg
                    <span class="current-year">2020</span>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

    <!-- Core -->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="${pageContext.request.contextPath}/resources/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="${pageContext.request.contextPath}/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="${pageContext.request.contextPath}/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="${pageContext.request.contextPath}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="${pageContext.request.contextPath}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="${pageContext.request.contextPath}/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="${pageContext.request.contextPath}/resources/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="${pageContext.request.contextPath}/resources/vendor/chartist/dist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="${pageContext.request.contextPath}/resources/assets/js/spaces.js"></script>
</body>

</html>