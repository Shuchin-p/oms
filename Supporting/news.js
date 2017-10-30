var scrollerwidth="210px"
var scrollerheight="150px"
var scrollerspeed=1
var scrollercontent='<left>Access Technology launches Palm Springs online business portal <a href="http://www.desertnetwork.com" class="news-text1">Desert Network</a><br><br>Access Technology becomes official vendor for 3 largest print media companies in USA for backoffice Outsourcing <br><br> New Look and feel for David Goldsmith at <a href="http://www.metamatrixconsulting.com" class="news-text1"  target="_blank"> www.metamatrixconsulting.com</a> <br><br><a href="http://www.bedfordlending.com" class="news-text1"  target="_blank"> www.bedfordlending.com</a>, a leading brokerage company gets a new facelift <br><br> Access Technology launches <a href="http://www.worldwidehoteldirectory.com" class="news-text1"  target="_blank"> www.worldwidehoteldirectory.com </a> listing over 60,000 properties all over the world ! <br><br> Leading locksmith in USA <a href="http://www.locksmith-lockaid.com" class="news-text1"  target="_blank"> www.locksmith-lockaid.com </a> goes online for residential and commersial services. <br><br> <a href="http://www.phukethotelreservation.com" class="news-text1"  target="_blank">www.phukethotelreservation.com</a> get a new facelift. The website offers instant hotel reservation online. <br><br>Access Technology assists fashion label Soul Attires with fresh identity and graphics at <a href="http://www.soulattires.com" class="news-text1"  target="_blank"> www.soulattires.com </a> <br><br>Access Technology launches <a href="http://www.lightsandscents.com" class="news-text1"  target="_blank">USA Lights</a>, a leading scents and lights provider in USA  <br><br> Wall Street Journal correspondent interviews Access Technology CEO Mani Singh for updated information on offshore web and graphics outsourcing. <br><br> New offshore development center at Delhi NCR for Access Technology goes operational from March 07. <br><br> Logo, corporate identity and website launch for <a href="http://www.dream-catchers.in" class="news-text1"  target="_blank"> www.dream-catchers.in</a>, a wedding planner in New Delhi <br><br> ATI assists AIC Advisory in US for online identity at <a href="http://www.aicadvisory.com" class="news-text1"  target="_blank"> www.aicadvisory.com </a> <br><br> ATI offers Times of India solution to launch <a href="http://www.timesmedianet.com" class="news-text1"  target="_blank"> www.timesmedianet.com </a> in dotnet framework february 07<BR><BR>Access Technology website design services for leading real estate company, <a href="http://www.parkwoodgroup.in" class="news-text1"  target="_blank">Parkwood Group</a><BR><BR>Web design India services for leading telecom hardware company in US, <a href="http://www.computel.net" class="news-text1"  target="_blank">Computel Group</a><BR><BR>Access Technology revamps leading online adventure travel website, <a href="http://www.ridingholidays.com" class="news-text1">Riding Holidays</a><BR><BR>A fresh website look and feel for india\'s leading turnkey power solutions provider <a href="http://www.anandpower.com" class="news-text1"  target="_blank">Anand Power</a> <left>'
var pauseit=1
scrollerspeed=(document.all)? scrollerspeed : Math.max(1, scrollerspeed-1) //slow speed down by 1 for NS
var copyspeed=scrollerspeed
var iedom=document.all||document.getElementById
var actualheight=''
var cross_scroller, ns_scroller
var pausespeed=(pauseit==0)? copyspeed: 0

function populate(){
if (iedom){
cross_scroller=document.getElementById? document.getElementById("iescroller") : document.all.iescroller
cross_scroller.style.top=parseInt(scrollerheight)+8+"px"
cross_scroller.innerHTML=scrollercontent
actualheight=cross_scroller.offsetHeight
}
else if (document.layers){
ns_scroller=document.ns_scroller.document.ns_scroller2
ns_scroller.top=parseInt(scrollerheight)+8
ns_scroller.document.write(scrollercontent)
ns_scroller.document.close()
actualheight=ns_scroller.document.height
}
lefttime=setInterval("scrollscroller()",20)
}
window.onload=populate
function scrollscroller(){
if (iedom){
if (parseInt(cross_scroller.style.top)>(actualheight*(-1)+8))
cross_scroller.style.top=parseInt(cross_scroller.style.top)-copyspeed+"px"
else
cross_scroller.style.top=parseInt(scrollerheight)+8+"px"
}
else if (document.layers){
if (ns_scroller.top>(actualheight*(-1)+8))
ns_scroller.top-=copyspeed
else
ns_scroller.top=parseInt(scrollerheight)+8
}
}
if (iedom||document.layers){
with (document){
if (iedom){
write('<div style="position:relative;width:'+scrollerwidth+';height:'+scrollerheight+';overflow:hidden" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=scrollerspeed">')
write('<div id="iescroller" style="position:absolute;left:0px;top:0px;width:100%;">')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+scrollerwidth+' height='+scrollerheight+' name="ns_scroller">')
write('<layer name="ns_scroller2" width='+scrollerwidth+' height='+scrollerheight+' left=0 top=0 onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=scrollerspeed"></layer>')
write('</ilayer>')
}
}
}