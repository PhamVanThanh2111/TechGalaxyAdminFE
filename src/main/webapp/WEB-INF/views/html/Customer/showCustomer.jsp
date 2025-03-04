<%@ page import="iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.dto.response.CustomerResponse" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<c:url value='/images/favicon/favicon.ico' />">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/images/favicon/favicon-16x16.png' />">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/images/favicon/favicon-32x32.png' />">
    <link rel="icon" type="image/png" sizes="192x192" href="<c:url value='/images/favicon/android-chrome-192x192.png' />">
    <link rel="icon" type="image/png" sizes="512x512" href="<c:url value='/images/favicon/android-chrome-512x512.png' />">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/images/favicon/apple-touch-icon.png' />">
    <link rel="manifest" href="<c:url value='/images/favicon/site.webmanifest' />">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<c:url value='/images/favicon/android-chrome-192x192.png' />">
    <meta name="theme-color" content="#ffffff">

    <title>Customer</title>

    <!-- Custom fonts for this template -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/css/sb-admin-2.min.css" />" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="<c:url value="/datatables/dataTables.bootstrap4.min.css" />" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="<c:url value="/css/toast.css"/> " rel="stylesheet">

</head>

<body id="page-top">

<c:if test="${not empty successMessage}">
    <div class="toast-container position-fixed top-0 end-0 p-3">
        <div id="successToast" class="toast success-toast" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Success!</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                    ${successMessage}
            </div>
        </div>
    </div>
</c:if>
<c:if test="${not empty errorMessage}">
    <div class="toast-container position-fixed top-0 end-0 p-3">
        <div id="errorToast" class="toast error-toast" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Unsuccessful!</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                    ${errorMessage}
            </div>
        </div>
    </div>
</c:if>

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="../General/Sidebar.jsp" />
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <jsp:include page="../General/Topbar.jsp" />
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Customers</h1>
                <p class="mb-4">This is a customers management table, displaying user data such as name, phone, gender, birth and so on.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Data Customer</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>User Status</th>
                                    <th>Phone</th>
                                    <th>Gender</th>
                                    <th>Date of birth</th>
                                    <th>Avatar</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>User Status</th>
                                    <th>Phone</th>
                                    <th>Gender</th>
                                    <th>Date of birth</th>
                                    <th>Avatar</th>
                                    <th>Action</th>
                                </tr>
                                </tfoot>
                                <tbody>
<%--                                <c:if test="${customers != null}">--%>
<%--                                    <c:forEach items="${customers}" var="customer">--%>
<%--                                        <tr>--%>
<%--                                            <td>${customer.name}</td>--%>
<%--                                            <td>${customer.userStatus}</td>--%>
<%--                                            <td>${customer.phone}</td>--%>
<%--                                            <td>${customer.gender}</td>--%>
<%--                                            <td>--%>
<%--                                                <%--%>
<%--                                                    Object obj = pageContext.findAttribute("customer");--%>
<%--                                                    CustomerResponse customerResponse = (CustomerResponse) obj;--%>
<%--                                                    LocalDate dateOfBirth = customerResponse.getDateOfBirth();--%>
<%--                                                    if (dateOfBirth != null) {--%>
<%--                                                        String formatDate = dateOfBirth.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));--%>
<%--                                                        out.print(formatDate);--%>
<%--                                                    }--%>
<%--                                                %>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                                <c:if test="${customer.avatar != null}">--%>
<%--                                                    <img src="<c:url value="http://localhost:8081/storage/customer/avatar/${customer.avatar}"/>" alt="avatar"--%>
<%--                                                         width="55" height="55">--%>
<%--                                                </c:if>--%>
<%--                                                <c:if test="${customer.avatar == null}">--%>
<%--                                                    <img src="<c:url value='${customer.gender == "FEMALE" ? "/img/undraw_profile_1.svg" : "/img/undraw_profile.svg"}' />"--%>
<%--                                                         alt="avatar"--%>
<%--                                                         width="55" height="55">--%>
<%--                                                </c:if>--%>
<%--                                            </td>--%>
<%--                                            <td style="width: 18%">--%>
<%--                                                <a--%>
<%--                                                    href="${pageContext.request.contextPath}/customers/update/${customer.id}"--%>
<%--                                                    class="btn btn-warning btn-sm">Update</a>--%>
<%--                                                <a href="${pageContext.request.contextPath}/customers/delete/${customer.id}" class="btn btn-danger btn-sm" data-toggle="modal"--%>
<%--                                                   data-target="#deleteUserModal_${customer.id}">Delete</a>--%>
<%--                                                <a href="${pageContext.request.contextPath}/customers/detail/${customer.id}"--%>
<%--                                                   class="btn btn-info btn-sm">Detail</a>--%>

