<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<link href="/UI/assets/css/charts.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

	<main class="app-content" role="main">

		<%-- Page header --------------------------------%>
		<header class="page-header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="page-header-content">
							<h1>Domein 4.8 – Vallen</h1>
						</div>
					</div>
				</div>
			</div>
		</header>



		<%-- Secondary navigation --------------------------------%>
		<div class="navbar navbar-extra-wide navbar-static-top navbar-bordered navbar-small margin-bottom-whole">
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
							<a href="#">Plan</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								Do <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">
									Activiteiten van de medewerker
								</a></li>
								<li><a href="#">
									Activiteiten van de organisatie
								</a></li>
							</ul>
						</li>
						<li>
							<a href="#">Check</a>
						</li>
						<li>
							<a href="#">Act</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>



		<%-- Section 1 --------------------------------%>
		<section class="container-fluid">
			<h2 class="margin-bottom-none h1">Plan</h2>
			<p><strong>Presentatie voor de client</strong><br>De cliënt wordt zo veel mogelijk behoed voor vallen. Indien een valincident voorkomt, wordt de cliënt adequaat behandeld</p>
		</section>
		<hr>



		<%-- Section 2 --------------------------------%>
		<section class="container-fluid" ng-controller="ActivityController as activityCtrl">
			<h2 class="margin-bottom-none h1">Do</h2>
			<h3>Activiteiten medewerker</h3>

			<div class="row">
				<div class="col-md-12">
					<div class="panel-group" id="accordion">
						<div
							class="panel panel-default panel-{{activityCtrl.activities[$index].status}}"
							ng-repeat="activity in activityCtrl.activities"
						>

							<div class="panel-heading">
								<a class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$index}}">
									<table class="table margin-bottom-none table-borderless" style="table-layout: fixed;">
										<tr>
											<td style="width:2em;">
												<strong>{{$index + 1}}</strong>
											</td>
											<td>{{activity.title}}</td>
										</tr>
									</table>
								</a>
							</div>

							<div id="collapse{{$index}}" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-12">
											<div class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Score:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option1"> Ja
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option2"> Soms
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option3"> Nee
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Complexity:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option1"> Hoog
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option2"> Matig
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option3"> Beperkt
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option4"> Eenvoudig
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Urgency:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option1"> Hoog
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option2"> Matig
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option3"> Beperkt
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option4"> Geen
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Toelichting:</label>
													<div class="col-sm-9">
														<textarea class="form-control" rows="6"></textarea>
													</div>
												</div>

												<div class="form-group" ng-controller="ActionPointsController as actionPointsController">

													<label class="col-sm-3 control-label">Actiepunten:</label>
													<div class="col-sm-9">
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

			<br><br>

			<h3>Activiteiten Organisatie:</h3>

			<div class="row">
				<div class="col-md-12">
					<div class="panel-group" id="accordionTwo">
						<div
							class="panel panel-default panel-{{activityCtrl.activitiesOrgan[$index].status}}"
							ng-repeat="activity in activityCtrl.activitiesOrgan"
						>

							<div class="panel-heading">
								<a class="panel-title" data-toggle="collapse" data-parent="#accordionTwo" href="#collapseTwo{{$index}}">
									<table class="table margin-bottom-none table-borderless" style="table-layout: fixed;">
										<tr>
											<td style="width:2em;">
												<strong>{{$index + 1}}</strong>
											</td>
											<td>{{activity.title}}</td>
										</tr>
									</table>
								</a>
							</div>

							<div id="collapseTwo{{$index}}" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-12">
											<div class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Score:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option1"> Ja
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option2"> Soms
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options1" id="option3"> Nee
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Complexity:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option1"> Hoog
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option2"> Matig
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option3"> Beperkt
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options2" id="option4"> Eenvoudig
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Urgency:</label>
													<div class="btn-group col-sm-9" data-toggle="buttons">
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option1"> Hoog
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option2"> Matig
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option3"> Beperkt
														</label>
														<label class="btn btn-primary">
															<input type="radio" name="options3" id="option4"> Geen
														</label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">Toelichting:</label>
													<div class="col-sm-9">
														<textarea class="form-control" rows="6"></textarea>
													</div>
												</div>

												<div class="form-group" ng-controller="ActionPointsController as actionPointsController">

													<label class="col-sm-3 control-label">Actiepunten:</label>
													<div class="col-sm-9">
														<table class="table table-bordered margin-bottom-half">
															<tr ng-repeat="actionPoint in actionPointsController.activitiesOrgan">
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
		</section>
		<hr>



		<%-- Section 3 --------------------------------%>
		<section class="container-fluid">
			<h2 class="margin-bottom-none h1">Check</h2>
			<p>
				<strong>Indicatoren &bull; c1 referentiekader</strong> <br>
				De organisatie evalueert periodiek de mate waarin de prestatie gerealiseerd wordt op basis van ten minste de activiteiten, instrumenten en (indicatoren) uitkomsten.
			</p>

			<div class="panel panel-default">
				<div class="panel-heading">
					<span class="panel-title">
						<table class="table margin-bottom-none table-borderless" style="table-layout: fixed;">
							<tr>
								<td style="width:2em;">
									<strong>C1</strong>
								</td>
								<td>Percentage bewoners met met minder dan 1 valincident in de afgelopen maand</td>
							</tr>
						</table>
					</span>
				</div>

				<div class="panel-body">
					<svg height="400" width="1200" class="xchart">
						<g transform="translate(60,0)">
							<g class="scale">
								<g class="axis axisX" transform="translate(0,380)">
									<g class="tick major" transform="translate(116.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">Januari</text>
									</g>
									<g class="tick major" transform="translate(267.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">Februari</text>
									</g>
									<g class="tick major" transform="translate(418.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">Maart</text>
									</g>
									<g class="tick major" transform="translate(569.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">April</text>
									</g>
									<g class="tick major" transform="translate(720.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">Mei</text>
									</g>
									<g class="tick major" transform="translate(871.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle;">Juni</text>
									</g>
									<g class="tick major" transform="translate(1022.5,0)" style="opacity: 1;">
										<line y2="-370" x2="0" />
										<text y="3" x="0" dy=".71em" style="text-anchor: middle; font-weight:500">Juli</text>
									</g>
									<path class="domain" d="M20,-370V0H1120V-370" />
								</g>
								<g class="axis axisY" transform="translate(0,0)">
									<g class="tick major" transform="translate(0,370)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">0</text>
									</g>
									<g class="tick major" transform="translate(0,188)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">20</text>
									</g>
									<g class="tick major" transform="translate(0,5)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">40</text>
									</g>
									<g class="tick major" transform="translate(0,324)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">5</text>
									</g>
									<g class="tick major" transform="translate(0,279)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">10</text>
									</g>
									<g class="tick major" transform="translate(0,233)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">15</text>
									</g>
									<g class="tick major" transform="translate(0,142)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">25</text>
									</g>
									<g class="tick major" transform="translate(0,96)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">30</text>
									</g>
									<g class="tick major" transform="translate(0,51)" style="opacity: 1;">
										<line x2="1140" y2="0" />
										<text x="-3" dy=".32em" style="text-anchor: end;" y="0">35</text>
									</g>
									<path class="domain" d="M1140,5H0V370H1140" />
								</g>
								<g class="axisZero">
									<line x1="0" x2="1140" y1="370" y2="370" />
								</g>
							</g>
							<g data-index="2" class=" main l1 bar color0" transform="translate(5,0)" style="opacity: 1; color:rgba(0,0,0,0.5);">
								<rect width="0" rx="3" ry="3" x="60" height="109" y="261" />
								<rect width="0" rx="3" ry="3" x="211" height="164" y="206" />
								<rect width="0" rx="3" ry="3" x="362" height="73" y="297" />
								<rect width="0" rx="3" ry="3" x="513" height="64" y="306" />
								<rect width="0" rx="3" ry="3" x="664" height="55" y="315" />
								<rect width="0" rx="3" ry="3" x="815" height="109" y="261" />
								<rect width="0" rx="3" ry="3" x="966" height="73" y="297" />
							</g>
							<g data-index="2" class=" main l2 bar   color1" transform="translate(59,0)" style="opacity: 1; color:rgba(50,50,50,0.5);">
								<rect width="0" rx="3" ry="3" x="60" height="265" y="105" />
								<rect width="0" rx="3" ry="3" x="211" height="301" y="69" />
								<rect width="0" rx="3" ry="3" x="362" height="119" y="251" />
								<rect width="0" rx="3" ry="3" x="513" height="146" y="224" />
								<rect width="0" rx="3" ry="3" x="664" height="64" y="306" />
								<rect width="0" rx="3" ry="3" x="815" height="164" y="206" />
								<rect width="0" rx="3" ry="3" x="966" height="73" y="297" />
							</g>
							<g data-index="3" class=" main l1 line        color0" style="color:rgba(0,0,0,0.5);">
								<path class="fill" fill="" d="M116.5,370C141.66666666666666,370,217.16666666666666,370,267.5,370S368.1666666666667,370,418.5,370S519.1666666666666,370,569.5,370S670.1666666666666,370,720.5,370S821.1666666666666,370,871.5,370S997.3333333333334,370,1022.5,370L1022.5,297C997.6859387387387,299.95796756756755,919.6700034977265,304.79178733823017,871.5,315S770.1281225225225,366.91593513513516,720.5,361S617.6700034977265,289.20821266176983,569.5,279S468.7886710120319,298.4986690036698,418.5,297S315.6700034977265,280.20821266176983,267.5,270S140.24121500482693,238.81738380912978,116.5,233Z" style="opacity: 1;" />
								<path class="line" d="M116.5,233C140.24121500482693,238.81738380912978,219.3299965022735,259.79178733823017,267.5,270S368.2113289879681,295.5013309963302,418.5,297S521.3299965022735,268.79178733823017,569.5,279S670.8718774774775,355.08406486486484,720.5,361S823.3299965022735,325.20821266176983,871.5,315S997.6859387387387,299.95796756756755,1022.5,297" style="opacity: 1;" />
								<circle cx="116.5" cy="233" r="5" style="opacity: 1;" />
								<circle cx="267.5" cy="270" r="5" style="opacity: 1;" />
								<circle cx="418.5" cy="297" r="5" style="opacity: 1;" />
								<circle cx="569.5" cy="279" r="5" style="opacity: 1;" />
								<circle cx="720.5" cy="361" r="5" style="opacity: 1;" />
								<circle cx="871.5" cy="315" r="5" style="opacity: 1;" />
								<circle cx="1022.5" cy="297" r="5" style="opacity: 1;" />
							</g>
							<g data-index="3" class=" main l2 line        color1">
								<path class="fill" d="M116.5,370C141.66666666666666,370,217.16666666666666,370,267.5,370S368.1666666666667,370,418.5,370S519.1666666666666,370,569.5,370S670.1666666666666,370,720.5,370S821.1666666666666,370,871.5,370S997.3333333333334,370,1022.5,370L1022.5,297C1004.0383448083564,285.87410183814853,921.788671012032,204.50133099633018,871.5,206S770.6551583486292,303.0106197010751,720.5,306S618.2641457136597,232.74757644938512,569.5,224S458.5879893466092,271.26611064294633,418.5,251S308.2980921910179,88.72358099300865,267.5,69S140.31313718166854,99.32269577125783,116.5,105Z" style="opacity: 1;" />
								<path class="line" d="M116.5,105C140.31313718166854,99.32269577125783,226.7019078089821,49.27641900699135,267.5,69S378.4120106533908,230.73388935705367,418.5,251S520.7358542863403,215.25242355061488,569.5,224S670.3448416513708,308.9893802989249,720.5,306S821.211328987968,207.49866900366982,871.5,206S1004.0383448083564,285.87410183814853,1022.5,297" style="opacity: 1;" />
								<circle cx="116.5" cy="105" r="5" style="opacity: 1;" />
								<circle cx="267.5" cy="69" r="5" style="opacity: 1;" />
								<circle cx="418.5" cy="251" r="5" style="opacity: 1;" />
								<circle cx="569.5" cy="224" r="5" style="opacity: 1;" />
								<circle cx="720.5" cy="306" r="5" style="opacity: 1;" />
								<circle cx="871.5" cy="206" r="5" style="opacity: 1;" />
								<circle cx="1022.5" cy="297" r="5" style="opacity: 1;" />
							</g>
						</g>
					</svg>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<span class="panel-title">
						<table class="table margin-bottom-none table-borderless" style="table-layout: fixed;">
							<tr>
								<td style="width:2em;">
									<strong>C2</strong>
								</td>
								<td>Percentage bewoners met met minder dan 2 valincidenten in de afgelopen maand</td>
							</tr>
						</table>
					</span>
				</div>

				<div class="panel-body">
					<svg height="400" width="1200" class="xchart"><g transform="translate(60,0)"><g class="scale"><g class="axis axisX" transform="translate(0,380)"><g class="tick major" transform="translate(116.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Januari</text></g><g class="tick major" transform="translate(267.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Februari</text></g><g class="tick major" transform="translate(418.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Maart</text></g><g class="tick major" transform="translate(569.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">April</text></g><g class="tick major" transform="translate(720.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Mei</text></g><g class="tick major" transform="translate(871.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Juni</text></g><g class="tick major" transform="translate(1022.5,0)" style="opacity: 1;"><line y2="-370" x2="0"></line><text y="3" x="0" dy=".71em" style="text-anchor: middle;">Juli</text></g><path class="domain" d="M20,-370V0H1120V-370"></path></g><g class="axis axisY" transform="translate(0,0)"><g class="tick major" transform="translate(0,370)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">0</text></g><g class="tick major" transform="translate(0,318)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">20</text></g><g class="tick major" transform="translate(0,266)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">40</text></g><g class="tick major" transform="translate(0,214)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">60</text></g><g class="tick major" transform="translate(0,161)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">80</text></g><g class="tick major" transform="translate(0,109)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">100</text></g><g class="tick major" transform="translate(0,57)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">120</text></g><g class="tick major" transform="translate(0,5)" style="opacity: 1;"><line x2="1140" y2="0"></line><text x="-3" dy=".32em" style="text-anchor: end;" y="0">140</text></g><path class="domain" d="M1140,5H0V370H1140"></path></g><g class="axisZero"><line x1="0" x2="1140" y1="370" y2="370"></line></g></g><g data-index="3" class=" main l1 line    color0"><path class="fill" d="M116.5,370C141.66666666666666,370,217.16666666666666,370,267.5,370S368.1666666666667,370,418.5,370S519.1666666666666,370,569.5,370S670.1666666666666,370,720.5,370S821.1666666666666,370,871.5,370S997.3333333333334,370,1022.5,370L1022.5,185C997.8108524797062,188.43359005249118,920.3840283397935,197.582882537519,871.5,206S769.6430671676676,229.35190676529677,720.5,237S619.2033492132236,247.404258697849,569.5,253S468.00769839130044,264.60662173092476,418.5,271S315.40459295125993,281.21353536196796,267.5,292S139.44382913501266,331.8585432493669,116.5,339Z" style="opacity: 1;"></path><path class="line" d="M116.5,339C139.44382913501266,331.8585432493669,219.5954070487401,302.78646463803204,267.5,292S368.99230160869956,277.39337826907524,418.5,271S519.7966507867764,258.595741302151,569.5,253S671.3569328323324,244.64809323470323,720.5,237S822.6159716602065,214.417117462481,871.5,206S997.8108524797062,188.43359005249118,1022.5,185" style="opacity: 1;"></path><circle cx="116.5" cy="339" r="5" style="opacity: 1;"></circle><circle cx="267.5" cy="292" r="5" style="opacity: 1;"></circle><circle cx="418.5" cy="271" r="5" style="opacity: 1;"></circle><circle cx="569.5" cy="253" r="5" style="opacity: 1;"></circle><circle cx="720.5" cy="237" r="5" style="opacity: 1;"></circle><circle cx="871.5" cy="206" r="5" style="opacity: 1;"></circle><circle cx="1022.5" cy="185" r="5" style="opacity: 1;"></circle></g><g data-index="3" class=" main l2 line    color1"><path class="fill" d="M116.5,370C141.66666666666666,370,217.16666666666666,370,267.5,370S368.1666666666667,370,418.5,370S519.1666666666666,370,569.5,370S670.1666666666666,370,720.5,370S821.1666666666666,370,871.5,370S997.3333333333334,370,1022.5,370L1022.5,47C997.8108524797062,50.43359005249118,919.4045929512599,57.213535361967956,871.5,68S768.6048877525001,104.64629899366719,720.5,115S617.9828783158191,123.5281794018764,569.5,133S465.909364274477,162.22615125633848,418.5,174S310.9699569460753,190.72716942540055,267.5,208S135.50272102085196,283.17725822653466,116.5,294Z" style="opacity: 1;"></path><path class="line" d="M116.5,294C135.50272102085196,283.17725822653466,224.03004305392471,225.27283057459945,267.5,208S371.090635725523,185.77384874366152,418.5,174S521.0171216841809,142.4718205981236,569.5,133S672.3951122474999,125.35370100633281,720.5,115S823.5954070487401,78.78646463803204,871.5,68S997.8108524797062,50.43359005249118,1022.5,47" style="opacity: 1;"></path><circle cx="116.5" cy="294" r="5" style="opacity: 1;"></circle><circle cx="267.5" cy="208" r="5" style="opacity: 1;"></circle><circle cx="418.5" cy="174" r="5" style="opacity: 1;"></circle><circle cx="569.5" cy="133" r="5" style="opacity: 1;"></circle><circle cx="720.5" cy="115" r="5" style="opacity: 1;"></circle><circle cx="871.5" cy="68" r="5" style="opacity: 1;"></circle><circle cx="1022.5" cy="47" r="5" style="opacity: 1;"></circle></g></g></svg>
				</div>
			</div>
		</section>

	</main>

</asp:Content>

