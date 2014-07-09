(function() {
	var app = angular.module('prezoApp', []);

	app.controller('LoginController', function() {});

	app.controller('ActionPointsController', function() {
		this.actionPoints = actionPointsJSON;
		this.addActionPoint = function(actionPoint) {
			this.actionPoints.push({
				name: this.actionPointName
			});
			this.actionPointName = {};
		};
	});


	app.controller('ActivityController', function() {
		this.activities = activitiesJSON;
		this.activitiesOrgan = activitiesOrganJSON;
	});

	app.controller('PrestatiesController', function() {
		this.prestaties = prestatiesJSON;

		this.cls = function(idx) {
        	return idx % 2 === 0 ? 'odd' : 'even';
        }
	});


	var actionPointsJSON = [{
		name: 'Actiepunt 1'
	}, {
		name: 'Actiepunt 2'
	}, {
		name: 'Actiepunt 3'
	}, ];


	var activitiesJSON = [
	{
		title: 'De medewerker heeft aandacht voor een veilige omgeving, met bijzondere aandacht voor het voorkomen van valincidenten'
	}, {
		title: 'De medewerker inventariseert de meest voorkomende valrisicofactoren zo nodig met behulp van een risicoanalyse-instrument bij de cliënt'
	}, {
		title: 'De medewerker reageert op alarmoproepen zoals afgesproken in de organisatie'
	}, {
		title: "De medewerker past, indien bij de zorgverlening aan de cliënt hulpmiddelen nodig zijn, deze adequaat toe.",
		status: "default"
	}, {
		title: "De medewerker merkt op wanneer een hulpmiddel ondersteunend kan zijn of legt de bedreigde leefsituatie voor aan het zorgteam en relevante disciplines (met kine en/of ergo) en zoekt samen naar een oplossing.",
		status: "default"
	}, {
		title: "De medewerker maakt afspraken met de cliënt over het gebruik van hulpmiddelen."
	}, {
		title: "De medewerker draagt, in samenspraak met het zorgteam en relevante disciplines, zorg voor het vakbekwaam gebruik van hulpmiddel door bijvoorbeeld instructie en scholing te volgen."
	}, {
		title: "De medewerker legt het gebruik van hulpmiddelen vast in het woonzorgplan."
	}, {
		title: "De medewerker past afgesproken maatregelen ter preventie van vallen toe bij een cliënt bij wie een valrisico is gedetecteerd. De maatregelen worden gecontroleerd op hun resultaten, met betrekking tot zowel het terugdringen van het aantal valletsels als onbedoelde gerelateerde gevolgen."
	}, {
		title: "De medewerker is erop gericht bij te dragen aan de kwaliteit van leven, zoals ervaren door de cliënt, door een zorgvuldig gekozen evenwicht tussen goed vakbekwaam handelen enerzijds en de wensen, voorkeuren en gebruiken van de cliënt anderzijds."
	}, {
		title: "De medewerker legt in het woonzorgplan de afspraken vast die zijn gemaakt met de cliënt en zijn naasten over de veiligheid en de valpreventie, komt de afspraken na, en verantwoordt desgevallend in het woonzorgplan waarom wordt afgeweken van de afspraken, richtlijnen en protocollen."
	}, {
		title: "De medewerker bespreekt in het zorgteam op welke wijze de praktische zelfredzaamheid van de cliënt kan worden ondersteund, de afspraken hieromtrent worden genoteerd in het woonzorgplan en regelmatig geëvalueerd en bijgestuurd."
	}, {
		title: "De medewerker evalueert regelmatig met de cliënt, het zorgteam en relevante disciplines de afspraken, de toegepaste maatregelen en bevindingen, en heeft daarbij specifiek aandacht voor de situaties waarin wordt afgeweken van de afspraken."
	}, {
		title: "De medewerker past zo nodig de afspraken en maatregelen aan, legt deze vast in het woonzorgplan en communiceert deze nieuwe afspraken aan de cliënt, het zorgteam en de relevante disciplines."
	}, {
		title: "De medewerker neemt, indien de cliënt is gevallen, adequate maatregelen in overleg met relevante disciplines."
	}, {
		title: "De medewerker heeft de juiste attitude om te werken aan veiligheid en valpreventie."
	},
	];


	var activitiesOrganJSON = [
	{
		title: "De organisatie schept voorwaarden door: te zorgen voor voldoende en deskundige medewerkers met een correcte attitude;",
		status: "default"
	}, {
		title: "De organisatie schept voorwaarden door: te zorgen voor een adequate werkwijze voor informatie en communicatie;",
		status: "default"
	}, {
		title: "De organisatie schept voorwaarden door: het organiseren van een cyclisch geborgd woonzorgplansysteem;",
		status: "default"
	}, {
		title: "De organisatie schept voorwaarden door: te zorgen voor een efficiënt registratiesysteem voor het melden en opvolgen van valincidenten;",
		status: "default"
	}, {
		title: "De organisatie schept voorwaarden door: te zorgen voor adequate instrumenten ten aanzien van risicosignalering (valrisico-screening) en opvolging (fysieke fixatie en multifactoriële evaluatie);",
		status: "default"
	}, {
		title: "De organisatie schept voorwaarden door: te zorgen voor een risicoverminderingsprogramma voor vallen, waaronder een veilige en aangepaste infrastructuur, die valrisico’s beperkt (door waar mogelijk drempels en deuren te vermijden of door te zorgen voor voldoende verlichte vloeren).",
		status: "default"
	},
	];


	var prestatiesJSON = [
	{
		title: "Domeinen",
		CSSclass: "t-domeinen",
		link: "/prestaties/domein-1-1/",
		domains: [
			{
				title: "D 1 Domein Welbevinden m.b.t. wonen en leven",
				subdomains:[
				{
					title: "Domein 1.1 - Zich geborgen en op zijn gemak voelen",
					rating: "5",
					progress: "30",
					favorite: false,
				},{
					title: "Domein 1.2 - Intramurale zorg: Thuis voelen",
					rating: "5",
					progress: "60",
					favorite: false,
				},{
					title: "Domein 1.3 - Eten en drinken (beleving)",
					rating: "5",
					progress: "10",
					favorite: true,
				},{
					title: "Domein 1.4 - Intramurale zorg: Veilige woon- en leefomgeving",
					rating: "5",
					progress: "25",
					favorite: false,
				},{
					title: "Domein 1.5 - Praktische toegankelijkheid",
					rating: "5",
					progress: "85",
					favorite: true,
				},{
					title: "Domein 1.6 - Thuiszorg: Praktische zelfredzaamheid",
					rating: "5",
					progress: "50",
					favorite: false,
				}
				]
			},{
				title: "D 2 Domein Sociaal welbevinden",
				subdomains:[{
					title: "Domein 2.4 - Zinvolle invulling van de dag",
					rating: "5",
					progress: "30",
					favorite: true
				}]
			},{
				title: "D 3 Domein Psychisch welbevinden & gezondheid",
				subdomains:[{
					title: "Domein 3.2 - Psychisch welbevinden en probleemgedrag",
					rating: "5",
					progress: "60"
				}]
			},{
				title: "D 4 Domein Lichamelijk welbevinden",
				subdomains:[{
					title: "Domein 4.4 - Geneesmiddelen",
					rating: "3",
					progress: "50",
					favorite: false,
				},{
					title: "Domein 4.6 - Drukletsel",
					rating: "3",
					progress: "50",
					favorite: false,
				},{
					title: "Domein 4.7 - Infectie",
					rating: "3",
					progress: "50",
					favorite: true,
				},{
					title: "Domein 4.8 – Vallen",
					rating: "3",
					progress: "50",
					favorite: false,
				},{
					title: "Domein 4.10 - Vrijheidsbeperkende maatregelen",
					rating: "3",
					progress: "50",
					favorite: false,
				},{
					title: "Domein 4.11 - Zorg rondom het levenseinde",
					rating: "3",
					progress: "50",
					favorite: true,
				}]
			},{
				title: "D 5 Domein Zingeving / spiritueel welbevinden",
				subdomains:[{
					title: "Domein 5.2 - Spiritualiteit: levensbeschouwing en zingeving",
					rating: "3",
					progress: "50",
					favorite: false,
				}]
			}
		]
	},{
		title: "Pijlers",
		CSSclass: "t-pijlers",
		link: "/prestaties/pijlers-1-1/",
		domains: [
			{
				title: "P 1 Pijler Woonzorgplan",
				subdomains:[
					{
						title: "Pijler 1.1 – Woonzorgplan",
						rating: "5",
						progress: "85",
						favorite: true,
					}
				],
			},{
				title: "P 2 Pijler Communicatie en informatie",
				subdomains:[
					{
						title: "Pijler 2.1 - Communicatie",
						rating: "5",
						progress: "30",
						favorite: true,
					},{
						title: "Pijler 2.2 - Informatie",
						rating: "5",
						progress: "50",
						favorite: true,
					}
				],
			},{
				title: "P 3 Pijler Zorgcontinuïteit",
				subdomains:[
					{
						title: "Pijler 3.1 - Continuïteit van woon-, zorg- en dienstverlening en toeleiding",
					}
				]
			}
		]
	},{
		title: "Voorwaarde",
		CSSclass: "t-voorwaarden",
		link: "/prestaties/voorwaarden-1-1/",
		domains: [
			{
				title: "V 1 Voorwaarde Professionele medewerker",
				subdomains:[
					{
						title: "Voorwaarde 1.1 - Deskundigheid",
					}
				]
			},{
				title: "V 2.1 De beste stuurlui gaan van wal",
				subdomains: [
					{
						title: "Voorwaarde 2.1.3 - Strategie en beleid",
						rating: "5",
						progress: "33",
						favorite: true,
					},{
						title: "Voorwaarde 2.1.5 - Kwaliteitssysteem",
						rating: "5",
						progress: "72",
						favorite: true,
					}
				]
			},{
				title: "V 2.2 Welke SLA had u gewenst",
				subdomains: [
					{
						title: "Voorwaarde 2.2.3 - Ongenoegens, klachten en verbeterwensen cliënt",
						rating: "5",
						progress: "30",
						favorite: true,
					}
				]
			},{
				title: "V 2.4 Gelooft u in de kracht van uw mensen",
				subdomains: [
					{
						title: "Voorwaarde 2.4.1 - Goed werkgeverschap",
						rating: "5",
						progress: "95",
						favorite: true,
					},{
						title: "Voorwaarde 2.4.6 - Ongenoegens, klachten en verbeterwensen medewerker",
						rating: "5",
						progress: "55",
						favorite: true,
					}
				]
			},{
				title: "V 2.7 Sloop de muren",
				subdomains: [
					{
						title: "Voorwaarde 2.7.1 - Lokale samenwerking en integratie in de buurt",
					},{
						title: "Voorwaarde 2.7.2 - Samenhang met de mantelzorgers en vrijwilligers",
					}
				]
			}
		]
	}];
})();