<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

	<main class="app-content app-content-inverse" role="main">

		<%-- Section 1 --------------------------------%>
		<section class="page-section page-section-extended">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6 col-lg-offset-4 col-lg-4">
						<div class="page-header-content">
							<h1 class="h2">Login</h1>



							<%-- Panel --------------------------------%>
							<div class="panel panel-default">
								<div class="panel-body" > <%-- ng-controller="LoginController as LoginCtrl" --%>

									<%-- Form --------------------------------%>
									<div class="form-type-textfield form-item-name form-item form-group has-error has-feedback">
										<label class="control-label" for="edit-name">
											Username
											<span class="form-required" title="This field is required.">*</span>
										</label>
										<input
											class="form-control form-text required margin-bottom-quarter"
											type="text"
											id="edit-name"
											name="name"
											value=""
											size="15"
											maxlength="60"
											novalidate
											<%-- ng-model="user.name"--%>
										>
										<span class="form-control-feedback">
											<i class="fa fa-times"></i>
										</span>

										<p class="form-control-feedback-message small">
											Sorry, unrecognized username or password. <br>
											<a href="http://www.theoryx.com/pyxima/prezo/_dev/?q=user/password&name=userRol4">Have you forgotten your password?</a>
										</p>
									</div>

									<div class="form-type-password form-item-pass form-item form-group">
										<label class="control-label" for="edit-pass">
											Password
											<span class="form-required" title="This field is required.">*</span>
										</label>
										<input
											class="form-control form-text required margin-bottom-quarter"
											type="password"
											id="edit-pass"
											name="pass"
											size="15"
											maxlength="128"
											novalidate
											<%-- ng-model="user.password" --%>
										>
									</div>

									<ul class="list-unstyled small">
										<li class="first"><a href="/pyxima/prezo/_dev/?q=user/register" title="Create a new user account.">Create new account</a></li>
										<li class="last"><a href="/pyxima/prezo/_dev/?q=user/password" title="Request new password via e-mail.">Request new password</a></li>
									</ul>

									<button class="btn btn-primary form-submit pull-right" id="edit-submit" name="op" value="Log in" type="submit">Log in</button>


								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>



	</main>

</asp:Content>