<%--                                                <!-- Delete User Modal-->--%>
<%--                                                <div class="modal fade" id="deleteUserModal_${customer.id}" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"--%>
<%--                                                     aria-hidden="true">--%>
<%--                                                    <div class="modal-dialog" role="document">--%>
<%--                                                        <div class="modal-content">--%>
<%--                                                            <div class="modal-header">--%>
<%--                                                                <h5 class="modal-title" id="deleteLabel">Ready to delete?</h5>--%>
<%--                                                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">--%>
<%--                                                                    <span aria-hidden="true">×</span>--%>
<%--                                                                </button>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="modal-body">Select "Yes" below if you are ready to delete this user.</div>--%>
<%--                                                            <div class="modal-footer">--%>
<%--                                                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>--%>
<%--                                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/customers/delete/${customer.id}">Yes</a>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                    </c:forEach>--%>
<%--                                </c:if>--%>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Garrett Winters</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>63</td>
                                        <td>2011/07/25</td>
                                        <td>$170,750</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ashton Cox</td>
                                        <td>Junior Technical Author</td>
                                        <td>San Francisco</td>
                                        <td>66</td>
                                        <td>2009/01/12</td>
                                        <td>$86,000</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Cedric Kelly</td>
                                        <td>Senior Javascript Developer</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2012/03/29</td>
                                        <td>$433,060</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Airi Satou</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>33</td>
                                        <td>2008/11/28</td>
                                        <td>$162,700</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Brielle Williamson</td>
                                        <td>Integration Specialist</td>
                                        <td>New York</td>
                                        <td>61</td>
                                        <td>2012/12/02</td>
                                        <td>$372,000</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Herrod Chandler</td>
                                        <td>Sales Assistant</td>
                                        <td>San Francisco</td>
                                        <td>59</td>
                                        <td>2012/08/06</td>
                                        <td>$137,500</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Rhona Davidson</td>
                                        <td>Integration Specialist</td>
                                        <td>Tokyo</td>
                                        <td>55</td>
                                        <td>2010/10/14</td>
                                        <td>$327,900</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Colleen Hurst</td>
                                        <td>Javascript Developer</td>
                                        <td>San Francisco</td>
                                        <td>39</td>
                                        <td>2009/09/15</td>
                                        <td>$205,500</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Sonya Frost</td>
                                        <td>Software Engineer</td>
                                        <td>Edinburgh</td>
                                        <td>23</td>
                                        <td>2008/12/13</td>
                                        <td>$103,600</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Jena Gaines</td>
                                        <td>Office Manager</td>
                                        <td>London</td>
                                        <td>30</td>
                                        <td>2008/12/19</td>
                                        <td>$90,560</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Quinn Flynn</td>
                                        <td>Support Lead</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2013/03/03</td>
                                        <td>$342,000</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Charde Marshall</td>
                                        <td>Regional Director</td>
                                        <td>San Francisco</td>
                                        <td>36</td>
                                        <td>2008/10/16</td>
                                        <td>$470,600</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Haley Kennedy</td>
                                        <td>Senior Marketing Designer</td>
                                        <td>London</td>
                                        <td>43</td>
                                        <td>2012/12/18</td>
                                        <td>$313,500</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Tatyana Fitzpatrick</td>
                                        <td>Regional Director</td>
                                        <td>London</td>
                                        <td>19</td>
                                        <td>2010/03/17</td>
                                        <td>$385,750</td>
                                        <td><a href="updateUser.html" class="btn btn-warning btn-sm">Update</a>
                                            <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteUserModal">Delete</a>
                                            <a href="${pageContext.request.contextPath}/customers/detail/1" class="btn btn-info btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<jsp:include page="../General/LogoutModal.jsp"/>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/bootstrap/js/bootstrap.bundle.min.js" />"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/jquery-easing/jquery.easing.min.js" />"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/js/sb-admin-2.min.js" />"></script>

<!-- Page level plugins -->
<script src="<c:url value="/datatables/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/datatables/dataTables.bootstrap4.min.js" />"></script>

<!-- Page level custom scripts -->
<script src="<c:url value="/js/demo/datatables-demo.js" />"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Thêm script để hiển thị Toast -->
<script>
    var successToast = new bootstrap.Toast(document.getElementById('successToast'));
    var errorToast = new bootstrap.Toast(document.getElementById('errorToast'));

    // Hiển thị các toast
    <c:if test="${not empty successMessage}">
        successToast.show();
    </c:if>
    <c:if test="${not empty errorMessage}">
        errorToast.show();
    </c:if>
</script>

</body>

</html>