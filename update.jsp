<html>

<head>
<title>Create an Account&nbsp; Your account gives you access to our services</title>
<script language="javascript">
formstatus="true"
function validate(a)
{
	if(document.getElementById("pass").value!=document.getElementById("repass").value)
	{
			document.getElementById("checkpass").style.visibility="visible";
			document.getElementById(("spass")).innerHTML="";
			document.getElementById(("srepass")).innerHTML="";
			document.getElementById("passsign").style.visibility="hidden";
			document.getElementById("repasssign").style.visibility="hidden";
			formstatus="false";
			return false;
	}
	else
	{
			document.getElementById("checkpass").style.visibility="hidden";
			formstatus="true"
	}
	if(document.getElementById(a).value=="")
	{
			document.getElementById((a+"sign")).src="images/erroricon1.gif"
			document.getElementById((a+"sign")).style.visibility="visible";
			document.getElementById(("s"+a)).innerHTML="<font color='red' face='arial' size='2'>Check the field</font>";
			formstatus="false"
	}
	else
	{
		document.getElementById((a+"sign")).style.visibility="visible";
		document.getElementById((a+"sign")).src="images/check.gif"
		document.getElementById(("s"+a)).innerHTML="";
		formstatus="true"
	}
}

function checkForm(e)
{ 
	fname=document.getElementById("fname").value
	mname=document.getElementById("mname").value
	lname=document.getElementById("lname").value
	
	address1=document.getElementById("address1").value
	address2=document.getElementById("address2").value
	address3=document.getElementById("address3").value
	zip=document.getElementById("zip").value
	loginid=document.getElementById("loginid").value
	pass=document.getElementById("pass").value
	repass=document.getElementById("repass").value
	
    if(fname=="" || mname=="" || lname=="" || address1=="" || address2=="" || address3=="" || zip=="" || loginid=="" || pass=="" || repass=="" || formstatus=="false")
     e.returnValue = false; 
}
</script>
<style type="text/css">
<!--
.style1 {
	font-style: italic;
	color: #000099;
	font-weight: bold;
}
-->
</style>
</head>

<body onload="document.getElementById('fname').focus()">
<div align="center">
<form name="form1" onSubmit = "return checkForm(event)" action="userupdate.jsp" method="post">
<table>
<tr><td colspan="3"><center><img src="ptads/123inkjets_120x60a.gif"><img src="ptads/468x60-at4-5.gif"></center></td></tr>
<tr><td><img src="ptads/123inkjets_120x600b.gif" width="124" height="561"></td>
<td>
<TABLE cellSpacing=0 cellPadding=0 width="755" height="1" style="font-family: Arial; font-size: 10pt; border-collapse: collapse" bordercolor="#111111" bgcolor="#FFFFFF">
  <tr>
    <td width="594"><span class="style1"><font size="4">Update Your Account</font></span><br>
    <br>
    <font size="-1">Your account gives you access to our services..</font> <br>
    <br>
