<%@ include file="../layout/header.jsp" %>

<%@ include file="../layout/navbar.jsp" %>

<%@ include file="../layout/sidebar.jsp" %>

<div class="main-content">

    <div class="container-fluid">

        <div class="page-header">
            <h1>Dashboard</h1>
            <p>Welcome back, Admin.</p>
        </div>

        <div class="row g-4">

            <!-- Total Students -->
            <div class="col-lg-6 col-md-6 mb-4">

                <div class="dashboard-card">

                    <div class="dashboard-icon">
                        <i class="bi bi-mortarboard-fill"></i>
                    </div>

                    <h5>Total Students</h5>

                    <h2>0</h2>

                </div>

            </div>

            <!-- Departments -->

            <div class="col-lg-6 col-md-6 mb-4">

                <div class="dashboard-card">

                    <div class="dashboard-icon">
                        <i class="bi bi-building"></i>
                    </div>

                    <h5>Departments</h5>

                    <h2>0</h2>

                </div>

            </div>

            <!-- Courses -->

            <div class="col-lg-6 col-md-6 mb-4">

                <div class="dashboard-card">

                    <div class="dashboard-icon">
                        <i class="bi bi-book-fill"></i>
                    </div>

                    <h5>Courses</h5>

                    <h2>0</h2>

                </div>

            </div>

            <!-- Active Students -->

            <div class="col-lg-6 col-md-6 mb-4">

                <div class="dashboard-card">

                     <div class="dashboard-icon">
                         <i class="bi bi-person-check-fill"></i>
                     </div>

                     <h5>Active Students</h5>

                     <h2>0</h2>

                 </div>

            </div>

        </div>

    </div>

</div>

<%@ include file="../layout/footer.jsp" %>