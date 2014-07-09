<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<link href="/UI/assets/css/charts.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

	<main class="app-content" role="main" ng-controller="PrestatiesController as prestatiesCtrl">

			<%-- Page header --------------------------------%>
			<header class="page-header">
				<div class="container-fluid">
					<div class="page-header-content">
						<h1>Prezo - UI Prototype</h1>
						<p>Prestatiemodel in De Zorg </p>
					</div>
				</div>
			</header>
			<section  ng-repeat="prestatie in prestatiesCtrl.prestaties" class="page-section t-prestaties {{ prestatie.CSSclass }}">
				<div class="container-fluid">

					<h2 class="page-section-title">{{prestatie.title}}</h2>
					<div ng-repeat="domain in prestatie.domains">
						<h3>{{domain.title}}</h3>

						<div class="table-responsive">
							<table class="table table-cells-middle">
								<thead>
									<tr>
										<th></th>
										<th>Naam</th>
										<th>Status</th>
										<th>Best-practise ZEI</th>
										<th class="text-right">Acties</th>
									</tr>
								</thead>

								<tbody>
									<tr ng-repeat="subdomain in domain.subdomains">
										<td>
											<a ng-hide="prestatie.favorite" class="text-muted" href="#"><i class="fa fa-star-o"></i></a>
											<a ng-show="prestatie.favorite" class="text-muted" href="#"><i class="fa fa-star"></i></a>
										</td>
										<td class="col-md-6">
											<a href="{{prestatie.link}}">{{subdomain.title}}</a>
										</td>
										<td class="col-md-2">
											<span class="badge-group achievement-status">
												<a href="#" class="badge badge-bullet badge-default active"></a>
												<a href="#" class="badge badge-bullet badge-default"></a>
												<a href="#" class="badge badge-bullet badge-default"></a>
												<a href="#" class="badge badge-bullet badge-default"></a>
												<a href="#" class="badge badge-bullet badge-default"></a>
												&nbsp;
												<a href="#" class="achievement-status-null">
													<i class="fa fa-times text-danger"></i>
												</a> &nbsp;
											</span>
										</td>
										<td class="col-md-2">
											<div class="progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="{{subdomain.progress}}" aria-valuemin="0" aria-valuemax="100" style="width: {{subdomain.progress}}%;">
													<span class="sr-only"></span>
												</div>
											</div>
										</td>
										<td class="col-md-2 text-right">
											<div class="btn-group">
												<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Acties <span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="?q=node/56"> Toolkit</a></li>
													<li><a href="#">Historiek</a></li>
												</ul>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<br>
						<br>

						<div class="modal" id="achstatusmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button id="btnclose" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" id="myModalLabel">Status van de prestatie</h4>
									</div>
									<div class="modal-body">
										Varander de status van de prestatie via de statusbalk of beeindig de cyclus voortijdig
										<div class="container" style="position: relative; width: 200px"><img id="statusimg" typeof="foaf:Image" src="http://www.theoryx.com/pyxima/prezo/_dev/sites/default/files/styles/thumbnail/public/nostatus.png?itok=MeSneoXl"></div>
										&nbsp;
										<div class="container" style="position: relative; width: 500px"><button id="1" type="button" class="btn btn-default" style="width: 140px; height: 30px">PLAN</button>&nbsp;<button id="2" type="button" class="btn btn-default" style="width: 140px; height: 30px">DO</button>&nbsp;<button id="3" type="button" class="btn btn-default" style="width: 140px; height: 30px">CHECK</button></div>
										<div class="container" style="position: relative; width: 500px"><button id="4" type="button" class="btn btn-default" style="width: 140px; height: 30px">Voorstel plan</button>&nbsp;<button id="5" type="button" class="btn btn-default" style="width: 140px; height: 30px">Goedgekeurd plan</button>&nbsp;<button id="6" type="button" class="btn btn-default" style="width: 140px; height: 30px">Stop cyclos</button></div>
										<div class="container" style="width: 500px"><button id="7" type="button" class="btn btn-default" style="width: 140px; height: 30px">Voorstel geweigerd</button></div>
									</div>
									<div class="modal-footer"><button id="cancelbtn" type="button" class="btn btn-default" data-dismiss="modal">Annuleer</button><button id="savebtn" type="button" class="btn btn-primary">Bewaar</button></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

	</main>

</asp:Content>

