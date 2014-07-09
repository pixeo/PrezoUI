<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

	<main class="app-content t-voorwaarden" role="main">

		<%-- Page header --------------------------------%>
		<header class="page-header">
			<div class="container-fluid">
				<div class="page-header-content">
					<h1>Voorwaarden 1.1</h1>
					<p>Deskundigheid</p>
				</div>
			</div>
		</header>

		<%-- Breadcrumbs --------------------------------%>
		<div class="breadcrumb-wrapper">
			<div class="container-fluid">
				You're here:
				<ol class="breadcrumb breadcrumb-alternate">
					<li><a href="/">Home</a></li>
					<li><a href="/prestaties/">Prestaties</a></li>
					<li class="active">Pijler 1.1 – Deskundigheid</li>
				</ol>
			</div>
		</div>





		<%-- Secondary navigation --------------------------------%>
		<div class="affix-wrapper margin-bottom-double">
			<div id="sub-nav" class="navbar navbar-default navbar-extra-wide navbar-static-top navbar-bordered navbar-small">
				<div class="container-fluid">
					<%-- <div class="navbar-header navbar-collapse hidden-md hidden-lg">
						<ul class="nav navbar-nav">
							<li>
								<a href="#" data-toggle="collapse" data-target=".bs-navbar-secondary-collapse">
									Subnavigatie
									<i class="fa fa-th-list pull-right"></i>
								</a>
							</li>
						</ul>
					</div> --%>
					<nav class="navbar-collapse" role="navigation">
						<ul class="nav navbar-nav">
							<li>
								<a href="#plan">Plan</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									Do <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#medewerker">
										Activiteiten van de medewerker
									</a></li>
									<li><a href="#organisatie">
										Activiteiten van de organisatie
									</a></li>
								</ul>
							</li>
							<li>
								<a href="#check">Check</a>
							</li>
							<li>
								<a href="#act">Act</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<br>

		<section class="container-fluid">
			<ul class="list-inline margin-bottom-none list-inline-wide">
				<li>
					<button type="button" class="btn btn-default" data-toggle="button">
						<span class="fa fa-star"></span>&nbsp;&nbsp;Favoriet
					</button>
				</li>
				<li>
					<strong>Status:</strong> &nbsp;
					<span class="badge-group achievement-status">
						<a href="#" class="badge badge-bullet badge-default active"></a>
						<a href="#" class="badge badge-bullet badge-default"></a>
						<a href="#" class="badge badge-bullet badge-default"></a>
						<a href="#" class="badge badge-bullet badge-default"></a>
						<a href="#" class="badge badge-bullet badge-default"></a>
						&nbsp;
						<a href="#" class="achievement-status-null">
							<i class="fa fa-times text-danger"></i>
						</a>
					</span>
				</li>

				<li>
					<strong>Best-practise ZEI:</strong> &nbsp;
					<div class="progress" style="width:9em; vertical-align:middle;">
						<span class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
							<span class="sr-only"></span>
						</span>
					</div>
				</li>
			</ul>
		</section>

		<hr class="margin-bottom-none">



		<%-- Section 1 --------------------------------%>
		<section id="plan" class="page-section is-first">
			<div class="container-fluid">
				<h2 class="underlined h1 page-section-title">Plan</h2>
				<div class="row">
					<div class="col-md-6">
						<p><strong>Presentatie voor de client</strong><br>De cliënt wordt zo veel mogelijk behoed voor vallen. Indien een valincident voorkomt, wordt de cliënt adequaat behandeld</p>
					</div>
					<div class="col-md-6">
						<label for="textareaZelfEvaluatie">Conclusie zelfevaluatie: </label>
						<textarea class="form-control" name="textareaZelfEvaluatie" id="textareaZelfEvaluatie" rows="6"></textarea>
					</div>
				</div>
			</div>
		</section>



		<%-- Section 2 --------------------------------%>
		<section id="do" class="page-section" ng-controller="ActivityController as activityCtrl">
			<div class="container-fluid">
				<h2 class="underlined h1 page-section-title">Do</h2>
				<h3 id="medewerker">Activiteiten medewerker</h3>

				<div class="row">
					<div class="col-md-12">
						<div class="panel-group">
							<div
								class="panel panel-default panel-{{activityCtrl.activitiesOrgan[$index].status}}"
								ng-repeat="activity in activityCtrl.activitiesOrgan"
							>
								<div class="panel-body row">
									<div class="col-md-4">
										<div class="media">
											<div class="pull-left">
												<strong class="media-object">{{$index + 1}}</strong>
											</div>
											<div class="media-body">
												{{activity.title}}
											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="form-group">
												<label class="control-label col-md-3">Score:</label>
												<div class="col-md-9 btn-group" data-toggle="buttons">
													<button type="button" class="btn btn-default">Geen antwoord</button>
													<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
														<span class="caret"></span>
														<span class="sr-only">Toggle Dropdown</span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="#">Ja</a></li>
														<li><a href="#">Nee</a></li>
														<li><a href="#">Soms</a></li>
													</ul>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3">Complexity:</label>
												<div class="btn-group col-md-9" data-toggle="buttons">
													<button type="button" class="btn btn-default">Geen antwoord</button>
													<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
														<span class="caret"></span>
														<span class="sr-only">Toggle Dropdown</span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="">Hoog</a></li>
														<li><a href="">Matig</a></li>
														<li><a href="">Beperkt</a></li>
														<li><a href="">Eenvoudig</a></li>
													</ul>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3">Urgency:</label>
												<div class="btn-group col-md-9" data-toggle="buttons">
													<button type="button" class="btn btn-default">Geen antwoord</button>
													<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
														<span class="caret"></span>
														<span class="sr-only">Toggle Dropdown</span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="#">Hoog</a></li>
														<li><a href="#">Matig</a></li>
														<li><a href="#">Beperkt</a></li>
														<li><a href="#">Geen</a></li>
													</ul>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label">Toelichting:</label>
											<textarea class="form-control" rows="6"></textarea>
										</div>
									</div>

									<div class="col-md-4">
										<div class="form-group" ng-controller="ActionPointsController as actionPointsController">

											<label class="control-label">Actiepunten:</label>
											<div class="">
												<table class="table table-bordered margin-bottom-half">
													<tr ng-repeat="actionPoint in actionPointsController.actionPoints">
														<td ng-hide="hideAddActionPoint">
															{{actionPoint.name}}

															<div class="btn-group pull-right">
																<button type="button" class="btn btn-sm btn-default"><i class="fa fa-pencil"></i></button>
																<button type="button" ng-click="hideAddActionPoint=true" class="btn btn-sm btn-default"><i class="fa fa-times"></i></button>
															</div>
														</td>
													</tr>
													<tr ng-show="showAddActionPoint">
														<td>
															<div class="input-group">
																<input type="text" class="form-control" ng-model="actionPointsController.actionPoints.actionPointName">
																<span class="input-group-btn">
																	<button type='button' class="btn btn-primary" ng-click="addActionPoint(actionPointsController.actionPoints.actionPoint)">Toevoegen</button>
																</span>
															</div><!-- /input-group -->
														</td>
													</tr>
												</table>
												<button type="button" class="btn btn-primary" ng-click="showAddActionPoint=true">
													Actiepunt toevoegen
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<h3>Conclusie activiteiten medewerker:</h3>
				<div class="row">
					<div class="col-md-8">
						<textarea class="form-control margin-bottom-half" rows="6"></textarea>
						<strong class="text-success"><i class="fa fa-check"></i> Conclusie medewerker opgeslagen.</strong>
					</div>
				</div>

				<br><hr><br>

				<h3 id="organisatie">Activiteiten Organisatie:</h3>

				<div class="row">
					<div class="col-md-12">
						<div class="panel-group">
							<div
								class="panel panel-default panel-{{activityCtrl.activitiesOrgan[$index].status}}"
								ng-repeat="activity in activityCtrl.activitiesOrgan"
							>
							<div class="panel-body row">
								<div class="col-md-4">
									<div class="media">
										<div class="pull-left">
											<strong class="media-object">{{$index + 1}}</strong>
										</div>
										<div class="media-body">
											{{activity.title}}
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-md-3">Score:</label>
											<div class="col-md-9 btn-group" data-toggle="buttons">
												<button type="button" class="btn btn-default">Geen antwoord</button>
												<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
													<span class="caret"></span>
													<span class="sr-only">Toggle Dropdown</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Ja</a></li>
													<li><a href="#">Nee</a></li>
													<li><a href="#">Soms</a></li>
												</ul>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3">Complexity:</label>
											<div class="btn-group col-md-9" data-toggle="buttons">
												<button type="button" class="btn btn-default">Geen antwoord</button>
												<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
													<span class="caret"></span>
													<span class="sr-only">Toggle Dropdown</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="">Hoog</a></li>
													<li><a href="">Matig</a></li>
													<li><a href="">Beperkt</a></li>
													<li><a href="">Eenvoudig</a></li>
												</ul>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3">Urgency:</label>
											<div class="btn-group col-md-9" data-toggle="buttons">
												<button type="button" class="btn btn-default">Geen antwoord</button>
												<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
													<span class="caret"></span>
													<span class="sr-only">Toggle Dropdown</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Hoog</a></li>
													<li><a href="#">Matig</a></li>
													<li><a href="#">Beperkt</a></li>
													<li><a href="#">Geen</a></li>
												</ul>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label">Toelichting:</label>
										<textarea class="form-control" rows="6"></textarea>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group" ng-controller="ActionPointsController as actionPointsController">

										<label class="control-label">Actiepunten:</label>
										<div class="">
											<table class="table table-bordered margin-bottom-half">
												<tr ng-repeat="actionPoint in actionPointsController.actionPoints">
													<td ng-hide="hideAddActionPoint">
														{{actionPoint.name}}

														<div class="btn-group pull-right">
															<button type="button" class="btn btn-sm btn-default"><i class="fa fa-pencil"></i></button>
															<button type="button" ng-click="hideAddActionPoint=true" class="btn btn-sm btn-default"><i class="fa fa-times"></i></button>
														</div>
													</td>
												</tr>
												<tr ng-show="showAddActionPoint">
													<td>
														<div class="input-group">
															<input type="text" class="form-control" ng-model="actionPointsController.actionPoints.actionPointName">
															<span class="input-group-btn">
																<button type='button' class="btn btn-primary" ng-click="addActionPoint(actionPointsController.actionPoints.actionPoint)">Toevoegen</button>
															</span>
														</div><!-- /input-group -->
													</td>
												</tr>
											</table>
											<button type="button" class="btn btn-primary" ng-click="showAddActionPoint=true">
												Actiepunt toevoegen
											</button>
										</div>
									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>

				<h3>Conclusie activiteiten Organisatie:</h3>
				<div class="row">
					<div class="col-md-8">
						<textarea class="form-control margin-bottom-half" rows="6"></textarea>
						<strong class="text-success"><i class="fa fa-check"></i> Conclusie organisatie opgeslagen.</strong>
					</div>
				</div>
				<br>
			</div>
		</section>



		<%-- Section 3 --------------------------------%>
		<section id="check" class="page-section">
			<div class="container-fluid">
				<h2 class="underlined h1 page-section-title">Check</h2>
				<p>
					<strong>Indicatoren &bull; c1 referentiekader</strong> <br>
					De organisatie evalueert periodiek de mate waarin de prestatie gerealiseerd wordt op basis van ten minste de activiteiten, instrumenten en (indicatoren) uitkomsten.
				</p>
			</div>
		</section>


		<%-- Section 4 --------------------------------%>
		<section id="act" class="page-section">
			<div class="container-fluid">
				<h2 class="underlined h1 page-section-title">Act</h2>
				<p>
					<strong>Verbeteren of borgen:</strong> <br>
					<p>De organisatie borgt of verbetert de activiteiten en/of de instrumenten.</p>
				</p>
			</div>
		</section>
	</main>

</asp:Content>

