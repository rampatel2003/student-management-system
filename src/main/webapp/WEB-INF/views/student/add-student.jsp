<%@ include file="../layout/header.jsp" %>
<%@ include file="../layout/navbar.jsp" %>
<%@ include file="../layout/sidebar.jsp" %>

<div class="main-content">

    <div class="container-fluid">

       <div class="page-header">

           <h1>Add Student</h1>

           <p>Fill in the student information.</p>

       </div>

       <div class="card border-0 shadow-sm rounded-4">

           <div class="card-header bg-white border-0 pt-4">

               <h4 class="fw-bold">

                   <i class="bi bi-person-vcard-fill text-primary"></i>

                   Basic Information

               </h4>

           </div>

           <div class="card-body p-4">

               <!-- Profile -->

               <div class="text-center mb-5">

                   <img src="https://placehold.co/140x140"

                        class="rounded-circle border"

                        width="140">

                   <br><br>

                   <button class="btn btn-outline-primary">

                       <i class="bi bi-upload"></i>

                       Upload Photo

                   </button>

               </div>

               <div class="row">

                   <!-- First Name -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           First Name

                       </label>

                       <input

                               type="text"

                               class="form-control">

                   </div>

                   <!-- Middle Name -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           Middle Name

                       </label>

                       <input

                               type="text"

                               class="form-control">

                   </div>

                   <!-- Last Name -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           Last Name

                       </label>

                       <input

                               type="text"

                               class="form-control">

                   </div>

               </div>

               <div class="row">

                   <!-- Gender -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           Gender

                       </label>

                       <select class="form-select">

                           <option>Male</option>

                           <option>Female</option>

                           <option>Other</option>

                       </select>

                   </div>

                   <!-- DOB -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           Date of Birth

                       </label>

                       <input

                               type="date"

                               class="form-control">

                   </div>

                   <!-- Blood Group -->

                   <div class="col-md-4 mb-4">

                       <label class="form-label">

                           Blood Group

                       </label>

                       <select class="form-select">

                           <option>A+</option>
                           <option>A-</option>
                           <option>B+</option>
                           <option>B-</option>
                           <option>O+</option>
                           <option>O-</option>
                           <option>AB+</option>
                           <option>AB-</option>

                       </select>

                   </div>

               </div>

               <div class="row">

                   <!-- Category -->

                   <div class="col-md-4">

                       <label class="form-label">

                           Category

                       </label>

                       <select class="form-select">

                           <option>General</option>

                           <option>OBC</option>

                           <option>SC</option>

                           <option>ST</option>

                           <option>EWS</option>

                       </select>

                   </div>

                   <!-- E-mail -->

                   <div class="col-md-4">

                       <label class="form-label">

                           e-mail

                       </label>

                       <input

                               type="text"

                               class="form-control">

                   </div>

                   <!-- Phone No -->

                   <div class="col-md-4">

                       <label class="form-label">

                           Phone No

                       </label>

                       <input

                               type="text"

                               class="form-control">

                   </div>
                   <!-- Nationality -->

                   <div class="col-md-4">

                       <label class="form-label">

                               Nationality

                       </label>

                       <input

                                type="text"

                                class="form-control">

                       </div>

               </div>

           </div>

       </div>

    </div>

</div>

<%@ include file="../layout/footer.jsp" %>