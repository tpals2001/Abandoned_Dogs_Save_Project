<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">

  <title>다솜 :: 관리자 페이지</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css">
   <link href="https://cdn.datatables.net/1.10.21/css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css">
   <!-- 체크박스, 라디오버튼 -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css">
  
  <!-- Custom styles for this template-->
  <link href="/resources/AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">
  <!-- httpRequest.js 임포트 --> 
 <script type="text/javascript" src="/resources/js/httpRequest.js"></script> 
  <!-- google charts import -->
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <!-- jQuery -->
   	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>	
   	<!--Alert 디자인 라이브러리 -->
   	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/dashboard">
        <div class="sidebar-brand-icon rotate-15">
          <i class="fas fa-paw"></i>
        </div>
        <div class="sidebar-brand-text mx-3">다솜 Admin <sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="/admin/dashboard">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>메인 대시보드</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
       Management
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-users"></i>
          <span>Member</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">회원</h6>
            <a class="collapse-item" href="/admin/memberlist">회원 관리</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-table"></i>
          <span>Table</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">게시판 관리</h6>
            <a class="collapse-item" href="/admin/qna">QNA게시판관리</a>
            <a class="collapse-item" href="/admin/dogmiss">분실견 게시판 관리</a>
            <a class="collapse-item" href="/admin/dog">유기견 게시판 관리</a>
            <a class="collapse-item" href="/admin/dogClaim">입양신청 처리</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Abondoned Dog
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Dog Management</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header" >유기견관련</h6>
            <a class="collapse-item" href="/admin/dogInsert">유기견 등록</a>           
            <a class="collapse-item" href="/admin/shelterInsert">유기견 보호소 등록</a>
            <div class="collapse-divider"></div>
         </div>
        </div>
      </li>
       
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar 임포트-->
        <c:import url="/admin/toolbar" />
        <!-- End of Topbar -->