&nbsp;</td>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="594" rowspan="13">
    
    <TABLE cellSpacing=0 cellPadding=0 width="769" height="476" style="border-color:#C7D5E9; border-style:solid; font-family: Arial; font-size: 10pt; border-collapse: collapse" bordercolor="#111111" bgcolor="#FFFFFF">
  <tr>
    <td colspan="4" height="16" bgcolor="#C7D5E9">&nbsp;<b>Personal 
    Details</b></td>
    <td width="34" height="16" bgcolor="#C7D5E9">&nbsp;</td>
    </tr>
  <tr>
    <td width="141" height="30">&nbsp;First Name</td>
    <td height="30" colspan="2">
    <input type="text" name="fname" id="fname" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-size:9pt; font-family:Arial" onblur="validate(id)"></td>
    <td height="30" colspan="2" valign="middle"> 
    &nbsp; 
    <img src="images/check.gif" style="visibility:hidden" id="fnamesign" width="12" height="12"><span id="sfname">&nbsp;</span></td>
  </tr>
  <tr>
    <td width="141" height="30">&nbsp;Last Name</td>
    <td height="30" colspan="2">
    <input type="text" id="lname" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="lname"></td>
    <td height="30" colspan="2">
    &nbsp; 
    <img src="images/check.gif" style="visibility:hidden" id="lnamesign" width="12" height="12"> 
    <span id="slname">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="30">&nbsp;Address</td>
    <td height="30" colspan="2">
    <input type="text" id="address1" size="46" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="address"></td>
    <td height="30" colspan="2">
    &nbsp; 
    <img src="images/check.gif" style="visibility:hidden" id="address1sign" width="12" height="12"> 
    <span id="saddress1">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="30" valign="top">&nbsp;Zip Code</td>
    <td height="30" valign="top" colspan="2">
    <input type="text" id="zip" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="zip"></td>
    <td height="30" colspan="2" valign="top">
    &nbsp; 
    <img src="images/check.gif" style="visibility:hidden" id="zipsign" width="12" height="12"> 
    <span id="szip">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="30" valign="top">&nbsp;Contact Number</td>
    <td height="30" valign="top" colspan="2">
    <input type="text" id="contact" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="contact"></td>
    <td height="30" colspan="2" valign="top">
    &nbsp; 
    <img src="images/check.gif" style="visibility:hidden" id="contactsign" width="12" height="12"> 
    <span id="scontact">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="30" valign="top">&nbsp;Location</td>
    <td height="30" valign="top" colspan="2">
    <SELECT id=loc name=loc style="font-family: Arial; font-size: 9pt"> 
                          <OPTION value=AF>Afghanistan (&#1575;&#1601;&#1594;&#1575;&#1606;&#1587;&#1578;&#1575;&#1606;)</OPTION> 
                          <OPTION value=AX>Aland Islands</OPTION> <OPTION 
                          value=AL>Albania (Shqip�ria)</OPTION> <OPTION 
                          value=DZ>Algeria (&#1575;&#1604;&#1580;&#1586;&#1575;&#1574;&#1585;)</OPTION> <OPTION 
                          value=AS>American Samoa</OPTION> <OPTION 
                          value=AD>Andorra</OPTION> <OPTION 
                          value=AO>Angola</OPTION> <OPTION 
                          value=AI>Anguilla</OPTION> <OPTION 
                          value=AQ>Antarctica</OPTION> <OPTION value=AG>Antigua 
                          and Barbuda</OPTION> <OPTION 
                          value=AR>Argentina</OPTION> <OPTION value=AM>Armenia 
                          (&#1344;&#1377;&#1397;&#1377;&#1405;&#1407;&#1377;&#1398;)</OPTION> <OPTION value=AW>Aruba</OPTION> 
                          <OPTION value=AU>Australia</OPTION> <OPTION 
                          value=AT>Austria (�sterreich)</OPTION> <OPTION 
                          value=AZ>Azerbaijan (Az&#601;rbaycan)</OPTION> <OPTION 
                          value=BS>Bahamas</OPTION> <OPTION value=BH>Bahrain 
                          (&#1575;&#1604;&#1576;&#1581;&#1585;&#1610;&#1606;)</OPTION> <OPTION value=BD>Bangladesh 
                          (&#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486;)</OPTION> <OPTION value=BB>Barbados</OPTION> 
                          <OPTION value=BY>Belarus (&#1041;&#1077;&#1083;&#1072;&#1088;&#1091;&#769;&#1089;&#1100;)</OPTION> <OPTION 
                          value=BE>Belgium (Belgi�)</OPTION> <OPTION 
                          value=BZ>Belize</OPTION> <OPTION value=BJ>Benin 
                          (B�nin)</OPTION> <OPTION value=BM>Bermuda</OPTION> 
                          <OPTION value=BT>Bhutan (&#3936;&#3926;&#4018;&#3956;&#3906;&#3851;&#3937;&#3956;&#3939;)</OPTION> <OPTION 
                          value=BO>Bolivia</OPTION> <OPTION value=BA>Bosnia and 
                          Herzegovina (Bosna i Hercegovina)</OPTION> <OPTION 
                          value=BW>Botswana</OPTION> <OPTION value=BV>Bouvet 
                          Island</OPTION> <OPTION value=BR>Brazil 
                          (Brasil)</OPTION> <OPTION value=IO>British Indian 
                          Ocean Territory</OPTION> <OPTION value=BN>Brunei 
                          (Brunei Darussalam)</OPTION> <OPTION value=BG>Bulgaria 
                          (&#1041;&#1098;&#1083;&#1075;&#1072;&#1088;&#1080;&#1103;)</OPTION> <OPTION value=BF>Burkina 
                          Faso</OPTION> <OPTION value=BI>Burundi 
                          (Uburundi)</OPTION> <OPTION value=KH>Cambodia 
                          (Kampuchea)</OPTION> <OPTION value=CM>Cameroon 
                          (Cameroun)</OPTION> <OPTION value=CA>Canada</OPTION> 
                          <OPTION value=CV>Cape Verde (Cabo Verde)</OPTION> 
                          <OPTION value=KY>Cayman Islands</OPTION> <OPTION 
                          value=CF>Central African Republic (R�publique 
                          Centrafricaine)</OPTION> <OPTION value=TD>Chad 
                          (Tchad)</OPTION> <OPTION value=CL>Chile</OPTION> 
                          <OPTION value=CN>China (&#20013;&#22269;)</OPTION> <OPTION 
                          value=CX>Christmas Island</OPTION> <OPTION 
                          value=CC>Cocos Islands</OPTION> <OPTION 
                          value=CO>Colombia</OPTION> <OPTION value=KM>Comoros 
                          (Comores)</OPTION> <OPTION value=CG>Congo</OPTION> 
                          <OPTION value=CD>Congo, Democratic Republic of 
                          the</OPTION> <OPTION value=CK>Cook Islands</OPTION> 
                          <OPTION value=CR>Costa Rica</OPTION> <OPTION 
                          value=CI>C�te d'Ivoire</OPTION> <OPTION 
                          value=HR>Croatia (Hrvatska)</OPTION> <OPTION 
                          value=CU>Cuba</OPTION> <OPTION value=CY>Cyprus 
                          (&#922;&#965;&#960;&#961;&#959;&#962;)</OPTION> <OPTION value=CZ>Czech Republic 
                          (&#268;esko)</OPTION> <OPTION value=DK>Denmark 
                          (Danmark)</OPTION> <OPTION value=DJ>Djibouti</OPTION> 
                          <OPTION value=DM>Dominica</OPTION> <OPTION 
                          value=DO>Dominican Republic</OPTION> <OPTION 
                          value=TL>East Timor (Timor-Leste)</OPTION> <OPTION 
                          value=EC>Ecuador</OPTION> <OPTION value=EG>Egypt 
                          (&#1605;&#1589;&#1585;)</OPTION> <OPTION value=SV>El Salvador</OPTION> 
                          <OPTION value=GQ>Equatorial Guinea (Guinea 
                          Ecuatorial)</OPTION> <OPTION value=ER>Eritrea 
                          (Ertra)</OPTION> <OPTION value=EE>Estonia 
                          (Eesti)</OPTION> <OPTION value=ET>Ethiopia 
                          (Ityop'iya)</OPTION> <OPTION value=FK>Falkland 
                          Islands</OPTION> <OPTION value=FO>Faroe 
                          Islands</OPTION> <OPTION value=FJ>Fiji</OPTION> 
                          <OPTION value=FI>Finland (Suomi)</OPTION> <OPTION 
                          value=FR>France</OPTION> <OPTION value=GF>French 
                          Guiana</OPTION> <OPTION value=PF>French 
                          Polynesia</OPTION> <OPTION value=TF>French Southern 
                          Territories</OPTION> <OPTION value=GA>Gabon</OPTION> 
                          <OPTION value=GM>Gambia</OPTION> <OPTION 
                          value=GE>Georgia (&#4321;&#4304;&#4325;&#4304;&#4320;&#4311;&#4309;&#4308;&#4314;&#4317;)</OPTION> <OPTION 
                          value=DE>Germany (Deutschland)</OPTION> <OPTION 
                          value=GH>Ghana</OPTION> <OPTION 
                          value=GI>Gibraltar</OPTION> <OPTION value=GR>Greece 
                          ('E&#955;&#955;&#945;&#962;)</OPTION> <OPTION value=GL>Greenland</OPTION> 
                          <OPTION value=GD>Grenada</OPTION> <OPTION 
                          value=GP>Guadeloupe</OPTION> <OPTION 
                          value=GU>Guam</OPTION> <OPTION 
                          value=GT>Guatemala</OPTION> <OPTION 
                          value=GG>Guernsey</OPTION> <OPTION value=GN>Guinea 
                          (Guin�e)</OPTION> <OPTION value=GW>Guinea-Bissau 
                          (Guin�-Bissau)</OPTION> <OPTION 
                          value=GY>Guyana</OPTION> <OPTION value=HT>Haiti 
                          (Ha�ti)</OPTION> <OPTION value=HM>Heard Island and 
                          McDonald Islands</OPTION> <OPTION 
                          value=HN>Honduras</OPTION> <OPTION value=HK>Hong 
                          Kong</OPTION> <OPTION value=HU>Hungary 
                          (Magyarorsz�g)</OPTION> <OPTION value=IS>Iceland 
                          (�sland)</OPTION> <OPTION value=IN 
                          selected>India</OPTION> <OPTION 
                          value=ID>Indonesia</OPTION> <OPTION value=IR>Iran 
                          (&#1575;&#1740;&#1585;&#1575;&#1606;)</OPTION> <OPTION value=IQ>Iraq 
                          (&#1575;&#1604;&#1593;&#1585;&#1575;&#1602;)</OPTION> <OPTION value=IE>Ireland</OPTION> 
                          <OPTION value=IM>Isle of Man</OPTION> <OPTION 
                          value=IL>Israel (&#1497;&#1513;&#1512;&#1488;&#1500;)</OPTION> <OPTION 
                          value=IT>Italy (Italia)</OPTION> <OPTION 
                          value=JM>Jamaica</OPTION> <OPTION value=JP>Japan 
                          (&#26085;&#26412;)</OPTION> <OPTION value=JE>Jersey</OPTION> <OPTION 
                          value=JO>Jordan (&#1575;&#1604;&#1575;&#1585;&#1583;&#1606;)</OPTION> <OPTION 
                          value=KZ>Kazakhstan (&#1178;&#1072;&#1079;&#1072;&#1179;&#1089;&#1090;&#1072;&#1085;)</OPTION> <OPTION 
                          value=KE>Kenya</OPTION> <OPTION 
                          value=KI>Kiribati</OPTION> <OPTION value=KW>Kuwait 
                          (&#1575;&#1604;&#1603;&#1608;&#1610;&#1578;)</OPTION> <OPTION value=KG>Kyrgyzstan 
                          (&#1050;&#1099;&#1088;&#1075;&#1099;&#1079;&#1089;&#1090;&#1072;&#1085;)</OPTION> <OPTION value=LA>Laos 
                          (&#3737;&#3749;&#3762;&#3751;)</OPTION> <OPTION value=LV>Latvia 
                          (Latvija)</OPTION> <OPTION value=LB>Lebanon 
                          (&#1604;&#1576;&#1606;&#1575;&#1606;)</OPTION> <OPTION value=LS>Lesotho</OPTION> 
                          <OPTION value=LR>Liberia</OPTION> <OPTION 
                          value=LY>Libya (&#1604;&#1610;&#1576;&#1610;&#1575;)</OPTION> <OPTION 
                          value=LI>Liechtenstein</OPTION> <OPTION 
                          value=LT>Lithuania (Lietuva)</OPTION> <OPTION 
                          value=LU>Luxembourg (L�tzebuerg)</OPTION> <OPTION 
                          value=MO>Macao</OPTION> <OPTION value=MK>Macedonia 
                          (&#1052;&#1072;&#1082;&#1077;&#1076;&#1086;&#1085;&#1080;&#1112;&#1072;)</OPTION> <OPTION value=MG>Madagascar 
                          (Madagasikara)</OPTION> <OPTION 
                          value=MW>Malawi</OPTION> <OPTION 
                          value=MY>Malaysia</OPTION> <OPTION value=MV>Maldives 
                          (&#1934;&#1962;&#1942;&#1965;&#1927;&#1968;&#1923;&#1959; &#1940;&#1959;&#1927;&#1968;&#1923;&#1960;&#1920;&#1963;&#1929;&#1968;&#1942;)</OPTION> <OPTION 
                          value=ML>Mali</OPTION> <OPTION value=MT>Malta</OPTION> 
                          <OPTION value=MH>Marshall Islands</OPTION> <OPTION 
                          value=MQ>Martinique</OPTION> <OPTION 
                          value=MR>Mauritania (&#1605;&#1608;&#1585;&#1610;&#1578;&#1575;&#1606;&#1610;&#1575;)</OPTION> <OPTION 
                          value=MU>Mauritius</OPTION> <OPTION 
                          value=YT>Mayotte</OPTION> <OPTION value=MX>Mexico 
                          (M�xico)</OPTION> <OPTION value=FM>Micronesia</OPTION> 
                          <OPTION value=MD>Moldova</OPTION> <OPTION 
                          value=MC>Monaco</OPTION> <OPTION value=MN>Mongolia 
                          (&#1052;&#1086;&#1085;&#1075;&#1086;&#1083; &#1059;&#1083;&#1089;)</OPTION> <OPTION value=ME>Montenegro 
                          (&#1062;&#1088;&#1085;&#1072; &#1043;&#1086;&#1088;&#1072;)</OPTION> <OPTION 
                          value=MS>Montserrat</OPTION> <OPTION value=MA>Morocco 
                          (&#1575;&#1604;&#1605;&#1594;&#1585;&#1576;)</OPTION> <OPTION value=MZ>Mozambique 
                          (Mo�ambique)</OPTION> <OPTION value=MM>Myanmar 
                          (Burma)</OPTION> <OPTION value=NA>Namibia</OPTION> 
                          <OPTION value=NR>Nauru (Naoero)</OPTION> <OPTION 
                          value=NP>Nepal (&#2344;&#2375;&#2346;&#2366;&#2354;)</OPTION> <OPTION 
                          value=NL>Netherlands (Nederland)</OPTION> <OPTION 
                          value=AN>Netherlands Antilles</OPTION> <OPTION 
                          value=NC>New Caledonia</OPTION> <OPTION value=NZ>New 
                          Zealand</OPTION> <OPTION value=NI>Nicaragua</OPTION> 
                          <OPTION value=NE>Niger</OPTION> <OPTION 
                          value=NG>Nigeria</OPTION> <OPTION 
                          value=NU>Niue</OPTION> <OPTION value=NF>Norfolk 
                          Island</OPTION> <OPTION value=MP>Northern Mariana 
                          Islands</OPTION> <OPTION value=KP>North Korea 
                          (&#51312;&#49440;)</OPTION> <OPTION value=NO>Norway (Norge)</OPTION> 
                          <OPTION value=OM>Oman (&#1593;&#1605;&#1575;&#1606;)</OPTION> <OPTION 
                          value=PK>Pakistan (&#1662;&#1575;&#1705;&#1587;&#1578;&#1575;&#1606;)</OPTION> <OPTION 
                          value=PW>Palau (Belau)</OPTION> <OPTION 
                          value=PS>Palestinian Territory</OPTION> <OPTION 
                          value=PA>Panama (Panam�)</OPTION> <OPTION 
                          value=PG>Papua New Guinea</OPTION> <OPTION 
                          value=PY>Paraguay</OPTION> <OPTION value=PE>Peru 
                          (Per�)</OPTION> <OPTION value=PH>Philippines 
                          (Pilipinas)</OPTION> <OPTION 
                          value=PN>Pitcairn</OPTION> <OPTION value=PL>Poland 
                          (Polska)</OPTION> <OPTION value=PT>Portugal</OPTION> 
                          <OPTION value=PR>Puerto Rico</OPTION> <OPTION 
                          value=QA>Qatar (&#1602;&#1591;&#1585;)</OPTION> <OPTION 
                          value=RE>Reunion</OPTION> <OPTION value=RO>Romania 
                          (Rom�nia)</OPTION> <OPTION value=RU>Russia 
                          (&#1056;&#1086;&#1089;&#1089;&#1080;&#1103;)</OPTION> <OPTION value=RW>Rwanda</OPTION> 
                          <OPTION value=SH>Saint Helena</OPTION> <OPTION 
                          value=KN>Saint Kitts and Nevis</OPTION> <OPTION 
                          value=LC>Saint Lucia</OPTION> <OPTION value=PM>Saint 
                          Pierre and Miquelon</OPTION> <OPTION value=VC>Saint 
                          Vincent and the Grenadines</OPTION> <OPTION 
                          value=WS>Samoa</OPTION> <OPTION value=SM>San 
                          Marino</OPTION> <OPTION value=ST>S�o Tom� and 
                          Pr�ncipe</OPTION> <OPTION value=SA>Saudi Arabia 
                          (&#1575;&#1604;&#1605;&#1605;&#1604;&#1603;&#1577; &#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; &#1575;&#1604;&#1587;&#1593;&#1608;&#1583;&#1610;&#1577;)</OPTION> <OPTION 
                          value=SN>Senegal (S�n�gal)</OPTION> <OPTION 
                          value=RS>Serbia (&#1057;&#1088;&#1073;&#1080;&#1112;&#1072;)</OPTION> <OPTION 
                          value=CS>Serbia and Montenegro (&#1057;&#1088;&#1073;&#1080;&#1112;&#1072; &#1080; &#1062;&#1088;&#1085;&#1072; 
                          &#1043;&#1086;&#1088;&#1072;)</OPTION> <OPTION value=SC>Seychelles</OPTION> 
                          <OPTION value=SL>Sierra Leone</OPTION> <OPTION 
                          value=SG>Singapore (Singapura)</OPTION> <OPTION 
                          value=SK>Slovakia (Slovensko)</OPTION> <OPTION 
                          value=SI>Slovenia (Slovenija)</OPTION> <OPTION 
                          value=SB>Solomon Islands</OPTION> <OPTION 
                          value=SO>Somalia (Soomaaliya)</OPTION> <OPTION 
                          value=ZA>South Africa</OPTION> <OPTION value=GS>South 
                          Georgia and the South Sandwich Islands</OPTION> 
                          <OPTION value=KR>South Korea (&#54620;&#44397;)</OPTION> <OPTION 
                          value=ES>Spain (Espa�a)</OPTION> <OPTION value=LK>Sri 
                          Lanka</OPTION> <OPTION value=SD>Sudan 
                          (&#1575;&#1604;&#1587;&#1608;&#1583;&#1575;&#1606;)</OPTION> <OPTION value=SR>Suriname</OPTION> 
                          <OPTION value=SJ>Svalbard and Jan Mayen</OPTION> 
                          <OPTION value=SZ>Swaziland</OPTION> <OPTION 
                          value=SE>Sweden (Sverige)</OPTION> <OPTION 
                          value=CH>Switzerland (Schweiz)</OPTION> <OPTION 
                          value=SY>Syria (&#1587;&#1608;&#1585;&#1610;&#1575;)</OPTION> <OPTION 
                          value=TW>Taiwan (&#21488;&#28771;)</OPTION> <OPTION 
                          value=TJ>Tajikistan (&#1058;&#1086;&#1207;&#1080;&#1082;&#1080;&#1089;&#1090;&#1086;&#1085;)</OPTION> <OPTION 
                          value=TZ>Tanzania</OPTION> <OPTION value=TH>Thailand 
                          (&#3619;&#3634;&#3594;&#3629;&#3634;&#3603;&#3634;&#3592;&#3633;&#3585;&#3619;&#3652;&#3607;&#3618;)</OPTION> <OPTION 
                          value=TG>Togo</OPTION> <OPTION 
                          value=TK>Tokelau</OPTION> <OPTION 
                          value=TO>Tonga</OPTION> <OPTION value=TT>Trinidad and 
                          Tobago</OPTION> <OPTION value=TN>Tunisia 
                          (&#1578;&#1608;&#1606;&#1587;)</OPTION> <OPTION value=TR>Turkey 
                          (T�rkiye)</OPTION> <OPTION value=TM>Turkmenistan 
                          (T�rkmenistan)</OPTION> <OPTION value=TC>Turks and 
                          Caicos Islands</OPTION> <OPTION 
                          value=TV>Tuvalu</OPTION> <OPTION 
                          value=UG>Uganda</OPTION> <OPTION value=UA>Ukraine 
                          (&#1059;&#1082;&#1088;&#1072;&#1111;&#1085;&#1072;)</OPTION> <OPTION value=AE>United Arab 
                          Emirates (&#1575;&#1604;&#1573;&#1605;&#1575;&#1585;&#1575;&#1578; &#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1617;&#1577; &#1575;&#1604;&#1605;&#1578;&#1617;&#1581;&#1583;&#1577;)</OPTION> <OPTION 
                          value=GB>United Kingdom</OPTION> <OPTION 
                          value=US>United States</OPTION> <OPTION 
                          value=UM>United States minor outlying islands</OPTION> 
                          <OPTION value=UY>Uruguay</OPTION> <OPTION 
                          value=UZ>Uzbekistan (O'zbekiston)</OPTION> <OPTION 
                          value=VU>Vanuatu</OPTION> <OPTION value=VA>Vatican 
                          City (Citt� del Vaticano)</OPTION> <OPTION 
                          value=VE>Venezuela</OPTION> <OPTION value=VN>Vietnam 
                          (Vi&#7879;t Nam)</OPTION> <OPTION value=VG>Virgin Islands, 
                          British</OPTION> <OPTION value=VI>Virgin Islands, 
                          U.S.</OPTION> <OPTION value=WF>Wallis and 
                          Futuna</OPTION> <OPTION value=EH>Western Sahara 
                          (&#1575;&#1604;&#1589;&#1581;&#1585;&#1575;&#1569; &#1575;&#1604;&#1594;&#1585;&#1576;&#1610;&#1577;)</OPTION> <OPTION value=YE>Yemen 
                          (&#1575;&#1604;&#1610;&#1605;&#1606;)</OPTION> <OPTION value=ZM>Zambia</OPTION> 
                          <OPTION value=ZW>Zimbabwe</OPTION></SELECT></td>
    <td height="30" colspan="2" valign="top">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="141" height="24" valign="top">&nbsp;</td>
    <td height="24" valign="top" colspan="2">&nbsp;
    </td>
    <td height="24" colspan="2" valign="top">
    &nbsp;&nbsp; 
    <span id="szip">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="16" valign="top">&nbsp;</td>
    <td height="16" valign="top" colspan="2">&nbsp;
    </td>
    <td height="16" colspan="2" valign="top">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="141" bgcolor="#C7D5E9" height="25">&nbsp;<b>Login Information</b></td>
    <td bgcolor="#C7D5E9" colspan="4" height="25">&nbsp;Your email address is used for 
    login, so remember it should be valid mail&nbsp;address<font face="Arial, sans-serif" size="-1">&nbsp;</font></td>
  </tr>
  <tr>
    <td width="141" height="16">&nbsp;</td>
    <td height="16" colspan="2">&nbsp;
    </td>
    <td height="16" colspan="2">
    &nbsp;&nbsp; 
   
    </td>
  </tr>
  <tr>
    <td width="141" height="34">&nbsp;E-mail Address</td>
    <td height="34" colspan="2">
    <input type="text" id="loginid" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="loginid"></td>
    <td height="34" colspan="2">
    <img src="images/check.gif" style="visibility:hidden" id="loginidsign" width="12" height="12"> 
     <span id="sloginid">&nbsp;</span>
    </td>
  </tr>
  <tr>
    <td width="141" height="35" valign="top">&nbsp;Choose a password</td>
    <td width="304" height="35" valign="top">
    <input type="password" id="pass" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="pass"><br>
&nbsp;<img src="images/check.gif" style="visibility:hidden" id="passsign" width="12" height="12">
   <span id="spass">&nbsp;</span> 
    </td>
    <td width="19" height="70" valign="top" rowspan="2">
    &nbsp;
    <div style="position:absolute; visibility:hidden; width:181; height:62" id="checkpass">
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="181" height="56">
    <tr><td width="16" height="56">
	<b><font face="Arial" size="2" color="#FF0000">
      <img border="0" src="images/brace.jpg" width="14" height="45"></font></b></td>
      <td width="159" height="56">
	<b><font face="Arial" size="2" color="#FF0000">Password not matched... </font></b>
      </td>
    </tr>
  </table>
</div>

    </td>
    <td width="88" height="70" valign="top" rowspan="2">
    &nbsp; 
    
    <p> 
    
    </td>
    <td width="34" height="35" valign="top">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="141" height="35" valign="top">&nbsp;Re-enter password</td>
    <td width="304" height="35" valign="top">
    <input type="password" id="repass" size="31" style="border: 1px solid #C7D5E9; padding: 0; font-family:Arial; font-size:9pt" onblur="validate(id)" name="pass12"><br>
&nbsp;<img src="images/check.gif" style="visibility:hidden" id="repasssign" width="12" height="12"> 
    <span id="srepass">&nbsp;</span>
    </td>
    <td width="34" height="35" valign="top">&nbsp;
    </td>
  </tr>
  <tr>
    <td width="141" height="16">&nbsp;</td>
    <td height="16" colspan="2">&nbsp;</td>
    <td width="88" height="16">&nbsp;</td>
    <td width="34" height="16">&nbsp;</td>
  </tr>
  <tr>
    <td width="141" height="26">&nbsp;</td>
    <td height="26" colspan="2">
    <input type="submit" value="Update My Account" name="B1" style="font-family: Arial; font-size: 9pt"></td>
    <td width="88" height="26">&nbsp;
    </td>
    <td width="34" height="26">&nbsp;</td>
  </tr>
  <tr>
    <td width="141" height="16">&nbsp;</td>
    <td height="16" colspan="2">&nbsp;</td>
    <td width="88" height="16">&nbsp;</td>
    <td width="34" height="16">&nbsp;</td>
  </tr>
</table>

    </td>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
  <tr>
    <td width="178">&nbsp;</td>
  </tr>
</table>
</td>
<td><img src="ptads/150x500-blogging-1.gif" height="553"></td>
</tr>
</table>
</form>
</div>

</body>

</html>