<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hausarbeit</title>
</head>
<body style="background-color: pink">
<script src='https://ccmjs.github.io/akless-components/menu/versions/ccm.menu-2.11.0.js'></script><ccm-menu-2-11-0 key='{"css":["ccm.load","https://ccmjs.github.io/akless-components/menu/resources/tabs.css"],"data":{"entries":[{"title":"Manager","content":"Content of menu entry A"},{"title":"Menu Item B","content":"Content of menu entry B"},{"title":"Menu Item C","content":"Content of menu entry C"}]},"helper":["ccm.load","https://ccmjs.github.io/akless-components/modules/versions/helper-5.0.0.mjs"],"html":["ccm.load","https://ccmjs.github.io/akless-components/menu/resources/templates.html"],"meta":[{"name":"dms-apps","url":"https://ccm2.inf.h-brs.de"},"1584652120733X9235786672164359"],"created_at":"2020-03-19T22:08:41+01:00","updated_at":"2020-04-10T11:58:31+02:00"}'></ccm-menu-2-11-0>

<script src='https://ccmjs.github.io/mkaul-components/parkhaus/versions/ccm.parkhaus-9.0.0.js'></script>
<ccm-parkhaus-9-0-0 key='{"name":"Parkhaus-Club","Max":10,"delay":100,"open_from":6,"open_to":24,"simulation_speed":60,
"server_url":"http://localhost:8080/Hausarbeit/Parkhaus",
"extra_buttons":[{"extra_class":"Summe","extra_inner":"Summe","extra_popup_title":"Summe"},
{"extra_class":"avg","extra_inner":"Durchschnitt","extra_popup_title":"Durchschnitt"},
{"extra_class":"Gefaelltmir","extra_inner":"Gefaellt mir","extra_popup_title":"Daumen nach oben"},
{"extra_class":"Gefaelltmirnicht","extra_inner":"Gefaellt mir nicht","extra_popup_title":"Daumen nach unten"}],
"client_categories":["gehbehindert","gesund"],
"extra_charts":["Fahrerstatistik","Nutzererfahrung"],
"html":{"main":{"inner":[{"tag":"h2","inner":["Autos im Parkhaus \"%name%\": &nbsp; ",{"tag":"span","class":"counter","inner":"0"},
", &nbsp; Max: &nbsp; ",{"tag":"input","class":"Max","type":"number","min":0,"value":"%Max%","oninput":"%oninput%"},
" &nbsp; Frei: &nbsp; ",{"tag":"span","class":"free","inner":" &nbsp; &nbsp; "}," &nbsp; �ffnungszeiten von : &nbsp; ",
{"tag":"input","class":"open_from","type":"number","min":0,"max":24,"value":"%open_from%","oninput":"%oninput%"},
" &nbsp; bis: &nbsp; ",{"tag":"input","class":"open_to","type":"number","min":0,"max":24,"value":"%open_to%","oninput":"%oninput%"},
" &nbsp; ",{"tag":"div","class":"date","inner":"%date%"},"Simulation: &nbsp; ",
{"tag":"button","class":"start","onclick":"%start_simulation%","inner":"Start","title":"Start simulation!"},
{"tag":"button","class":"stop","onclick":"%stop%","inner":"Stop","title":"Stop simulation!"}]},
{"class":"button_container","inner":[{"tag":"button","class":"enter","onclick":"%enter%","inner":"Enter","title":
"Drive your car into the garage!"}," &nbsp; Ticket: ",{"tag":"span","class":"ticket_hash"}]},
{"class":"button_container","inner":[{"tag":"span","class":"extra_buttons"}]},
{"class":"button_container","inner":[{"tag":"span","class":"extra_charts"}]},
{"tag":"img","class":"entry","src":"%car%","width":"80","height":"30"},{"tag":"span","class":"traffic_light"},
{"tag":"img","src":"%parking_garage%","width":"125","height":"117"},{"class":"exit_car_container","inner":
{"tag":"img","class":"exit","src":"%empty%","width":"80","height":"30"}},{"class":"garage"},{"tag":"hr"},
{"tag":"table","inner":[{"tag":"tr","inner":[{"tag":"th","inner":"Nr","title":"Nr des Autos"},
{"tag":"th","inner":"Von","title":"Startzeit des Parkens"},{"tag":"th","inner":"Bis","title":"Endzeit des Parkens"},
{"tag":"th","inner":"Dauer","title":"Wie lange war das Auto im Parkhaus?"},
{"tag":"th","inner":"Ticket","title":"Ticket Hash"},{"tag":"th","inner":"Preis","title":"Parkgeb�hren"}]}]},
{"tag":"div","class":"errors","style":"display: none;"}]},"row":{"tag":"tr","inner":[{"tag":"td","inner":"%nr%"},
{"tag":"td","inner":"%von%"},{"tag":"td","inner":"%bis%"},{"tag":"td","inner":"%dauer%"},{"tag":"td","inner":"%ticket%"},
{"tag":"td","inner":"%preis%"}]},"extra_button_div":
{"inner":[{"tag":"button","class":"%extra_class%","inner":"%extra_inner%","title":"%extra_popup_title%"},
{"tag":"span","class":"%extra_class%"}]},"extra_chart_div":
{"inner":[{"tag":"button","class":"%extra_class%","inner":"%extra_inner%","title":"%extra_popup_title%"},
{"tag":"input","class":"%extra_class%","type":"checkbox"},{"tag":"div","class":"%extra_class%"}]}},"images":
{"car":"https://ccmjs.github.io/mkaul-components/parkhaus/resources/car.png",
"parking_garage":"https://ccmjs.github.io/mkaul-components/parkhaus/resources/parking_garage.png",
"empty":"https://ccmjs.github.io/mkaul-components/parkhaus/resources/empty.png"},
"css":["ccm.load","https://kaul.inf.h-brs.de/data/ccmjs/mkaul-components/parkhaus/resources/default.css"],
"chart":["ccm.component","https://ccmjs.github.io/mkaul-components/plotly/versions/ccm.plotly-1.1.2.js"],
"traffic_light":{"tag":"svg","viewBox":"0 0 200 500","xmlns":"http://www.w3.org/2000/svg","width":"40","height":"100","inner":
[{"tag":"rect","style":"fill: rgb(100, 86, 86);","width":"200","height":"500","rx":"30","ry":"30"},
{"tag":"circle","id":"green","style":"fill: rgb(77, 251, 3);","cx":"98.65","cy":"407.68","r":"70.2"},
{"tag":"circle","id":"yellow","style":"fill: rgb(239, 251, 3);","cx":"98.78","cy":"247.42","r":"70.2"},
{"tag":"circle","id":"red","style":"fill: rgb(251, 3, 3);","cx":"99.55","cy":"81.53","r":"70.2"}]},
"car":{"tag":"svg","id":"%id%","class":"car","viewBox":"0 0 310 255","xmlns":"http://www.w3.org/2000/svg","inner":
[{"tag":"g","transform":"translate(2.441785,-204.56609)","style":"fill:#000000;fill-opacity:1;stroke:none","inner":
[{"tag":"path","style":"fill-opacity: 0.85; fill-rule: evenodd; paint-order: stroke; stroke: rgb(0, 0, 0);
 stroke-width: 8px; stroke-linecap: butt; stroke-linejoin: miter;
  stroke-miterlimit: 4; fill: %color%;","d":"m -53.582954,-415.35856 c -13.726061,-0.48561 -25.554278,3.95581 -32.848561,19.90697 l -26.336555,65.94442 c -19.18907,5.29042 -27.54259,19.22853 -27.98516,30.66415 l 0,86.34597 25.30617,0 0,29.05676 c -1.22633,27.69243 44.157018,28.76272 45.171926,-0.28851 l 0.535799,-28.52096 164.160378,0 0.535798,28.52096 c 1.014898,29.05121 46.439469,27.98094 45.213139,0.28851 l 0,-29.05676 25.26495,0 0,-86.34597 c -0.44257,-11.43562 -8.79607,-25.37375 -27.98516,-30.66415 l -26.33655,-65.94442 c -7.29428,-15.95113 -19.122506,-20.39255 -32.848559,-19.90697 l -131.847615,0 z m 3.008714,22.87447 c 1.148077,-0.006 2.358386,0.0326 3.585728,0.0824 l 119.070884,0.37094 c 10.897921,-0.25425 15.519886,3.3e-4 20.154262,10.30382 l 18.959016,51.10692 -197.50352,-0.24729 18.752943,-49.74682 c 2.924271,-9.95822 8.944151,-11.82604 16.980687,-11.87 l 0,3e-5 z m -41.462551,87.45878 c 11.803644,2e-5 21.39072,9.54587 21.39072,21.34951 0,11.80363 -9.587076,21.39072 -21.39072,21.39072 -11.803639,0 -21.390719,-9.58708 -21.390719,-21.39072 0,-11.80366 9.58708,-21.34951 21.390719,-21.34951 z m 209.950531,0 c 11.80364,-2e-5 21.3495,9.54587 21.3495,21.34951 0,11.80364 -9.54586,21.39072 -21.3495,21.39072 -11.80364,10e-6 -21.390719,-9.58708 -21.390719,-21.39072 0,-11.80364 9.587079,-21.34951 21.390719,-21.34951 z m -14.69214,-28.11863 0,0 z",
  "transform":"matrix(0.9797897,0,0,0.9877946,140.46678,619.88975)","inner":{"tag":"title","inner":"%tooltip%"}}]},
  {"tag":"rect","style":"fill: rgb(216, 216, 216); paint-order: stroke; stroke: rgb(0, 0, 0);
   stroke-width: 8px;","x":"100","y":"134.69","width":"111.26","height":"44.79","rx":"15","ry":"15"},
{"tag":"text","text-anchor":"middle","x":"150","y":"170","style":"white-space: pre; fill: rgb(51, 51, 51);
 font-size: 38px; text-align: center;","inner":"%nr%"}]}}'></ccm-parkhaus-9-0-0>
</body>
</html>