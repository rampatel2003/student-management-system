<%@ include file="../layout/header.jsp" %>

<%@ include file="../layout/navbar.jsp" %>

<%@ include file="../layout/sidebar.jsp" %>

<div class="main-content">

    <div class="container-fluid">

        <div class="page-header">

            <h1>Students</h1>

            <p>Manage student records from here.</p>

        </div>

        <div class="card shadow-sm border-0 mb-4">

            <div class="card-body">

                <div class="row g-3 align-items-center">

                    <!-- Search -->

                    <div class="col-lg-5">

                        <div class="input-group">

                            <span class="input-group-text">
                                <i class="bi bi-search"></i>
                            </span>

                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Search students...">

                        </div>

                    </div>

                    <!-- Department -->

                    <div class="col-lg-3">

                        <select class="form-select">

                            <option>All Departments</option>

                        </select>

                    </div>

                    <!-- Status -->

                    <div class="col-lg-2">

                        <select class="form-select">

                            <option>All Status</option>

                        </select>

                    </div>

                    <!-- Button -->

                    <div class="col-lg-2 text-end">

                        <a href="${pageContext.request.contextPath}/students/add"
                           class="btn btn-primary">
                            <i class="bi bi-plus-circle"></i>
                            Add Student
                        </a>

                    </div>

                </div>

            </div>

        </div>

        <div class="card shadow-sm border-0">

            <div class="card-body">

                <div class="table-responsive">

                    <table class="table table-hover align-middle">

                        <thead class="table-light">

                        <tr>

                            <th>S No</th>
                            <th>Enrollment No</th>
                            <th>Name</th>
                            <th>Department</th>
                            <th>Course</th>
                            <th>Status</th>
                            <th class="text-center">Actions</th>

                        </tr>

                        </thead>

                        <tbody>

                        <tr>

                            <td>1</td>

                            <td>101</td>

                            <td>Ram Patel</td>

                            <td>CSE</td>

                            <td>B.Tech</td>

                            <td>

                                <span class="badge bg-success">
                                    ACTIVE                                </span>

                            </td>

                            <td class="text-center">

                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="bi bi-eye"></i>
                                </button>

                                <button class="btn btn-sm btn-outline-warning">
                                    <i class="bi bi-pencil"></i>
                                </button>

                                <button class="btn btn-sm btn-outline-danger">
                                    <i class="bi bi-trash"></i>
                                </button>

                            </td>

                        </tr>

                        </tbody>

                    </table>

                </div>

            </div>

        </div>

    </div>

</div>

<%@ include file="../layout/footer.jsp" %>