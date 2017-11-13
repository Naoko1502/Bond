<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@page import="cn.bond.bean.Bond_Contact" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bond HomePage</title>
<style>
		#title{margin-top:20px;margin-left:25px;font-weight:bold;}
	#loginName{font-size:38px;color:#7f97a4;font-family: 华文细黑;}
  #horizonItem{margin-top:-10px;margin-left:224px;font-family: 华文细黑;}
		  body{background:url("Add_Background02.png");background-size:1366px 890px;}
		    .t{display:inline-block;width:150px;height:40px;background-color:#fff;opacity:0.8;float:left;font-size:18px;
		 	   font-weight:bold;text-align:center;line-height:40px;box-shadow:0 0 2px #afafaf;margin-right:10px;
			   box-shadow:0 0 8px #afafaf;border-radius:5px;}
	         a{color:#000;}
		     a:visited{color:#000;}
		     a{text-decoration:none;}
		     a:hover{cursor:pointer;}
	 #internal{width:950px;height:664px;background-color:rgba(255, 255, 255, 0.4);margin-top:65px;margin-left:224px;
	           border-radius:5px;font-family:华文细黑;}
	#copyright{position:relative;color:#676767;left:-130px;top:520px;}
 #verticalItem{margin-left:-85px;padding-top:50px;}
	        .l{display:block;width:170px;height:55px;background-color:#fff;opacity:0.8;font-size:20px;
               font-weight:bold;text-align:center;line-height:55px;box-shadow:0 0 2px #afafaf;margin-bottom:20px;
               box-shadow:0 0 8px #afafaf;border-radius:5px;}
          #add{visibility:hidden;position:relative;bottom:280px;left:320px;}
          #sub{width:50px;height:28px;margin-left:150px;background-color:#7f97a4;font-size:16px;border:0px;
        	   color:#fff;font-weight:bold;font-family:幼圆;border-radius:5px;}
       .addcon{font-family:华文细黑;font-size:14px;font-weight:bold;color:#fff;margin-left:100px;
        	   background-color:#7f97a4;width:100px;height:35px;line-height:35px;
        	   text-align:center;border-radius:5px;display:block;}
      #conbase{margin-top:-280px;font-family:幼圆;font-size:15px;letter-spacing:1.8px;}
       #conedu{margin-top:-393px;font-family:幼圆;font-size:15px;letter-spacing:1.8px;}
      #conwork{margin-top:-358px;font-family:幼圆;font-size:15px;letter-spacing:1.8px;}
    #concoment{margin-top:-414px;font-family:幼圆;font-size:15px;letter-spacing:1.8px;}
       .seqnum{font-family:幼圆;font-size:15px;font-weight:bold;color:#fff;background-color:#7f97a4;
        	   width:25px;height:25px;line-height:25px;text-align:center;margin-right:30px;display:block;float:left;}
        #page1{margin-left:60px;}
    #basicinfo{font-size:18px;font-weight:bold;color:#000;margin-left:-190px;margin-top:-30px;}
  #educateinfo{font-size:18px;font-weight:bold;color:#000;margin-left:-190px;margin-top:-30px;}
   #comentinfo{font-size:18px;font-weight:bold;color:#000;margin-left:-190px;margin-top:-30px;}
     #workinfo{font-size:18px;font-weight:bold;color:#000;margin-left:-190px;margin-top:-30px;}
.ainl,.ainm,.ainr{font-family:华文细黑;width:180px;height:25px;background-color:transparent;border:1px solid #7f97a4;
        	      border-radius:5px;margin-bottom:23px;margin-right:15px;text-indent:1em;line-height:25px;
        	      font-size:13px;letter-spacing:1px;}
          #aqq{margin-left:5px;}
          #sqq{margin-left:18px;}
.rsl,.rsm,.rsr{font-family:幼圆;margin-right:10px;}
 #astrongpoint{width:423px;}
         #page{position:relative;top:12px;}
          #sup{display:block;width:80px;height:25px;background-color:#7f97a4;color:#fff;font-size:14px;
        	   font-family:幼圆;text-align:center;line-height:25px;border-radius:3px;margin-left:-184px;
        	   margin-top:14px;letter-spacing:1.5px;cursor:pointer;}
        #photo{margin-left:-195px;margin-top:-70px;width:180px;height:180px;border-radius:3px;box-shadow:0 0 8px gray;}
     #img_file{width:120px;position:absolute;left:-230px;top:125px;opacity:0;cursor:pointer;}
      #confirm{display:block;width:60px;height:25px;background-color:#7f97a4;color:#fff;font-size:14px;
               font-family:幼圆;text-align:center;line-height:25px;border-radius:3px;margin-left:-84px;
        	   margin-top:-25px;letter-spacing:1.5px;cursor:pointer;}
#addeducate,#addwork,#addcoment{visibility:hidden;}
        #aname{margin-top:14px;margin-right:20px;}
        #sname{margin-left:23px;}
      #sgender{margin-left:23px;}
      #sweight{margin-left:6px;}
       #sstate{margin-left:6px;}
         #sage{margin-left:23px;}
  #sprofession{margin-left:23px;}
         #sbir{margin-left:6px;}
    #shometown{margin-left:23px;}
#sconstellation{margin-left:6px;}
  #strongpoint{margin-left:-220px;}
       #sphone{margin-left:-220px;}
     #saddress{margin-left:6px;}
     #hobbybox{margin-top:-394px;}
       #shobby{font-family:幼圆;margin-left:540px;font-size:17px;}
           .sh{font-family:幼圆;}
           .h1{margin-left:525px;margin-top:22px;opacity:0.9;}
         .sedu{font-family:幼圆;margin-left:-210px;margin-right:10px;}#education{margin-top:30px;}
        .eduin{font-family:华文细黑;width:400px;height:34px;background-color:transparent;border:1px solid #7f97a4;
               border-radius:5px;margin-bottom:32px;text-indent:1em;line-height:34px;font-size:13px;letter-spacing:1px;}
          .swi{font-family:幼圆;margin-right:10px;}
         .wiin{font-family:华文细黑;width:260px;height:30px;background-color:transparent;border:1px solid #7f97a4;
               border-radius:5px;margin-bottom:42px;margin-right:28px;text-indent:1em;line-height:30px;
        	   font-size:13px;letter-spacing:1px;}
    #sinoffice{position:relative;left:-180px;}
     #inoffice{margin-left:-176px;}
    .workstate{font-family:幼圆;}
     #scompany{margin-left:-218px;}
        #spost{margin-left:-186px;}
           #wi{margin-top:28px;}
        #ssale{margin-left:-186px;}
       #wstate{margin-top:30px;margin-left:40px;}
   #streatment{margin-left:31px;}
   #sreplenish{font-family:幼圆;margin-right:10px;margin-left:-219px;}
   #wreplenish{font-family:华文细黑;width:450px;height:80px;background-color:transparent;border:1px solid #7f97a4;
        	   border-radius:5px;text-indent:1em;line-height:30px;font-size:13px;letter-spacing:1px;margin-top:-8px;}
     #oncework{font-family:幼圆;visibility:hidden;margin-left:30px;}
   #comentarea{font-family:幼圆;margin-left:-190px;margin-top:31px;border-radius:5px;border-top:12px solid #7f97a4;
			   border-bottom:4px solid #7f97a4;border-left:4px solid #7f97a4;border-right:4px solid #7f97a4;
			   background-color: rgba(255,255,255,0.4);padding:25px;box-shadow:0 0 8px;}
      #areamsg{position:relative;top:18px;font-family:幼圆;margin-left:-183px;}
       #addsub{width:80px;height:35px;color:#fff;text-align:center;line-height:35px;background-color:#7f97a4;
        	   border:0;box-shadow:0 0 8px;cursor:pointer;visibility:hidden;margin-left:450px;border-radius:5px;
        	   margin-top:20px;}
     #img_path{width:0;height:0;visibility:hidden;}
       #errmsg{font-family: 幼圆;width:280px;height:32px;background-color:#fff;opacity:0;position:fixed;left:540px;
			   bottom:596px;text-align:center;line-height:32px;font-size:13px;font-weight:bold;letter-spacing:4px;
	       	   border-radius:5px;}
       #i_home{background-color:#7f97a4;}
/*----------------------------------------------------------------------------------------------------------------*/

/*—— 修改 ——*/
	   #modify{visibility:hidden;}
      #mod_msg{font-size:19px;opacity:0.8;font-weight:bold;letter-spacing:2px;position:relative;top:-700px;left:35px;}
       #mod_in{margin-top:-688px;margin-left:313px;background-color:transparent;border:1px solid #7f97a4;width:260px;
         	   height:35px;border-radius:5px;text-indent:2em;}
      #modify_sub{cursor:pointer;margin-left:585px;margin-top:-683px;background-color:#7f97a4;width:70px;height:30px;
         	   letter-spacing:2.8px;font-size:15px;font-weight:bold;color:#fff;text-align:center;line-height:30px;
         	   border-radius:5px;border:0;box-shadow:0 0 8px;}
/*——modify——————————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/*—— 选择修改后返回的修改页面 ——*/
#modinfo,#m_portrait,#m_baseinfo,#m_eduinfo,#m_workinfo,#m_comentinfo{visibility:hidden;}
/* 1. 基本信息 */
  #modinfo_msg{display:block;width:140px;height:35px;font-weight:bold;text-align:center;line-height:35px;color:#fff;border-radius:5px;
  			   background-color:#7f97a4;font-family:华文细黑;position:relative;top:-735px;left:400px;}
  #mod_basemsg{font-size:18px;font-family:华文细黑;font-weight:bold;position:relative;top:-950px;left:128px;}
    #mod_photo{width:180px;height:180px;border-radius:5px;box-shadow:0 0 8px gray;position:relative;top:-702px;left:115px;}
    #mod_imgfile{opacity:0;cursor:pointer;position:relative;top:-670px;left:-130px;width:145px;}
    #mod_imgup{display:block;float:left;width:70px;height:25px;line-height:25px;text-align:center;color:#fff;
    		   cursor:pointer;background-color:#7f97a4;border-radius:3px;margin-top:-507px;
    		   margin-left:130px;font-size:14px;}
  #mod_confirm{display:block;float:left;width:50px;height:25px;line-height:25px;text-align:center;color:#fff;
  			   cursor:pointer;background-color:#7f97a4;border-radius:3px;margin-top:-507px;margin-left:230px;
  			   font-size:14px;}
  	 .mod_name{font-family:幼圆;font-size:17px;}
  	.mod_value{width:180px;height:25px;background-color:transparent;border:1px solid  rgba(175, 115, 64, 0.6);
  			   border-radius:5px;text-indent:1em;}
  	#mod_sname{position:relative;top:-915px;left:325px;}
  	#mod_iname{position:relative;top:-915px;left:335px;}
  #mod_sheight{position:relative;top:-915px;left:355px;}
  #mod_iheight{position:relative;top:-915px;left:365px;}
  #mod_sgender{position:relative;top:-895px;left:325px;}
  #mod_igender{position:relative;top:-895px;left:335px;}
  #mod_sweight{position:relative;top:-895px;left:355px;}
  #mod_iweight{position:relative;top:-895px;left:365px;}
  	 #mod_sage{position:relative;top:-875px;left:325px;}
  	 #mod_iage{position:relative;top:-875px;left:335px;}
   #mod_sstate{position:relative;top:-875px;left:355px;}
   #mod_istate{position:relative;top:-875px;left:365px;}
#mod_sprofession{position:relative;top:-855px;left:325px;}
#mod_iprofession{position:relative;top:-855px;left:335px;}
#mod_sbirthday{position:relative;top:-855px;left:355px;}
#mod_ibirthday{position:relative;top:-855px;left:365px;}
#mod_shometown{position:relative;top:-835px;left:325px;}
#mod_ihometown{position:relative;top:-835px;left:335px;}
#mod_sconstellation{position:relative;top:-835px;left:355px;}
#mod_iconstellation{position:relative;top:-835px;left:365px;}
#mod_sstrongpoint{position:relative;top:-815px;left:95px;}
#mod_istrongpoint{position:relative;top:-815px;left:105px;width:410px;}
#mod_sqq{position:relative;top:-815px;left:142px;}
#mod_iqq{position:relative;top:-815px;left:152px;}
#mod_sphone{position:relative;top:-795px;left:95px;}
#mod_iphone{position:relative;top:-795px;left:105px;width:165px;}
#mod_semail{position:relative;top:-795px;left:120px;}
#mod_iemail{position:relative;top:-795px;left:130px;}
#mod_saddress{position:relative;top:-795px;left:150px;}
#mod_iaddress{position:relative;top:-795px;left:160px;}
#mod_hobbybox{margin-top:-1165px;margin-left:830px;}
#mod_shobby{font-size:19px;margin-left:18px;}
.mod_h1{margin-top:20px;}

/* 2. 教育信息 */
  #mod_edumsg{font-size:18px;font-family:华文细黑;font-weight:bold;position:relative;top:-950px;left:128px;}
  .modedu_name{font-size:17px;font-family:幼圆;margin-right:11px;}
  .modedu_value{width:450px;height:30px;text-indent:12px;background-color:transparent;border-radius:5px;
  				border:1px solid rgba(175, 115, 64, 0.6);}
  #mod_seducation{position:relative;top:-902px;left:120px;}
  #mod_ieducation{position:relative;top:-902px;left:120px;}
  #mod_sschool{position:relative;top:-867px;left:120px;}
  #mod_ischool{position:relative;top:-867px;left:120px;}
  #mod_smajor{position:relative;top:-832px;left:120px;}
  #mod_imajor{position:relative;top:-832px;left:120px;}
  #mod_sgraduate{position:relative;top:-797px;left:120px;}
  #mod_igraduate{position:relative;top:-797px;left:120px;}
  		   
/* 3. 工作信息 */
#mod_workmsg{font-size:18px;font-family:华文细黑;font-weight:bold;position:relative;top:-1111px;left:128px;}
.mod_workstateradio{position:relative;top:-1082px;}
.mod_workstate{position:relative;top:-1082px;font-size:18px;}
#mod_oncework{font-family:幼圆;visibility:hidden;hidden;position:relative;top:-1082px;}
#mod_sinoffice{margin-left:225px;}
.mod_works{font-size:17px;font-family:幼圆;}
.mod_workin{width:280px;height:30px;text-indent:2em;border-radius:5px;border:1px solid rgba(175, 115, 64, 0.6);
			background-color:transparent;}
#mod_scompany{position:relative;top:-1072px;left:120px;}
#mod_icompany{position:relative;top:-1072px;left:132px;}
#mod_streatment{position:relative;top:-1072px;left:173px;}
#mod_itreatment{position:relative;top:-1072px;left:183px;}
#mod_spost{position:relative;top:-1042px;left:156px;}
#mod_ipost{position:relative;top:-1042px;left:164px;}
#mod_sworkinglife{position:relative;top:-1042px;left:173px;}
#mod_iworkinglife{position:relative;top:-1042px;left:183px;}
#mod_ssale{position:relative;top:-1012px;left:156px;}
#mod_isale{position:relative;top:-1012px;left:164px;}
#mod_scaddress{position:relative;top:-1012px;left:173px;}
#mod_icaddress{position:relative;top:-1012px;left:183px;}
#mod_sreplenish{font-size:17px;font-family:幼圆;position:relative;top:-980px;left:116px;}
#mod_ireplenish{width:655px;height:65px;text-indent:2em;border-radius:5px;border:1px solid rgba(175, 115, 64, 0.6);
				background-color:transparent;position:relative;top:-980px;left:128px;}

/* 4. 备注信息 */
#mod_comentmsg{font-size:18px;font-family:华文细黑;font-weight:bold;position:relative;top:-1332px;left:128px;}
#mod_comentarea{font-family:幼圆;border-radius:5px;margin-top:-1290px;margin-left:130px;
				border-top:12px solid #7f97a4;border-bottom:4px solid #7f97a4;
				border-left:4px solid #7f97a4;border-right:4px solid #7f97a4;
			    background-color: rgba(255,255,255,0.4);padding:25px;box-shadow:0 0 8px;}
#mod_sub{width:80px;height:35px;color:#fff;text-align:center;line-height:35px;background-color:#7f97a4;
         border:0;box-shadow:0 0 8px;cursor:pointer;visibility:hidden;border-radius:5px;position:relative;
         top:-1000px;left:375px;}
/* 5. 页码 */
	#mod_page{margin-top:-970px;margin-left:375px;}
	.modPage{font-family:幼圆;font-size:15px;font-weight:bold;color:#fff;background-color:#7f97a4;
        	 width:25px;height:25px;line-height:25px;text-align:center;margin-right:30px;display:block;float:left;}
/*———modinfo—————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 查询 */
#search{visibility:hidden;}
     #sear_msg{left:15px;font-size:19px;opacity:0.8;font-weight:bold;letter-spacing:2px;position:relative;
     		   top:-420px;left:-115px;}
      #sear_in{background-color:transparent;border:1px solid #7f97a4;margin-top:-408px;margin-left:313px;
         	   width:260px;height:35px;border-radius:5px;text-indent:2em;}
     #sear_sub{cursor:pointer;background-color:#7f97a4;width:70px;
         	   height:30px;letter-spacing:2.8px;font-size:15px;font-weight:bold;color:#fff;text-align:center;
         	   line-height:30px;border-radius:5px;border:0;box-shadow:0 0 8px;margin-left:585px;margin-top:-403px;}
/*——search—————————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 查询后返回的联系人信息 */
 #contactinfo{visibility:hidden;}
 #con_educateinfo,#con_workinfo,#con_comentinfo,#con_baseinfo{visibility:hidden;}
  .sear_head{font-weight:bold;font-family:幼圆;font-size:15px;letter-spacing:1.8px;color:#fff;margin-left:100px;
        	   background-color:#7f97a4;width:100px;height:35px;line-height:35px;text-align:center;border-radius:5px;
        	   display:block;}
 .coninfo_title{font-size:18px;font-weight:bold;color:#000;}
 /* 基本信息 */
 #base_head{margin-left:420px;margin-top:-458px;}
   #title_base{position:relative;left:125px;position:relative;top:-225px;}
   #sear_img{margin-left:38px;margin-top:35px;width:180px;height:180px;border-radius:3px;box-shadow:0 0 8px gray;}

			.b_sckey{font-size:17px;font-family:幼圆;margin-left:20px;}
           #r1{display:block-inline;width:180px;height:180px;background-color:transparent;border-radius:5px;
               box-shadow:0 0 8px gray;margin-top:-187px;margin-left:330px;opacity:0.7;}
           #r2{display:block-inline;width:180px;height:180px;background-color:transparent;opacity:0.7;
         	   border-radius:3px;box-shadow:0 0 8px gray;margin-top:-180px;margin-left:530px;}
           #r3{display:block-inline;width:180px;height:180px;background-color:transparent;border-radius:3px;
               box-shadow:0 0 8px gray;margin-top:-180px;margin-left:730px;opacity:0.7;}
         #c1_1{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
               box-shadow:0 0 8px gray;width:180px;height:35px;margin-left:-315px;margin-top:-165px;}
         #c1_2{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
         	   box-shadow:0 0 8px gray;width:193px;height:35px;margin-top:-165px;margin-left:-114px;}
         #c1_3{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
               box-shadow:0 0 8px gray;width:380px;height:35px;margin-top:-190px;margin-left:530px;}
         #c2_1{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
         	   box-shadow:0 0 8px gray;width:394px;height:35px;margin-top:-140px;margin-left:115px;}
         #c2_2{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
         	   box-shadow:0 0 8px gray;width:380px;height:35px;margin-top:-140px;margin-left:530px;}
         #c3_1{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
               box-shadow:0 0 8px gray;width:280px;height:35px;margin-top:-90px;margin-left:115px;}
         #c3_2{display:block-inline;float:left;opacity:0.7;background-color:transparent;border-radius:3px;
         	   box-shadow:0 0 8px gray;width:493px;height:35px;margin-top:-91px;margin-left:417px;}
#sc_home,#sc_address,#sc_qq,#sc_pnum,#sc_email,#sc_strong,#sc_hobby{margin-left:25px;line-height:35px;}

/*教育信息 */
     #edu_head{margin-top:-250px;margin-left:420px;}
    #title_edu{position:relative;margin-left:125px;top:-28px;}
    	#sc_edu{display:block-inline;font-size:17px;font-family:幼圆;position:relative;left:-98px;top:50px;}
        #v_edu{line-height:35px;}
       #edu1_1{text-indent:2em;opacity:0.7;background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;
         	   width:650px;height:35px;margin-top:20px;margin-left:190px;}
       #sc_sch{display:block-inline;font-size:17px;font-family:幼圆;position:relative;left:104px;top:40px;}
        #v_sch{line-height:35px;}
       #edu1_2{text-indent:2em;opacity:0.7;background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;
               width:650px;height:35px;margin-top:20px;margin-left:190px;}
		#sc_major{display:block-inline;font-size:17px;font-family:幼圆;position:relative;left:104px;top:40px;}
      #v_major{line-height:35px;}
       #edu1_3{text-indent:2em;opacity:0.7;background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;
         	   width:650px;height:35px;margin-top:15px;margin-left:190px;}
         #sc_gradu{display:block-inline;font-size:17px;font-family:幼圆;position:relative;left:104px;top:40px;}
      #v_gradu{line-height:35px;}
       #edu1_4{text-indent:2em;opacity:0.7;background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;
         	   width:650px;height:35px;margin-top:15px;margin-left:190px;}
/* 工作信息 */
    #work_head{margin-top:-327px;margin-left:420px;}
   #title_work{position:relative;left:125px;top:-28px;}
         #w1_1{width:105px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;background-color:transparent;
         	   border-radius:3px;box-shadow:0 0 8px gray;margin-left:150px;}
         #w2_1{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
               background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:15px;margin-left:115px;}
         #w2_2{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
         	   background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:-36px;margin-left:510px;}
         #w3_1{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
               background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:25px;margin-left:115px;}
         #w3_2{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
               background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:-36px;margin-left:510px;}
         #w4_1{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
               background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:25px;margin-left:115px;}
         #w4_2{display:block-inline;width:370px;height:35px;line-height:35px;text-indent:1em;opacity:0.7;
         	   background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:-36px;margin-left:510px;}
         #w5_1{display:block-inline;width:520px;height:97px;line-height:35px;text-indent:1em;opacity:0.7;
         	   background-color:transparent;border-radius:3px;box-shadow:0 0 8px gray;margin-top:35px;margin-left:115px;}
      .w_sckey{margin-right:3px;}
/* 备注信息 */
  #coment_head{margin-top:-394px;margin-left:420px;}
 #title_coment{position:relative;left:125px;top:-206px;}
     #info_box{width:400px;height:200px;border-radius:5px;border-top:12px solid #7f97a4;
        	   border-bottom:4px solid #7f97a4;border-left:4px solid #7f97a4;border-right:4px solid #7f97a4;
        	   background-color: rgba(255,255,255,0.4);padding:25px;box-shadow:0 0 8px;margin-top:55px;margin-left:50px;}
        	   
/* 查询信息页面的页码 */
#searpage{position:relative;left:378px;top:-10px;}
.sp{font-family:幼圆;font-size:15px;font-weight:bold;color:#fff;background-color:#7f97a4;width:25px;
        	   height:25px;line-height:25px;text-align:center;margin-right:30px;display:block;float:left;}
/*——contactinfo————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 删除 */
 #delete{visibility:hidden;}
  #del_msg{position:relative;top:-345px;left:315px;font-size:19px;opacity:0.8;font-weight:bold;letter-spacing:2px;}
   #del_in{margin-top:-333px;margin-left:313px;background-color:transparent;border:1px solid #7f97a4;width:260px;
     	   height:35px;border-radius:5px;text-indent:2em;}
  #del_sub{cursor:pointer;margin-left:585px;margin-top:-328px;background-color:#7f97a4;width:70px;height:30px;
     	   letter-spacing:2.8px;font-size:15px;font-weight:bold;color:#fff;text-align:center;line-height:30px;
     	   border-radius:5px;border:0;box-shadow:0 0 8px;}
 #del_baseinfo{visibility:hidden;}
/*——delete—————————————————————————————————————————————————————————————————————————————————————————————————————————————*/
 
/* 选择删除后返回的某个联系人信息 */
#del_hr1{}
#del_hr2{margin-top:140px;}
#del_baseinfo{width:700px;height:410px;background-color:transprent;border-radius:5px;box-shadow:0 0 8px gray;
			  margin-top:-320px;margin-left:150px;}
#delinfo_msg{font-weight:bold;font-family:幼圆;font-size:15px;letter-spacing:1.8px;color:#fff;margin-left:100px;
        	   background-color:#7f97a4;width:100px;height:35px;line-height:35px;text-align:center;border-radius:5px;
        	   display:block;position:relative;top:-63px;left:190px;}
#del_iimg{width:100px;height:100px;border-radius:5px;box-shadow:0 0 8px gray;margin-top:-15px;margin-left:20px;}
.del_key{font-family:幼圆;font-size:16px;}
.del_value{opacity:0.7;font-size:17px;}

#db1_1{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:170px;height:115px;float:left;position:relative;top:-380px;left:70px;}
#del_sname{margin-bottom:15px;}
#del_iname{margin-bottom:15px;}

#db1_2{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:130px;height:115px;float:left;position:relative;margin-top:-495px;margin-left:335px;}
#del_sgender{margin-bottom:15px;}
#del_igender{margin-bottom:15px;}

#db1_3{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:150px;height:115px;float:left;position:relative;margin-top:-495px;margin-left:490px;}
#del_sage{margin-bottom:15px;}
#del_iage{margin-bottom:15px;}

#db2_1{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:155px;height:25px;float:left;margin-top:-362px;margin-left:20px;}
 #db2_2{background-color:transparent;border-radius:5px;padding-left:15px;
 width:280px;height:25px;float:left;margin-top:-362px;margin-left:192px;}
 #db2_3{background-color:transparent;border-radius:5px;padding-left:15px;
 width:175px;height:25px;float:left;margin-top:-362px;margin-left:490px;}
 
 #db3_1{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:155px;height:25px;float:left;margin-top:-317px;margin-left:20px;}
 #db3_2{background-color:transparent;border-radius:5px;padding-left:15px;
 width:280px;height:25px;float:left;margin-top:-317px;margin-left:192px;}
 #db3_3{background-color:transparent;border-radius:5px;padding-left:15px;
 width:175px;height:25px;float:left;margin-top:-317px;margin-left:490px;}
 
 #db4_1{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:297px;height:25px;float:left;margin-top:-272px;margin-left:20px;}
 #db4_2{background-color:transparent;border-radius:5px;padding-left:15px;
 width:297px;height:25px;float:left;margin-top:-272px;margin-left:342px;}
 
 #db5_1{background-color:transparent;border-radius:5px;padding-left:15px;
	   width:618px;height:25px;float:left;margin-top:-227px;margin-left:20px;}
 #db6_1{background-color:transparent;border-radius:5px;padding-left:15px;
 width:618px;height:25px;float:left;margin-top:-182px;margin-left:20px;}
 
 #del_sub2{width:80px;height:30px;background-color:#7f97a4;border-radius:5px;box-shadow:0 0 8px gray;cursor:pointer;
 		   color:#fff;line-height:30px;text-align:center;border:0;margin-top:88px;margin-left:120px;}
/*——delinfo—————————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 通讯录 */
#address_book{visibility:hidden;}
#addbook_title{width:700px;height:45px;background-color:transparent;box-shadow:0 0 8px gray;border-radius:5px;
			   margin-top:-465px;margin-left:135px;border:2px solid #859DAA;}
.addt{float:left;width:60px;height:30px;text-align:center;line-height:30px;border-radius:5px;box-shadow:0 0 8px #fff;
	  color:#fff;letter-spacing:2px;font-weight:bold;background-color:rgba(133, 157, 170, 0.9);margin-top:-439px;}
#addt_name{margin-left:-240px;}
#addt_pnum{margin-left:55px;}
#addt_port{margin-left:345px;}
.book_name,.book_pnum{text-indent:1em;display:block-inline;float:left;background-color:transparent;
         			  opacity:0.7;border-radius:5px;font-size:20px;font-family:幼圆;
         			  line-height:50px;box-shadow:0 0 8px gray;}
    .book_name{width:130px;height:50px;}
    .book_pnum{width:400px;height:50px;text-align:center;cursor:pointer;}
     .book_img{display:block-inline;float:left;width:50px;height:50px;}
      .con_img{width:50px;height:50px;border-radius:3px;background-color:transparent;box-shadow:0 0 12px gray;
      		   border:1px solid #B6B5BB;}
      .book_hr{visibility:hidden;width:855px;}
      
      #book_name1{margin-top:-365px;margin-left:-270px;}
      #book_pnum1{margin-top:-365px;margin-left:-120px;}
      #book_img1{margin-top:-365px;margin-left:350px;}
      #book_hr1{margin-top:-356px;margin-left:93px;}
      
      #book_name2{margin-top:-295px;margin-left:-270px;}
      #book_pnum2{margin-top:-295px;margin-left:-120px;}
      #book_img2{margin-top:-295px;margin-left:350px;}
      #book_hr2{margin-top:8px;margin-left:93px;}
      
      #book_name3{margin-top:-225px;margin-left:-270px;}
      #book_pnum3{margin-top:-225px;margin-left:-120px;}
      #book_img3{margin-top:-225px;margin-left:350px;}
      #book_hr3{margin-top:9px;margin-left:93px;}
      
      #book_name4{margin-top:-155px;margin-left:-270px;}
      #book_pnum4{margin-top:-155px;margin-left:-120px;}
      #book_img4{margin-top:-155px;margin-left:350px;}
      #book_hr4{margin-top:9px;margin-left:93px;}
      
      #book_name5{margin-top:-85px;margin-left:-270px;}
      #book_pnum5{margin-top:-85px;margin-left:-120px;}
      #book_img5{margin-top:-85px;margin-left:350px;}
      
/* 通讯录的页码 */
 .page_item{margin-top:-2px;cursor:pointer;font-weight:bold;display:block;float:left;width:80px;height:30px;
 			border-radius:3px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			box-shadow:0 0 8px #fff;}
#previous_page{margin-left:-127px;}
 #page_code{margin-top:-2px;font-weight:bold;display:block;float:left;margin-left:-40px;margin-right:15px;
 			width:30px;height:30px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			border-radius:3px;}
#next_page{margin-right:15px;}
   #in_page{width:30px;height:30px;margin-top:57px;margin-left:506px;text-indent:5px;margin-top:548px;}
  #page_sub{margin-top:-2px;cursor:pointer;font-weight:bold;display:block;float:left;width:60px;height:30px;
  			box-shadow:0 0 8px #fff;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
  			border-radius:3px;margin-left:52px;letter-spacing:2px;}
  #total_page{margin-left:82px;position:relative;top:5px;}
#total_record{position:relative;top:5px;}    
/*——address_book—————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 生日提醒 */
#birthday_list{visibility:hidden;}
#birimg_div{width:600px;height:550px;margin-left:250px;}
#birday_msg{width:330px;height:50px;line-height:50px;text-align:center;background-color:transparent;border-radius:5px;
		    box-shadow:0 0 8px gray;margin-top:-470px;margin-left:75px;border:2px solid rgba(133, 157, 170, 0.71);}
#bir_conname,#bir_day{font-size:18px;font-weight:bold;opacity:0.8;letter-spacing:2px;}
#bir_img{width:330px;height:330px;border-radius:6px;box-shadow:0 0 8px;margin-top:20px;margin-left:75px;}
/* 生日提醒的页码 */
.bir_page_item{margin-top:-2px;cursor:pointer;font-weight:bold;display:block;float:left;width:80px;height:30px;
 			border-radius:3px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			box-shadow:0 0 8px #fff;}
#bir_previous_page{margin-top:-5px;margin-left:-320px;}
 #bir_page_code{font-weight:bold;display:block;float:left;position:relative;top:-5px;left:-222px;
 			width:30px;height:30px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			border-radius:3px;}
#bir_next_page{margin-top:-5px;margin-left:-205px;}
   #bir_in_page{width:30px;height:30px;text-indent:5px;position:relative;top:24px;left:-113px;}
  #bir_page_sub{cursor:pointer;font-weight:bold;display:block;float:left;width:60px;height:30px;
  			box-shadow:0 0 8px #fff;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
  			border-radius:3px;letter-spacing:2px;margin-top:-5px;margin-left:-53px;}
  #bir_total_page{position:relative;left:-30px;top:27px;}
#bir_total_record{position:relative;left:-30px;top:27px;}   
/*——birthday_list—————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 我们的故事 */
 #wsStory{visibility:hidden;}
 #story_msg{width:120px;height:35px;line-height:35px;text-align:center;border-radius:5px;background-color:transparent;
 			box-shadow:0 0 8px gray;margin-top:-565px;margin-left:413px;font-size:18px;font-weight:bold;
 			font-family:幼圆;letter-spacing:2px;opacity:0.9;}
.wsname{display:none;}
 .wsimg{cursor:pointer;border-radius:10px;box-shadow:0 0 8px gray;}
 #wsimg8{width:160px;height:110px;position:relative;top:-380px;left:-960px;}
 #wsimg1{width:110px;height:155px;position:relative;top:-20px;left:312px;}
 #wsimg6{width:120px;height:120px;position:relative;top:-45px;left:-238px;}
 #wsimg2{width:150px;height:120px;position:relative;left:487px;top:-75px;}
 #wsimg10{width:100px;height:120px;position:relative;top:-363px;left:-660px;}
 #wsimg3{width:140px;height:170px;position:relative;top:108px;left:-146px;}
 #wsimg9{width:190px;height:130px;position:relative;left:-948px;top:-155px;}
 #wsimg5{width:120px;height:120px;position:relative;top:255px;left:-443px;}
 #wsimg4{width:150px;height:200px;position:relative;top:185px;left:113px;}
 #wsimg7{width:168px;height:220px;position:relative;left:-198px;top:-103px;}

/* 我们的故事的页码 */
#wspage_box{width:600px;height:40px;margin-top:-75px;margin-left:260px;}
 .ws_page_item{margin-top:-2px;cursor:pointer;font-weight:bold;display:block;float:left;width:80px;height:30px;
 			border-radius:3px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			box-shadow:0 0 8px #fff;}
#ws_previous_page{margin-left:-330px;margin-top:1px;}
 #ws_page_code{font-weight:bold;display:block;float:left;margin-left:-235px;margin-top:1px;
 			width:30px;height:30px;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
 			border-radius:3px;}
#ws_next_page{margin-left:-190px;margin-top:1px;}
   #ws_in_page{width:30px;height:30px;text-indent:5px;border-radius:3px;margin-top:1px;margin-left:-113px;}
  #ws_page_sub{cursor:pointer;font-weight:bold;display:block;float:left;width:60px;height:30px;
  			box-shadow:0 0 8px #fff;text-align:center;line-height:30px;color:#fff;background-color:#7f97a4;
  			border-radius:3px;letter-spacing:2px;margin-left:-40px;}
  #ws_total_page{position:relative;top:3px;margin-left:83px;}
#ws_total_record{position:relative;top:3px;}  

/* 编辑和显示故事的盒子 */
/* 显示故事 */
#story_edit,#story_box{visibility:hidden;}
#story_box_msg{display:block;width:175px;height:35px;line-height:35px;text-align:center;box-shadow:0 0 8px gray;
			   border-radius:5px;margin-top:-510px;margin-left:390px;}
#story_box_img{width:140px;height:200px;border-radius:5px;box-shadow:0 0 8px gray;margin-left:120px;margin-top:30px;}
#con_story{display:block;width:470px;height:240px;padding:25px;box-shadow:0 0 8px gray;
			   border-radius:5px;border-top:12px solid #7f97a4;border-bottom:4px solid #7f97a4;
			   border-left:4px solid #7f97a4;
			   border-right:4px solid #7f97a4;margin-top:-160px;margin-left:300px;}
#story_box_msg2{margin:0 auto;font-size:16px;font-weight:bold;display:block;width:100px;height:35px;text-align:center;
		        box-shadow:0 0 8px #gray;border:1px solid #7f97a4;border-top:none;margin-top:-28px;
		        padding-top:12px;border-radius:5px;}
#story_mod{cursor:pointer;width:100px;height:35px;line-height:35px;text-align:center;color:#fff;
		   letter-spacing:2px;border-radius:5px;box-shadow:0 0 8px gray;background-color:#7f97a4;margin-top:28px;
		   margin-left:690px;}

/* 编辑故事 */
#sm_title{display:block;width:175px;height:35px;line-height:35px;text-align:center;box-shadow:0 0 8px gray;
			   border-radius:5px;margin-top:-470px;margin-left:390px;}
#story_area{display:block;width:470px;height:240px;padding:25px;box-shadow:0 0 8px gray;
			   border-radius:5px;border-top:12px solid #7f97a4;border-bottom:4px solid #7f97a4;
			   border-left:4px solid #7f97a4;margin-left:212px;margin-top:-50px;background-color:transparent;
			   border-right:4px solid #7f97a4;}
#storyedit_name{font-size:16px;font-weight:bold;display:block;width:100px;height:35px;text-align:center;
		        box-shadow:0 0 8px #gray;border:1px solid #7f97a4;border-top:none;margin-left:425px;margin-top:50px;
		        padding-top:12px;border-radius:5px;line-height:35px;}
#storyedit_sub{cursor:pointer;width:80px;height:35px;line-height:35px;text-align:center;color:#fff;border:0;
		       letter-spacing:2px;border-radius:5px;box-shadow:0 0 8px gray;background-color:#7f97a4;
		       margin-top:-70px;margin-left:200px;}
/*——wsStory—————————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 账户设置 */
#account_set_box{visibility:hidden;}
#account_set{width:260px;height:50px;box-shadow:0 0 10px;border-radius:5px;text-align:center;font-size:18px;
               line-height:50px;font-weight:bold;letter-spacing:3px;opacity:0.9;margin:0 auto;margin-top:-420px;}
.account_option{cursor:pointer;width:200px;height:40px;box-shadow:0 0 6px;border-radius:5px;opacity:0.9;
                text-align:center;line-height:40px;font-weight:bold;letter-spacing:2px;margin:0 auto;margin-top:30px;}
#account_set{}
#account_delete{margin-top:0px;}
 
 /* 修改资料的盒子 */
 #accmod_box{visibility:hidden;margin-left:332px;margin-top:-185px;}
 .acc_name{font-size:17px;margin-right:15px;}
.acc_value{width:220px;height:35px;line-height:35px;text-indent:2em;border-radius:5px;box-shadow:0 0 8px gray;
		   background-color:transparent;margin-bottom:15px;}
#accset_sub{cursor:pointer;width:90px;height:35px;line-height:35px;text-align:center;color:#fff;border:0;
		   letter-spacing:2px;border-radius:5px;box-shadow:0 0 8px gray;background-color:#7f97a4;}

/* 注销账户的提示框 */
#accdel_box{visibility:hidden;width:440px;height:130px;background-color:#fbfbfb;border-radius:5px;
   			   box-shadow:0 0 8px gray;margin:0 auto;margin-top:-260px;}
#delale_msg{font-family:华文细黑;font-size:14px;position:relative;left:15px;top:10px;}
	  #del_yes{float:left;width:65px;height:25px;background-color:#5a97ff;color:#fff;font-size:14px;text-align:center;
			   line-height:25px;font-weight:bold;cursor:pointer;font-family:华文细黑;border:2px double #5885EC;
			   border-radius:2px;margin-top:-240px;margin-left:-318px;}
       #del_no{float:right;width:65px;height:25px;background-color:#5a97ff;color:#fff;font-size:14px;text-align:center;
			   line-height:25px;font-weight:bold;cursor:pointer;font-family:华文细黑;border:2px double #5885EC;
			   border-radius:2px;position:relative;top:-240px;left:-43px;}
/*——accmod_set_box——————————————————————————————————————————————————————————————————————————————————————————————————————*/

/* 关于 */
#about{visibility:hidden;margin-left:390px;margin-top:-190px;}
#about_img{width:120px;height:120px;border-radius:5px;}
#about_msg{margin-left:-30px;margin-top:-5px;}
/*——accmod_set_box——————————————————————————————————————————————————————————————————————————————————————————————————————*/

/*—— 首页 ——*/
   		#f_img{width:280px;height:460px;margin-left:-790px;margin-top:-200px;}
   	  #l_utime{font-size:18px;position:relative;top:-385px;left:70px;}
      #r_utime{font-size:18px;position:relative;top:-385px;left:70px}
   		#f_box{width:350px;height:300px;background-color:transprent;border-radius:8px;box-shadow:0 0 10px gray;
   			   margin-top:-370px;margin-left:420px;padding:35px;}
       #f_img2{width:120px;width:120px;margin-top:-20px;margin-left:265px;}
      #l_uname{font-family:幼圆;font-size:18px;position:relative;top:-80px;}
      #r_uname{font-size:21px;position:relative;top:-80px;}
       #l_uage{font-family:幼圆;font-size:18px;position:relative;top:-70px;}
       #r_uage{font-size:21px;position:relative;top:-70px;}
       #l_ubir{font-family:幼圆;font-size:18px;position:relative;top:-60px;}
       #r_ubir{font-size:21px;position:relative;top:-60px;}
     #l_uemail{font-family:幼圆;font-size:18px;position:relative;top:-50px;}
     #r_uemail{font-size:21px;position:relative;top:-50px;}
/*———first_page—————————————————————————————————————————————————————————————————————————————————————————————————————————*/
</style>

<!--—————————————————————————————————————————————————以上是CSS———————————————————————————————————————————————————————————-->




<!--—————————————————————————————————————————————————以下是JS————————————————————————————————————————————————————————————-->
<script>
	 function change(x){
            x.style.cursor = "pointer";
            x.style.color = "#ff6600";
     }
     function modoru(x){
         x.style.color = "#fff";
     }
      function changel(x){
            x.style.cursor = "pointer";
            x.style.color = "#af7340";
     }
     function modorul(x){
         x.style.color = "#7f97a4";
     }
     function checkName(){
     	var x = document.getElementById("loginName").innerHTML;
     	if(x != "登录"){
     		document.getElementById("loginName").href = "";
     	}
     }
     function check(){
		var name = document.getElementById("aname").value;
		var phonenumber = document.getElementById("aphone").value;
		var birthday = document.getElementById("abirthday").value;
		var imgpath = document.getElementById("img_path").value;
		var pnum = /^[0-9]+$/;
		var reg2 = /^\d+-\d+-\d+$/;
		if(imgpath == ""){
			document.getElementById("errmsg").innerHTML = "请上传头像";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(name == ""){
			document.getElementById("errmsg").innerHTML = "名字不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(birthday == ""){
			document.getElementById("errmsg").innerHTML = "生日不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg2.test(birthday)){
			document.getElementById("errmsg").innerHTML = "生日格式不正确 (年-月-日)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		if(phonenumber == ""){
			document.getElementById("errmsg").innerHTML = "电话不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!pnum.test(phonenumber)){
			document.getElementById("errmsg").innerHTML = "电话格式不正确 (无符号格式)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		return true;
	}
	function check_mod(){
		var name = document.getElementById("mod_iname").value;
		var phonenumber = document.getElementById("mod_iphone").value;
		var birthday = document.getElementById("mod_ibirthday").value;
		var imgpath = document.getElementById("mod_img_path").value;
		var pnum = /^[0-9]+$/;
		var reg2 = /^\d+-\d+-\d+$/;
		if(imgpath == ""){
			document.getElementById("errmsg").innerHTML = "请上传头像";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(name == ""){
			document.getElementById("errmsg").innerHTML = "名字不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(birthday == ""){
			document.getElementById("errmsg").innerHTML = "生日不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg2.test(birthday)){
			document.getElementById("errmsg").innerHTML = "生日格式不正确 (年-月-日)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		if(phonenumber == ""){
			document.getElementById("errmsg").innerHTML = "电话不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!pnum.test(phonenumber)){
			document.getElementById("errmsg").innerHTML = "电话格式不正确 (无符号格式)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		return true;
	}
	function checkErr(){
     	var msg = document.getElementById("errmsg").innerHTML;
		var reg = /^\W+$/;
		if(reg.test(msg)){
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
		}
     }
     function search(x){
     	x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
     	document.getElementById("search").style.visibility = "visible";
     	document.getElementById("add").style.visibility = "hidden";
     	
     	document.getElementById("first_page").style.visibility = "hidden";
     	//#modinfo,#modinfo #portrait,#m_baseinfo,#m_eduinfo,#m_workinfo,#m_comentinfo
     	document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("contactinfo").style.visibility = "hidden";
     	document.getElementById("con_baseinfo").style.visibility = "hidden";
     	document.getElementById("con_educateinfo").style.visibility = "hidden";
     	document.getElementById("con_workinfo").style.visibility = "hidden";
     	document.getElementById("con_comentinfo").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addeducate").style.visibility = "hidden";
     	document.getElementById("addwork").style.visibility = "hidden";
     	document.getElementById("addcoment").style.visibility = "hidden";
     	document.getElementById("addsub").style.visibility = "hidden";
     	document.getElementById("portrait").style.visibility = "hidden";
     	document.getElementById("delete").style.visibility = "hidden";
     	document.getElementById("modify").style.visibility = "hidden";
     	document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
     }
     function del(x){
     	x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
     	document.getElementById("delete").style.visibility = "visible";
     	document.getElementById("search").style.visibility = "hidden";
     	document.getElementById("add").style.visibility = "hidden";
     	document.getElementById("contactinfo").style.visibility = "hidden";
     	document.getElementById("con_baseinfo").style.visibility = "hidden";
     	document.getElementById("con_educateinfo").style.visibility = "hidden";
     	document.getElementById("con_workinfo").style.visibility = "hidden";
     	document.getElementById("con_comentinfo").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addeducate").style.visibility = "hidden";
     	document.getElementById("addwork").style.visibility = "hidden";
     	document.getElementById("addcoment").style.visibility = "hidden";
     	document.getElementById("addsub").style.visibility = "hidden";
     	document.getElementById("portrait").style.visibility = "hidden";
     	document.getElementById("modify").style.visibility = "hidden";
     	document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
     }
     function mod(x){
     	x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
     	document.getElementById("delete").style.visibility = "hidden";
     	document.getElementById("modify").style.visibility = "visible";
     	document.getElementById("search").style.visibility = "hidden";
     	document.getElementById("add").style.visibility = "hidden";
     	document.getElementById("contactinfo").style.visibility = "hidden";
     	document.getElementById("con_baseinfo").style.visibility = "hidden";
     	document.getElementById("con_educateinfo").style.visibility = "hidden";
     	document.getElementById("con_workinfo").style.visibility = "hidden";
     	document.getElementById("con_comentinfo").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addeducate").style.visibility = "hidden";
     	document.getElementById("addwork").style.visibility = "hidden";
     	document.getElementById("addcoment").style.visibility = "hidden";
     	document.getElementById("addsub").style.visibility = "hidden";
     	document.getElementById("portrait").style.visibility = "hidden";
     	document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
     }
     function home(x){
     	x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("delete").style.visibility = "hidden";
     	document.getElementById("modify").style.visibility = "hidden";
     	document.getElementById("search").style.visibility = "hidden";
     	document.getElementById("add").style.visibility = "hidden";
     	document.getElementById("contactinfo").style.visibility = "hidden";
     	document.getElementById("con_baseinfo").style.visibility = "hidden";
     	document.getElementById("con_educateinfo").style.visibility = "hidden";
     	document.getElementById("con_workinfo").style.visibility = "hidden";
     	document.getElementById("con_comentinfo").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addbasic").style.visibility = "hidden";
     	document.getElementById("addeducate").style.visibility = "hidden";
     	document.getElementById("addwork").style.visibility = "hidden";
     	document.getElementById("addcoment").style.visibility = "hidden";
     	document.getElementById("addsub").style.visibility = "hidden";
     	document.getElementById("portrait").style.visibility = "hidden";
     	document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "visible";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
     }
     function add(x){
		x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "visible";
		document.getElementById("addbasic").style.visibility = "visible";
		document.getElementById("portrait").style.visibility = "visible";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
	function acc_set(x){
		x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("account_set_box").style.visibility = "visible";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "hidden";
		document.getElementById("addbasic").style.visibility = "hidden";
		document.getElementById("portrait").style.visibility = "hidden";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
	function about(x){
		x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("about").style.visibility = "visible";
		document.getElementById("account_set_box").style.visibility = "hidden";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "hidden";
		document.getElementById("addbasic").style.visibility = "hidden";
		document.getElementById("portrait").style.visibility = "hidden";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_sub").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
	}
	function i_out(x){
		x.style.backgroundColor = "#7f97a4";
		x.onmouseout = "";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
		document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
	function addressbook(x){
		var x = document.getElementById("page_code").innerHTML;
 		document.getElementById("pcode").value = x;
		document.getElementById("addressbook_form").submit();
	}
	function bir_list(x){
		var x = document.getElementById("bir_page_code").innerHTML;
		document.getElementById("bir_pcode").value = x;
		document.getElementById("birthday_f").submit();
	}
	function we_story(x){
		var x1 = document.getElementById("ws_page_code").innerHTML;
		document.getElementById("ws_pcode").value = x1;
		document.getElementById("ws_form").submit();
	}
	function checkModIn(){
		var name = document.getElementById("ia_name").value;
		var password = document.getElementById("ia_password").value;
		var age = document.getElementById("ia_age").value;
		var email = document.getElementById("ia_email").value;
		var birthday = document.getElementById("ia_birthday").value;
		var reg1 = /^\w+$/;
		var agereg = /^\d+$/;
		var reg2 = /^\d+-\d+-\d+$/;
		var mail = /^\w+@\w+.(com|org|net|cn)$/;
		if(name == ""){
			document.getElementById("errmsg").innerHTML = "名字不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg1.test(name)){
			document.getElementById("errmsg").innerHTML = "名字中不能存在中文或空格";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(name.length > 15){
			document.getElementById("errmsg").innerHTML = "名字的长度不能超过15位";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(password == ""){
			document.getElementById("errmsg").innerHTML = "密码不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg1.test(password)){
			document.getElementById("errmsg").innerHTML = "密码中不能存在空格";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(password.length > 15){
			document.getElementById("errmsg").innerHTML = "密码的长度不能超过15位";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(age == ""){
			document.getElementById("errmsg").innerHTML = "年龄不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if((!agereg.test(age)) || age < 0 || age > 150){
			document.getElementById("errmsg").innerHTML = "年龄不正确";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(email == ""){
			document.getElementById("errmsg").innerHTML = "邮箱不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(!mail.test(email)){
			document.getElementById("errmsg").innerHTML = "邮箱格式不正确";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		if(birthday == ""){
			document.getElementById("errmsg").innerHTML = "生日不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(!reg2.test(birthday)){
			document.getElementById("errmsg").innerHTML = "生日格式不正确 (年-月-日)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
	}
</script>
<!--———————————————————————————————————————————————————以上是JS——————————————————————————————————————————————————————————-->
</head>

<!--———————————————————————————————————————————————————以下是HTML————————————————————————————————————————————————————————-->
<body id="body" onload="checkErr()">

<!--左上角用户名/登录-->
<h1 id="title">
	<a href="/Bond/login.jsp" id="loginName" onclick="checkName()" onmouseover="changel(this)" onmouseout="modorul(this)">${empty U.username?"登录":U.username }</a>
</h1>
<!--————————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

<!-- 错误信息-->
<div id="errmsg">${NameIsNull}${Error}${Success}${NameNotFound}${SearchError}${SearchNameIsNull}${DeleteInfoError}${DeleteError}${DeleteSuccess}${ModifyInfoError}${DataIsNull}${ModifySuccess}${ModError}${ModSuccess}${NameAlreadyExist}${NotLogin}${DelError}${DelSuccess}${StoryDisplayError}${StoryIsNull}${EditSucess}</div>
<!--————————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

<!-- 删除session -->
<%
	request.getSession().removeAttribute("Success");
	request.getSession().removeAttribute("NameNotFound");
	request.getSession().removeAttribute("SearchError");
	request.getSession().removeAttribute("SearchNameIsNull");
	request.getSession().removeAttribute("Error");
	request.getSession().removeAttribute("NameIsNull");
	request.getSession().removeAttribute("DeleteInfoError");
	request.getSession().removeAttribute("DeleteError");
	request.getSession().removeAttribute("ModifyInfoError");
	request.getSession().removeAttribute("DeleteSuccess");
	request.getSession().removeAttribute("DataIsNull");
	request.getSession().removeAttribute("ModifySuccess");
	request.getSession().removeAttribute("ModError");
	request.getSession().removeAttribute("ModSuccess");
	request.getSession().removeAttribute("NameAlreadyExist");
	request.getSession().removeAttribute("NotLogin");
	request.getSession().removeAttribute("DelError");
	request.getSession().removeAttribute("DelSuccess");
	request.getSession().removeAttribute("StoryDisplayError");
	request.getSession().removeAttribute("StoryIsNull");
	request.getSession().removeAttribute("EditSucess");
 %>
<!--————————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

<!-- 水平位置选项卡 -->
<div id="horizonItem">
 	<div class="t" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" id="i_home" onclick="home(this)">首页</div>
    <div class="t" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" onmouseout="this.style.backgroundColor='#fff'" onclick="add(this)" id="i_add">添加</div>
    <div class="t" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" onmouseout="this.style.backgroundColor='#fff'" onclick="mod(this)" id="i_mod">修改</div>
    <div class="t" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" onmouseout="this.style.backgroundColor='#fff'" onclick="search(this)" id="i_sear">查询</div>
    <div class="t" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" onmouseout="this.style.backgroundColor='#fff'" onclick="del(this)" id="i_del">删除</div>
     <a onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" onmouseout="this.style.backgroundColor='#fff'"
     href="/Bond/login.jsp" class="t" onclick="i_out(this)">退出</a>
 </div>
<!--————————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

<!-- 页面内部 --> 
<div id="internal">

	<!-- 垂直位置选项卡 -->
 	<div id="verticalItem">
		<div class="l" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" id="i_addbook" onmouseout="this.style.backgroundColor='#fff'" onclick="addressbook(this)">通讯录</div>
    	<div class="l" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'"
         onmouseout="this.style.backgroundColor='#fff'" onclick="bir_list(this)" id="i_birlist">生日提醒</div>
    	<div class="l" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'"
         onmouseout="this.style.backgroundColor='#fff'" id="i_story" onclick="we_story(this)">我们的故事</div>
    	<div class="l" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'"
         onmouseout="this.style.backgroundColor='#fff'" id="i_set" onclick="acc_set(this)">设置</div>
    	<div class="l" onmouseover="this.style.backgroundColor='#7f97a4';this.style.cursor='pointer'" id="i_about"
    		onmouseout="this.style.backgroundColor='#fff'" onclick="about(this)">关于</div>
 	</div>
<!--verticalItem————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 选项添加 -->
 	<div id="add">
 		<div id="portrait"> <!-- 基本信息页的上传头像 -->
 			<img src="upload.png" id="photo">
 			<input id="img_file" type="file" onmouseover="up_color()" onmouseout="up_modoru()"><span id="sup">上传头像</span>
 			<span onclick="change_img()" id="confirm" onmouseover="change_co(this)" onmouseout="modoru_co(this)">确认</span>
 		</div>
 		<form action="/Bond/add" method="post" onsubmit="return check()">
 			<!-- 基本信息页 -->
 			<div id="addbasic">
 				<span class="addcon" id="conbase">添加联系人</span>
	 			<p id="basicinfo">基本信息</p>
	 				<span id="sname" class="rsl">姓名</span><input type="text" name="bname" id="aname" placeholder="name" class="ainl"/>
	 				<span id="sheight" class="rsm">身高</span><input type="text" name="height" id="aheight" class="ainm" placeholder="height"/><br/>
	 				<span id="sgender" class="rsl">性别</span><input type="text" name="gender" id="agender" class="ainl" placeholder="gender"/>
	 				<span id="sweight" class="rsm">体重</span><input type="text" name="weight" id="aweight" class="ainm" placeholder="weight"/><br/>
	 				<span id="sage" class="rsl">年龄</span><input type="text" name="age" id="aage" class="ainl" placeholder="age"/>
	 				<span id="sstate" class="rsl">状态</span><input type="text" name="state" id="astate" class="ainl" placeholder="state"/><br/>
	 				<span id="sprofession" class="rsm">职业</span><input type="text" name="profession" id="aprofession" class="ainm" placeholder="profession"/>
	 				<span id="sbir" class="rsm">生日</span><input type="text" name="birthday" id="abirthday" class="ainm" placeholder="birthday"/><br/>
	 				<span id="shometown" class="rsr">家乡</span><input type="text" name="hometown" id="ahometown" class="ainr" placeholder="home-town"/>
	 				<span id="sconstellation" class="rsm">星座</span><input type="text" name="constellation" id="aconstellation" class="ainm" placeholder="constellation"/><br/>
	 				<span id="strongpoint" class="rsl">特长</span><input type="text" name="strongpoint" id="astrongpoint" class="ainl" placeholder="strong-pointer"/>
	 				<span id="sqq" class="rsr">QQ</span><input type="text" name="qq" id="aqq" class="ainr" placeholder="QQ"/><br/>
	 				<span id="sphone" class="rsr">电话</span><input type="text" name="phonenumber" id="aphone" class="ainr" placeholder="phone-number"/>
	 				<span id="semail" class="rsr">邮箱</span><input type="text" name="email" id="aemail" class="ainr" placeholder="e-mail"/>
	 				<span id="saddress" class="rsr">住址</span><input type="text" name="address" id="aaddress" class="ainr" placeholder="address"/><br/>
	 				<div id="hobbybox">
	 					<span id="shobby">爱好</span><br/>
	 					<input type="checkbox" name="hobby" value="看电影" class="h1" id="movie"/><span class="sh">看电影</span><br/>
	 					<input type="checkbox" name="hobby" value="看小说" class="h1" id="novel"/><span class="sh">看小说</span><br/>
	 					<input type="checkbox" name="hobby" value="听音乐" class="h1" id="movie"/><span class="sh">听音乐</span><br/>
	 					<input type="checkbox" name="hobby" value="看动漫" class="h1" id="novel"/><span class="sh">看动漫</span><br/>
	 					<input type="checkbox" name="hobby" value="运动" class="h1" id="movie"/><span class="sh">运动</span><br/>
	 					<input type="checkbox" name="hobby" value="旅行" class="h1" id="movie"/><span class="sh">旅行</span><br/>
	 					<input type="checkbox" name="hobby" value="跳舞" class="h1" id="novel"/><span class="sh">跳舞</span><br/>
	 					<input type="checkbox" name="hobby" value="烘培" class="h1" id="movie"/><span class="sh">烘培</span><br/>
	 					<input type="checkbox" name="hobby" value="其它" class="h1" id="novel"/><span class="sh">其它</span><br/>
	 				</div>
 			</div>
			<!-- 教育信息页 --> 			
 			<div id="addeducate">
 				<span class="addcon" id="conedu">添加联系人</span>
 				<p id="educateinfo">教育信息</p>
 				<span class="sedu" id="edu1">最高学历</span><input type="text" class="eduin" name="education" id="education" placeholder="highest educational background"/><br/>
 				<span class="sedu">毕业院校</span><input type="text" class="eduin" name="school" id="school" placeholder="university graduated"/><br/>
 				<span class="sedu">专业类别</span><input type="text" class="eduin" name="major" id="major" placeholder="subordinate profession"/><br/>
 				<span class="sedu">毕业时间</span><input type="text" class="eduin" name="graduate" id="graduate" placeholder="graduation time"/><br/>
 			</div>
 			<!-- 工作信息页 -->
 			<div id="addwork">
 				<span class="addcon" id="conwork">添加联系人</span>
 				<p id="workinfo">工作信息</p>
 				<div id="wstate">
 					<span id="sinoffice" class="workstate">在职</span><input type="radio" id="inoffice" name="workstate" value="在职" checked="checked" onclick="change_in()"/>
 					<span id="sunemployed" class="workstate">待业</span><input type="radio" id="unemployed" name="workstate" value="待业" onclick="change_un()"/>
 					<span id="oncework">过去的工作信息</span>
 				</div>
 				<div id="wi">
 					<span id="scompany" class="swi">所在公司</span><input type="text" class="wiin" id="wcompany" name="company" placeholder="subordinate-company"/>
 					<span id="streatment" class="swi">待遇</span><input type="text" class="wiin" id="wtreatment" name="treatment" placeholder="treatment"/><br/>
 					<span id="spost" class="swi">职位</span><input type="text" class="wiin" id="wpost" name="bpost" placeholder="post"/>
 					<span id="sworkinglife" class="swi">工作年限</span><input type="text" class="wiin" id="wworkinglife" name="workinglife" placeholder="working-life"/><br/>
 					<span id="ssale" class="swi">薪资</span><input type="text" class="wiin" id="wsale" name="sale" placeholder="sale"/>
 					<span id="scaddress" class="swi">公司地址</span><input type="text" class="wiin" id="wcaddress" name="caddress" placeholder="company-address"/><br/>
 					<span id="sreplenish">补充信息</span><input type="text" id="wreplenish" name="replenish" placeholder="replenish-info"/><br/>
 				</div>
 			</div>
 			<!-- 备注信息页 -->
 			<div id="addcoment">
 				<span class="addcon" id="concoment">添加联系人</span>
 				<p id="comentinfo">备注信息</p>
 				<span id="areamsg">有什么需要特别补充的吗?</span><br/>
 				<textarea rows="15" cols="70" id="comentarea" name="coment">
 				</textarea>
 			</div>
			<input type="text" id="img_path" name="imgpath"/>
			<input type="submit" value="确认添加" id="addsub" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
		<!-- 添加页面的页码 -->
		<div id="page">
			<a class="seqnum" id="page1" onclick="p1()" style="color:gray">1</a>
		 	<a class="seqnum" id="page2" onclick="p2()">2</a>
		 	<a class="seqnum" id="page3" onclick="p3()">3</a>
		 	<a class="seqnum" id="page4" onclick="p4()">4</a>
		</div>
 	</div>
<!--add————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 修改选项 -->
	<div id="modify">
		<span id="mod_msg">请输入要修改的联系人姓名:</span><br/>
		<form action="/Bond/modgetinfo" method="post" onsubmit="return mod_checkname()">
			<input type="text" id="mod_in" name="mod_name" placeholder="name"/><br/>
			<input type="submit" value="确定" id="modify_sub" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
	</div>
<!--modify—————————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 选择修改后返回的修改界面 -->
	<div id="modinfo">
		<span id="modinfo_msg">修改联系人信息</span>
		<!-- 左上角头像 -->
		<div id="m_portrait">
	 			<img src="${BondContact.imgpath}" id="mod_photo">
	 			<input id="mod_imgfile" type="file" onmouseover="mod_change_co(this)" onmouseout="mod_modoru_co(this)"><span id="mod_imgup">上传头像</span>
	 			<span onclick="mod_change_img()" id="mod_confirm" onmouseover="change_co(this)" onmouseout="modoru_co(this)">确认</span>
	 	</div>
		<form action="/Bond/modify" method="post" onsubmit="return check_mod()">
			<!-- 基本信息 -->
			<div id="m_baseinfo">
				<div id="mod_basemsg">基本信息</div>
				<span id="mod_sname" class="mod_name">姓名</span><input type="text" name="bname" id="mod_iname" value="${BondContact.bname}" placeholder="${empty BondContact.bname?'未填写':BondContact.bname}" class="mod_value"/>
				<span id="mod_sheight" class="mod_name">身高</span><input type="text" name="height" id="mod_iheight" class="mod_value" value="${BondContact.height}" placeholder="${empty BondContact.height?'未填写':BondContact.height}"/><br/>
				<span id="mod_sgender" class="mod_name">性别</span><input type="text" name="gender" id="mod_igender" class="mod_value" value="${BondContact.gender}" placeholder="${empty BondContact.gender?'未填写':BondContact.gender}"/>
				<span id="mod_sweight" class="mod_name">体重</span><input type="text" name="weight" id="mod_iweight" class="mod_value" value="${BondContact.weight}" placeholder="${empty BondContact.weight?'未填写':BondContact.weight}"/><br/>
				<span id="mod_sage" class="mod_name">年龄</span><input type="text" name="age" id="mod_iage" class="mod_value" value="${BondContact.age}" placeholder="${empty BondContact.age?'未填写':BondContact.age}"/>
				<span id="mod_sstate" class="mod_name">状态</span><input type="text" name="state" id="mod_istate" class="mod_value" value="${BondContact.state}" placeholder="${empty BondContact.state?'未填写':BondContact.state}"/><br/>
				<span id="mod_sprofession" class="mod_name">职业</span><input type="text" name="profession" id="mod_iprofession" class="mod_value" value="${BondContact.profession}" placeholder="${empty BondContact.profession?'未填写':BondContact.profession}"/>
				<span id="mod_sbirthday" class="mod_name">生日</span><input type="text" name="birthday" id="mod_ibirthday" class="mod_value" value="${BondContact.birthday}" placeholder="${empty BondContact.birthday?'未填写':BondContact.birthday}"/><br/>
				<span id="mod_shometown" class="mod_name">家乡</span><input type="text" name="hometown" id="mod_ihometown" class="mod_value" value="${BondContact.hometown}" placeholder="${empty BondContact.hometown?'未填写':BondContact.hometown}"/>
				<span id="mod_sconstellation" class="mod_name">星座</span><input type="text" name="constellation" id="mod_iconstellation" class="mod_value" value="${BondContact.constellation}" placeholder="${empty BondContact.constellation?'未填写':BondContact.constellation}"/><br/>
				<span id="mod_sstrongpoint" class="mod_name">特长</span><input type="text" name="strongpoint" id="mod_istrongpoint" class="mod_value" value="${BondContact.strongpoint}" placeholder="${empty BondContact.strongpoint?'未填写':BondContact.strongpoint}"/>
				<span id="mod_sqq" class="mod_name">QQ</span><input type="text" name="qq" id="mod_iqq" class="mod_value" value="${BondContact.qq}" placeholder="${empty BondContact.qq?'未填写':BondContact.qq}"/><br/>
				<span id="mod_sphone" class="mod_name">电话</span><input type="text" name="phonenumber" id="mod_iphone" class="mod_value" value="${BondContact.phonenumber}" placeholder="${empty BondContact.phonenumber?'未填写':BondContact.phonenumber}"/>
				<span id="mod_semail" class="mod_name">邮箱</span><input type="text" name="email" id="mod_iemail" class="mod_value" value="${BondContact.email}" placeholder="${empty BondContact.email?'未填写':BondContact.email}"/>
				<span id="mod_saddress" class="mod_name">住址</span><input type="text" name="address" id="mod_iaddress" class="mod_value" value="${BondContact.address}" placeholder="${empty BondContact.address?'未填写':BondContact.address}"/><br/>
				<div id="mod_hobbybox">
					<span id="mod_shobby">爱好</span><br/>
					<input type="checkbox" name="hobby" value="看电影" class="mod_h1"/><span class="mod_sh">看电影</span><br/>
					<input type="checkbox" name="hobby" value="看小说" class="mod_h1"/><span class="mod_sh">看小说</span><br/>
					<input type="checkbox" name="hobby" value="听音乐" class="mod_h1"/><span class="mod_sh">听音乐</span><br/>
					<input type="checkbox" name="hobby" value="看动漫" class="mod_h1"/><span class="mod_sh">看动漫</span><br/>
					<input type="checkbox" name="hobby" value="运动" class="mod_h1"/><span class="mod_sh">运动</span><br/>
					<input type="checkbox" name="hobby" value="旅行" class="mod_h1"/><span class="mod_sh">旅行</span><br/>
					<input type="checkbox" name="hobby" value="跳舞" class="mod_h1"/><span class="mod_sh">跳舞</span><br/>
					<input type="checkbox" name="hobby" value="烘培" class="mod_h1"/><span class="mod_sh">烘培</span><br/>
					<input type="checkbox" name="hobby" value="其它" class="mod_h1"/><span class="mod_sh">其它</span><br/>
				</div>
			</div>
			<!-- 教育信息 -->
			<div id="m_eduinfo">
				<div id="mod_edumsg">教育信息</div>
				<span class="modedu_name" id="mod_seducation">最高学历</span><input type="text" class="modedu_value" name="education" id="mod_ieducation" value="${BondContact.education}" placeholder="${empty BondContact.education?'未填写':BondContact.education}"/><br/>
				<span class="modedu_name" id="mod_sschool">毕业院校</span><input type="text" class="modedu_value" name="school" id="mod_ischool" value="${BondContact.school}" placeholder="${empty BondContact.school?'未填写':BondContact.school}"/><br/>
		 		<span class="modedu_name" id="mod_smajor">专业类别</span><input type="text" class="modedu_value" name="major" id="mod_imajor" value="${BondContact.major}" placeholder="${empty BondContact.major?'未填写':BondContact.major}"/><br/>
		 		<span class="modedu_name" id="mod_sgraduate">毕业时间</span><input type="text" class="modedu_value" name="graduate" value="${BondContact.graduate}" id="mod_igraduate" placeholder="${empty BondContact.graduate?'未填写':BondContact.graduate}"/><br/>
			</div>
			<!-- 工作信息 -->
			<div id="m_workinfo">
				<div id="mod_workmsg">工作信息</div>
				<div id="mod_wstate">
 					<span id="mod_sinoffice" class="mod_workstate">在职</span><input class="mod_workstateradio" type="radio" id="mod_iinoffice" name="workstate" value="在职" checked="checked" onclick="mod_change_in()"/>
 					<span id="mod_sunemployed" class="mod_workstate">待业</span><input class="mod_workstateradio" type="radio" id="mod_iunemployed" name="workstate" value="待业" onclick="mod_change_un()"/>
 					<span id="mod_oncework">过去的工作信息</span>
 				</div>
 				<span id="mod_scompany" class="mod_works">所在公司</span><input type="text" class="mod_workin" id="mod_icompany" name="company" value="${BondContact.company}" placeholder="${empty BondContact.company?'未填写':BondContact.company}"/>
				<span id="mod_streatment" class="mod_works">待遇</span><input type="text" class="mod_workin" id="mod_itreatment" name="treatment" value="${BondContact.treatment}" placeholder="${empty BondContact.treatment?'未填写':BondContact.treatment}"/><br/>
				<span id="mod_spost" class="mod_works">职位</span><input type="text" class="mod_workin" id="mod_ipost" name="bpost" value="${BondContact.bpost}" placeholder="${empty BondContact.bpost?'未填写':BondContact.bpost}"/>
				<span id="mod_sworkinglife" class="mod_works">工作年限</span><input type="text" class="mod_workin" id="mod_iworkinglife" name="workinglife" value="${BondContact.workinglife}" placeholder="${empty BondContact.workinglife?'未填写':BondContact.workinglife}"/><br/>
				<span id="mod_ssale" class="mod_works">薪资</span><input type="text" class="mod_workin" id="mod_isale" name="sale" value="${BondContact.sale}" placeholder="${empty BondContact.sale?'未填写':BondContact.sale}"/>
				<span id="mod_scaddress" class="mod_works">公司地址</span><input type="text" class="mod_workin" id="mod_icaddress" name="caddress" value="${BondContact.caddress}" placeholder="${empty BondContact.caddress?'未填写':BondContact.caddress}"/><br/>
				<span id="mod_sreplenish">补充信息</span><input type="text" id="mod_ireplenish" name="replenish" value="${BondContact.replenish}" placeholder="${empty BondContact.replenish?'未填写':BondContact.replenish}"/><br/>
			</div>
			<!-- 备注信息 -->
			<div id="m_comentinfo">
				<div id="mod_comentmsg">备注信息</div>
				<textarea rows="15" cols="70" id="mod_comentarea" name="coment">${BondContact.coment}</textarea>
			</div>
			<input style="visibility:hidden" type="text" name="oname" value="${BondContact.bname}"/>
			<input type="text" id="mod_img_path" name="imgpath" style="visibility:hidden;" value="${BondContact.imgpath}"/>
			<input type="submit" value="确认修改" id="mod_sub" onmouseover="change_co(this)" onmouseout="modoru_co(this)" style="visibility:hidden;"/>
		</form>
		<!-- 修改页面的页码 -->
		<div id="mod_page">
				<a class="modPage" id="mod_page1" onclick="mod_p1()" style="color:gray">1</a>
			 	<a class="modPage" id="mod_page2" onclick="mod_p2()">2</a>
			 	<a class="modPage" id="mod_page3" onclick="mod_p3()">3</a>
			 	<a class="modPage" id="mod_page4" onclick="mod_p4()">4</a>
		</div>
	</div>
<!--modinfo————————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 选项查询 -->
	<div id="search">
		<span id="sear_msg">请输入要查找的联系人姓名:</span><br/>
		<form action="/Bond/search" method="post" onsubmit=" return sear_check()">
			<input type="text" id="sear_in" name="name" placeholder="name"/><br/>
			<input type="submit" value="确定" id="sear_sub" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
	</div>
<!--search—————————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 查询后返回的联系人信息 -->
	<div id="contactinfo">
		<!-- 基本信息 -->
		<div id="con_baseinfo">
			<span id="base_head" class="sear_head">联系人信息</span>
			<span id="title_base" class="coninfo_title">基本信息</span>
			<img src="${BondContact.imgpath}" id="sear_img">
			<div id="r1" class="rbox">
				<br/><br/>
				<span id="sc_name" class="b_sckey">姓名:</span><span id="v_name" class="b_scvalue">${empty BondContact.bname?'未填写':BondContact.bname}</span><br/><br/>
				<span id="sc_gender" class="b_sckey">性别:</span><span id="v_gender" class="b_scvalue">${empty BondContact.gender?'未填写':BondContact.gender}</span><br/><br/>
				<span id="sc_age" class="b_sckey">年龄:</span><span id="v_age" class="b_scvalue">${empty BondContact.age?'未填写':BondContact.age}</span>
			</div>
			<div id="r2" class="rbox">
				<br/><br/>
				<span id="sc_hei" class="b_sckey">身高:</span><span id="v_hei" class="b_scvalue">${empty BondContact.height?'未填写':BondContact.height}</span><br/><br/>
				<span id="sc_wei" class="b_sckey">体重:</span><span id="v_wei" class="b_scvalue">${empty BondContact.weight?'未填写':BondContact.weight}</span><br/><br/>
				<span id="sc_state" class="b_sckey">状态:</span><span id="v_state" class="b_scvalue">${empty BondContact.state?'未填写':BondContact.state}</span>
			</div>
			<div id="r3" class="rbox">
				<br/><br/>
				<span id="sc_bir" class="b_sckey">生日:</span><span id="v_bir" class="b_scvalue">${empty BondContact.birthday?'未填写':BondContact.birthday}</span><br/><br/>
				<span id="sc_conste" class="b_sckey">星座:</span><span id="v_conste" class="b_scvalue">${empty BondContact.constellation?'未填写':BondContact.constellation}</span><br/><br/>
				<span id="sc_profe" class="b_sckey">职业:</span><span id="v_profe" class="b_scvalue">${empty BondContact.profession?'未填写':BondContact.profession}</span>
			</div>
			<div id="c1_1">
				<span id="sc_qq" class="b_sckey">QQ:</span><span id="v_qq" class="b_scvalue">${empty BondContact.qq?'未填写':BondContact.qq}</span>
			</div>
			<div id="c1_2">
				<span id="sc_pnum" class="b_sckey">电话:</span><span id="v_pnum" class="b_scvalue">${empty BondContact.phonenumber?'未填写':BondContact.phonenumber}</span>
			</div>
			<div id="c1_3">
				<span id="sc_email" class="b_sckey">邮箱:</span><span id="v_email" class="b_scvalue">${empty BondContact.email?'未填写':BondContact.email}</span>
			</div>
			<div id="c2_1">
				<span id="sc_home" class="b_sckey">家乡:</span><span id="v_home" class="b_scvalue">${empty BondContact.hometown?'未填写':BondContact.hometown}</span>
			</div>
			<div id="c2_2">
				<span id="sc_address" class="b_sckey">住址:</span><span id="v_address" class="b_scvalue">${empty BondContact.address?'未填写':BondContact.address}</span>
			</div>
			<div id="c3_1">
				<span id="sc_strong" class="b_sckey">特长:</span><span id="v_strong" class="b_scvalue">${empty BondContact.strongpoint?'未填写':BondContact.strongpoint}</span>
			</div>
			<div id="c3_2">
				<span id="sc_hobby" class="b_sckey">爱好:</span><span id="v_hobby" class="b_scvalue"><c:if test="${empty BondContact.hobby}">未选择</c:if><c:if test="${!empty BondContact.hobby}"><c:forEach items="${BondContact.hobby}" var="va">${va}&nbsp;&nbsp;</c:forEach></c:if></span>
			</div>
		</div>
		<!-- 教育信息 -->
		<div id="con_educateinfo">
			<span id="edu_head" class="sear_head">联系人信息</span>
			<span id="title_edu" class="coninfo_title">教育信息</span>
			<span id="sc_edu" class="e_sckey">最高学历:</span>
			<div id="edu1_1">
				<span id="v_edu" class="e_scvalue">${empty BondContact.education?'未填写':BondContact.education}</span>
			</div>
			<span id="sc_sch" class="e_sckey">毕业院校:</span>
			<div id="edu1_2">
				<span id="v_sch" class="e_scvalue">${empty BondContact.school?'未填写':BondContact.school}</span>
			</div>
			<span id="sc_major" class="e_sckey">专业类别:</span>
			<div id="edu1_3">
				<span id="v_major" class="e_scvalue">${empty BondContact.major?'未填写':BondContact.major}</span>
			</div>
			<span id="sc_gradu" class="e_sckey">毕业时间:</span>
			<div id="edu1_4">
				<span id="v_gradu" class="e_scvalue">${empty BondContact.graduate?'未填写':BondContact.graduate}</span>
			</div>
		</div>
		<!-- 工作信息 -->
		<div id="con_workinfo">
			<span id="work_head" class="sear_head">联系人信息</span>
			<span id="title_work" class="coninfo_title">工作信息</span>
			<div id="w1_1">
				<span id="sc_wstate" class="w_sckey">状态:</span><span id="v_wstate" class="w_scvalue">${empty BondContact.workstate?'未填写':BondContact.workstate}</span>
			</div>
			
			<div id="w2_1">
				<span id="sc_company" class="w_sckey">所在公司:</span><span id="v_company" class="w_scvalue">${empty BondContact.company?'未填写':BondContact.company}</span>
			</div>
			<div id="w2_2">
				<span id="sc_post" class="w_sckey">职位:</span><span id="v_post" class="w_scvalue">${empty BondContact.bpost?'未填写':BondContact.bpost}</span>
			</div>
			
			<div id="w3_1">
				<span id="sc_sale" class="w_sckey">薪资:</span><span id="v_sale" class="w_scvalue">${empty BondContact.sale?'未填写':BondContact.sale}</span>
			</div>
			<div id="w3_2">
				<span id="sc_treat" class="w_sckey">待遇:</span><span id="v_treat" class="w_scvalue">${empty BondContact.treatment?'未填写':BondContact.treatment}</span>
			</div>
			
			<div id="w4_1">
				<span id="sc_wf" class="w_sckey">工作年限:</span><span id="v_wf" class="w_scvalue">${empty BondContact.workinglife?'未填写':BondContact.workinglife}</span>
			</div>
			<div id="w4_2">
				<span id="sc_caddress" class="w_sckey">公司地址:</span><span id="v_caddress" class="w_scvalue">${empty BondContact.caddress?'未填写':BondContact.caddress}</span>
			</div>
			<div id="w5_1">
				<span id="sc_replen" class="w_sckey">补充信息:</span><span id="v_replen" class="w_scvalue">${empty BondContact.replenish?'未填写':BondContact.replenish}</span>
			</div>
		</div>
		<!-- 备注信息 -->
		<div id="con_comentinfo">
			<span id="coment_head" class="sear_head">联系人信息</span>
			<span id="title_coment" class="coninfo_title">备注信息</span>
			<input type="text" id="info_box" disabled="disabled" placeholder="${empty BondContact.coment.trim()?'未填写':BondContact.coment}"/>
		</div>
		<!-- 显示信息页面的页码 -->
		<div id="searpage">
			<a id="sp1" class="sp" onclick="sp1()" style="color:gray">1</a>
			<a id="sp2" class="sp" onclick="sp2()">2</a>
			<a id="sp3" class="sp" onclick="sp3()">3</a>
			<a id="sp4" class="sp" onclick="sp4()">4</a>
		</div>
	</div>
<!--contactinfo————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 选项删除 -->
	<div id="delete">
		<span id="del_msg">请输入要删除的联系人姓名:</span><br/>
		<form action="/Bond/delgetinfo" method="post" onsubmit=" return del_check()">
			<input type="text" id="del_in" name="del_name" placeholder="name"/><br/>
			<input type="submit" value="确定" id="del_sub" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
	</div>
<!--delete————————————————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 选择删除后返回的联系人信息 -->
	<div id="delinfo">
		<div id="del_baseinfo">
			<div id="delinfo_msg">删除联系人</div>
			<img src="${BondContact.imgpath}" id="del_iimg"/>
			<div id="db1_1">
				<br/>
				<span id="del_sname" class="del_key">姓名:</span><span id="del_iname" class="del_value">${empty BondContact.bname?'未填写':BondContact.bname}</span><br/><br/>
				<span id="del_shei" class="del_key">身高:</span><span id="del_ihei" class="del_value">${empty BondContact.height?'未填写':BondContact.height}</span>
			</div>
			<div id="db1_2">
				<br/>
				<span id="del_sgender" class="del_key">性别:</span><span id="del_igender" class="del_value">${empty BondContact.gender?'未填写':BondContact.gender}</span><br/><br/>
				<span id="del_swei" class="del_key">体重:</span><span id="del_iwei" class="del_value">${empty BondContact.weight?'未填写':BondContact.weight}</span>
			</div>
			<div id="db1_3">
				<br/>
				<span id="del_sage" class="del_key">年龄:</span><span id="del_iage" class="del_value">${empty BondContact.age?'未填写':BondContact.age}</span><br/><br/>
				<span id="del_sstate" class="del_key">状态:</span><span id="del_istate" class="del_value">${empty BondContact.state?'未填写':BondContact.state}</span>
			</div>
			<hr id="del_hr1"/>
			<div id="db2_1">
				<span id="del_sbir" class="del_key">生日:</span><span id="del_ibir" class="del_value">${empty BondContact.birthday?'未填写':BondContact.birthday}</span>
			</div>
			<div id="db2_2">
				<span id="del_sconste" class="del_key">星座:</span><span id="del_iconste" class="del_value">${empty BondContact.constellation?'未填写':BondContact.constellation}</span>
			</div>
			<div id="db2_3">
				<span id="del_sprofe" class="del_key">职业:</span><span id="del_iprofe" class="del_value">${empty BondContact.profession?'未填写':BondContact.profession}</span>
			</div>
			<div id="db3_1">
				<span id="del_sqq" class="del_key">QQ:</span><span id="del_iqq" class="del_value">${empty BondContact.qq?'未填写':BondContact.qq}</span>
			</div>
			<div id="db3_2">
				<span id="del_semail" class="del_key">邮箱:</span><span id="del_iemail" class="del_value">${empty BondContact.email?'未填写':BondContact.email}</span>
			</div>
			<div id="db3_3">
				<span id="del_spnum" class="del_key">电话:</span><span id="del_ipnum" class="del_value">${empty BondContact.phonenumber?'未填写':BondContact.phonenumber}</span>
			</div>
			<hr id="del_hr2"/>
			<div id="db4_1">
				<span id="del_shome" class="del_key">家乡:</span><span id="del_ihome" class="del_value">${empty BondContact.hometown?'未填写':BondContact.hometown}</span><br/>
			</div>
			<div id="db4_2">
				<span id="del_saddress" class="del_key">住址:</span><span id="del_iaddress" class="del_value">${empty BondContact.address?'未填写':BondContact.address}</span><br/>
			</div>
			<div id="db5_1">
				<span id="del_sstrong" class="del_key">特长:</span><span id="del_istrong" class="del_value">${empty BondContact.strongpoint?'未填写':BondContact.strongpoint}</span><br/>
			</div>
			<div id="db6_1">
				<span id="del_shobby" class="del_key">爱好:</span><span id="del_ihobby" class="del_value"><c:if test="${empty BondContact.hobby}">未选择</c:if><c:if test="${!empty BondContact.hobby}"><c:forEach items="${BondContact.hobby}" var="va">${va}&nbsp;&nbsp;</c:forEach></c:if></span><br/>
			</div>
			<form action="/Bond/delete" method="post">
			<input style="visibility:hidden" type="text" id="deltar_name" name="deltar_name" value="${BondContact.bname}"/>
			<input type="submit" value="确认删除" id="del_sub2" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
			</form>
		</div>
	</div>
<!--delinfo————————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 通讯录 -->
  	<div id="address_book">
  		<form action="/Bond/addressbook" method="post" id="addressbook_form">
	  		<!-- 每页五条联系人信息 -->
	  		<div id="addbook_title">
	  			<div id="addt_name" class="addt">姓名</div>
	  			<div id="addt_pnum" class="addt">电话</div>
	  			<div id="addt_port" class="addt">头像</div>
	  		</div>
		 	<div id="book_name1" class="book_name" onclick="addbook_tosearch1()" onmouseover="bn_change(this)" onmouseout="bn_modoru(this)"></div><div id="book_pnum1" class="book_pnum" onmouseover="visiline(this)" onmouseout="hiddline(this)"></div><div id="book_img1" class="book_img"><img id="con_img1" class="con_img"/></div><br/>
		 	<hr id="book_hr1" class="book_hr"/>
		 	<div id="book_name2" class="book_name" onclick="addbook_tosearch2()" onmouseover="bn_change(this)" onmouseout="bn_modoru(this)"></div><div id="book_pnum2" class="book_pnum" onmouseover="visiline(this)" onmouseout="hiddline(this)"></div><div id="book_img2" class="book_img"><img id="con_img2" class="con_img"/></div><br/>
		 	<hr id="book_hr2" class="book_hr"/>
		 	<div id="book_name3" class="book_name" onclick="addbook_tosearch3()" onmouseover="bn_change(this)" onmouseout="bn_modoru(this)"></div><div id="book_pnum3" class="book_pnum" onmouseover="visiline(this)" onmouseout="hiddline(this)"></div><div id="book_img3" class="book_img"><img id="con_img3" class="con_img"/></div><br/>
		 	<hr id="book_hr3" class="book_hr"/>
		 	<div id="book_name4" class="book_name" onclick="addbook_tosearch4()" onmouseover="bn_change(this)" onmouseout="bn_modoru(this)"></div><div id="book_pnum4" class="book_pnum" onmouseover="visiline(this)" onmouseout="hiddline(this)"></div><div id="book_img4" class="book_img"><img id="con_img4" class="con_img"/></div><br/>
		 	<hr id="book_hr4" class="book_hr"/>
		 	<div id="book_name5" class="book_name" onclick="addbook_tosearch5()" onmouseover="bn_change(this)" onmouseout="bn_modoru(this)"></div><div id="book_pnum5" class="book_pnum" onmouseover="visiline(this)" onmouseout="hiddline(this)"></div><div id="book_img5" class="book_img"><img id="con_img5" class="con_img"/></div><br/>
			<!-- 隐藏文本框，用来保存页码和点击的联系人姓名 -->
			<input type="text" style="visibility:hidden" name="pcode" id="pcode"/>
			<input type="text" style="visibility:hidden" name="name" id="in_bookname"/>
			<!-- 通讯录页面的页码 -->
		 	<div id="book_page">
		 		<span id="previous_page" onclick="previouspage()" class="page_item">上一页</span>
		 		<span id="page_code">${empty p?1:p}</span>
		 		<span id="next_page" onclick="nextPage()" class="page_item">下一页</span>
		 		<input id="in_page" type="text" />
		 		<span id="page_sub" onclick="page_sub()">确定</span>
		 		<span id="total_page">共${empty totalpage?2333:totalpage}页</span>
		 		<span id="total_record">${totalrecord}条记录</span>
	 		</div>
 		</form>
 	</div>
<!--address_book———————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 生日提醒 -->
	<div id="birthday_list">
		<form action="/Bond/birthdaylist" method="post" id="birthday_f">
			<div id="birimg_div">
				<div id="birday_msg"><span id="bir_conname"></span><span id="bir_day">还有${bir_day}天过生日</span></div>
				<img id="bir_img"/>
				<input type="text" style="visibility:hidden" name="bir_pcode" id="bir_pcode"/>
				
				<span id="bir_previous_page" onclick="bir_previouspage()" class="bir_page_item">上一页</span>
		 		<span id="bir_page_code">${empty birp?1:birp}</span>
		 		<span id="bir_next_page" onclick="bir_nextPage()" class="bir_page_item">下一页</span>
		 		<input id="bir_in_page" type="text" />
		 		<span id="bir_page_sub" onclick="bir_page_sub()">确定</span>
		 		<span id="bir_total_page">共${empty birtotalpage?1:birtotalpage}页</span>
		 		<span id="bir_total_record">${birtotalrecord}条记录</span>
			</div>
		</form>
	</div>
<!--birthday_list——————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 我们的故事 -->
	<div id="wsStory">
		<form id="ws_form" action="/Bond/westory" method="post">
			<!-- 每页显示十个联系人 -->
			<div id="story_msg">我们之间</div>
			<span id="wsname1" class="wsname"></span><img id="wsimg1" class="wsimg" onclick="story1()" style="width:110px;height:155px;"/>
			<span id="wsname2" class="wsname"></span><img id="wsimg2" class="wsimg" onclick="story2()" style="width:150px;height:120px;"/>
			<span id="wsname3" class="wsname"></span><img id="wsimg3" class="wsimg" onclick="story3()" style="width:140px;height:170px;"/>
			<span id="wsname4" class="wsname"></span><img id="wsimg4" class="wsimg" onclick="story4()" style="width:150px;height:200px;"/>
			<span id="wsname5" class="wsname"></span><img id="wsimg5" class="wsimg" onclick="story5()" style="width:120px;height:120px;"/>
			<span id="wsname6" class="wsname"></span><img id="wsimg6" class="wsimg" onclick="story6()" style="width:120px;height:120px;"/>
			<span id="wsname7" class="wsname"></span><img id="wsimg7" class="wsimg" onclick="story7()" style="width:168px;height:220px;"/>
			<span id="wsname8" class="wsname"></span><img id="wsimg8" class="wsimg" onclick="story8()" style="width:160px;height:110px;"/>
			<span id="wsname9" class="wsname"></span><img id="wsimg9" class="wsimg" onclick="story9()" style="width:190px;height:130px;"/>
			<span id="wsname10" class="wsname"></span><img id="wsimg10" class="wsimg" onclick="story10()" style="width:100px;height:120px;"/>
			<!-- 隐藏文本框，用来保存页码 -->
			<input type="text" style="visibility:hidden" name="ws_pcode" id="ws_pcode"/>
			<!-- 我们的故事的页面 -->
			<div id="wspage_box">
				<span id="ws_previous_page" onclick="ws_previouspage()" class="ws_page_item">上一页</span>
			<span id="ws_page_code">${empty wsp?1:wsp}</span>
			<span id="ws_next_page" onclick="ws_next_page()" class="ws_page_item">下一页</span>
			<input id="ws_in_page" type="text" />
			<span id="ws_page_sub" onclick="ws_page_sub()">确定</span>
			<span id="ws_total_page">共${empty ws_totalpage?1:ws_totalpage}页</span>
			<span id="ws_total_record">${ws_totalrecord}条记录</span>
			</div>
		</form>
		<!-- 用来查询某个故事的form -->
		<form id="story_search" action="/Bond/storysearch" method="post" style="visibility:hidden">
			<input type="text" id="wssear_name" name="wssear_name" style="visibility:hidden"/>
		</form>
	</div>
<!--wsStory————————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 故事盒子 -->
	<div id="story_box">
		<span id="story_box_msg">我和${storyaccname}</span>
		<img src="${storyimg}" id="story_box_img"/>
		<div id="con_story">
			<span id="story_box_msg2">故事盒子</span><br/>
			${empty story?"我们好像还没发生过什么诶。。。":story}
		</div>
		<div id="story_mod" onclick="story_edit()" onmouseover="change_co(this)" onmouseout="modoru_co(this)">点击编辑</div>
	</div>
<!--story_box——————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 编辑故事的盒子 -->
	<div id="story_edit">
		<form id="storyedit_f" action="/Bond/storyedit" method="post" onsubmit="return check_storyedit()">
			<span id="sm_title">编辑我们的故事</span>
			<div id="storyedit_name">${storyaccname}</div>
			<textarea rows="15" cols="70" id="story_area" name="story_area">${story}</textarea>
			<input type="text" name="storyedit_name" value="${storyaccname}" id="storyedit_name" style="visibility:hidden"/>
			<input type="submit" value="确认" id="storyedit_sub" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
	</div>
<!--story_edit—————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 设置 -->
	<div id="account_set_box">
		<div id="account_set">账户设置</div>
		<div id="account_modify" class="account_option" onclick="acc_mod()">修改资料</div>
		<form id="accdel_form" action="/Bond/accountdel" method="post">
			<input type="text" style="visibility:hidden" id="condel_name" name="condel_name" value="${U.username}"/>
			<div id="account_delete" class="account_option" onclick="acc_del()">注销账户</div>
		</form>
	</div>
<!--account_set_box————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!--选择修改资料时显示的修改页面 -->
	<div id="accmod_box">
		<form action="/Bond/accountmodify" method="post" onsubmit="return checkModIn()">
			<span id="sacc_name" class="acc_name">姓名</span><input type="text" id="iacc_name" class="acc_value" placeholder="username" name="username" value="${U.username}"/><br/>
			<span id="sacc_password" class="acc_name">密码</span><input type="password" id="iacc_password" class="acc_value" placeholder="password" name="password" value="${U.password}"/><br/>
			<span id="sacc_age" class="acc_name">年龄</span><input type="text" id="iacc_age" class="acc_value" placeholder="age" name="age" value="${U.age}"/><br/>
			<span id="sacc_birthday" class="acc_name">生日</span><input type="text" id="iacc_birthday" class="acc_value" placeholder="birthday" name="birthday" value="${U.birthday}"/><br/>
			<span id="sacc_email" class="acc_name">邮箱</span><input type="text" id="iacc_email" class="acc_value" placeholder="email" name="email" value="${U.email}"/><br/>
			<input type="text" name="acconame" id="acconame" style="visibility:hidden" value="${U.username}"/>
			<input type="submit" id="accset_sub" value="确认修改" onmouseover="change_co(this)" onmouseout="modoru_co(this)"/>
		</form>
	</div>
<!--accmod_box—————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 点击注销时弹出的提示框 -->
	<div id="accdel_box">
		<span id="delale_msg">localhost显示: 你确定要注销此账户吗？</span>
		<div id="del_yes" class="delitem" onclick="delTrue()">确定</div>
		<div id="del_no" class="delitem" onclick="delFalse()">取消</div>
	</div>
<!--accdel_box—————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
	<!-- 关于 -->
	<div id="about">
		<img src="托尔_04.png" id="about_img"/>
		<p id="about_msg">当前版本&nbsp; v17.1.0 150248</p>
	</div>
<!--about—————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 首页 -->
	<div id="first_page">
		<img id="f_img" src="托尔_01.png"/>
		<span id="l_utime" class="f_name">${login_time}</span><span id="r_utime" class="f_value">登录</span>
		<div id="f_box">
			<img src="托尔_02.png" id="f_img2"/>
	 		<span id="l_uname" class="f_name">姓名: </span><span id="r_uname" class="f_value">${U.username}</span><br/><br/>
	 		<span id="l_uage" class="f_name">年龄: </span><span id="r_uage" class="f_value">${U.age}</span><br/><br/>
	 		<span id="l_ubir" class="f_name">生日: </span><span id="r_ubir" class="f_value">${U.birthday}</span><br/><br/>
	 		<span id="l_uemail" class="f_name">邮箱: </span><span id="r_uemail" class="f_value">${U.email}</span>
		</div>
	</div>
<!--first_page—————————————————————————————————————————————————————————————————————————————————————————————————————————-->

	<!-- 版权信息 -->
	<p id="copyright">
		Copyright &copy;2017.1.0 Bond.net All Rights Reserved. 
	</p>
<!--copyright—————————————————————————————————————————————————————————————————————————————————————————————————————————-->
	
</div>
<!--internal———————————————————————————————————————————————————————————————————————————————————————————————————————————-->
<!--—————————————————————————————————————————————————以上是HTML——————————————————————————————————————————————————————————-->


<!--—————————————————————————————————————————————————以下是JS————————————————————————————————————————————————————————————-->
<script>
	function check_storyedit(){
		var x = document.getElementById("story_area").value;
		if(x == ""){
			document.getElementById("errmsg").innerHTML = "内容不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(x.length > 200){
			document.getElementById("errmsg").innerHTML = "请限制在200字以内";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		return true;
	}
	function story_edit(){
		document.getElementById("story_edit").style.visibility = "visible";
		document.getElementById("story_box").style.visibility = "hidden";
	}
</script>
<script>
	function story1(){
		var x = document.getElementById("wsname1").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story2(){
		var x = document.getElementById("wsname2").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story3(){
		var x = document.getElementById("wsname3").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story4(){
		var x = document.getElementById("wsname4").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story5(){
		var x = document.getElementById("wsname5").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story6(){
		var x = document.getElementById("wsname6").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story7(){
		var x = document.getElementById("wsname7").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story8(){
		var x = document.getElementById("wsname8").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story9(){
		var x = document.getElementById("wsname9").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
	function story10(){
		var x = document.getElementById("wsname10").innerHTML;
		document.getElementById("wssear_name").value = x;
		document.getElementById("story_search").submit();
	}
</script>
<script>
	var w1 = document.getElementById("ws_page_code").innerHTML;
	var w2 = new Number(w1);
	if(w2 == 1){
		document.getElementById("ws_previous_page").style.color = "gray";
	}
	var w3 = document.getElementById("ws_total_page").innerHTML;
	var w4 = w3.substring(1,w3.length - 1);
	var w5 = new Number(w4);
	if(w2 == w5){
		document.getElementById("ws_next_page").style.color = "gray";
	}
	function ws_previouspage(){
		if(w2 != 1){
			var q1 = w2 * 10 - 19;
			document.getElementById("ws_pcode").value = q1;
			document.getElementById("ws_form").submit();
		}
	}
	function ws_next_page(){
		if(w2 != w5){
			var q1 = w2 * 10 + 1;
			document.getElementById("ws_pcode").value = q1;
			document.getElementById("ws_form").submit();
		}
	}
	function ws_page_sub(){
		var q1 = document.getElementById("ws_in_page").value;
		var q2 = new Number(q1);
		if(q1 == ""){
			document.getElementById("errmsg").innerHTML = "请输入页码";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
		}else if(q2 > w5){
			document.getElementById("errmsg").innerHTML = "该页码不存在";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
		}else{
			document.getElementById("ws_pcode").value = q2 * 10 - 9;
			document.getElementById("ws_form").submit();
		}
	}
</script>
<script>
	function acc_mod(){
		document.getElementById("account_set_box").style.visibility = "hidden";
		document.getElementById("accmod_box").style.visibility = "visible";
	}
	function acc_del(){
		document.getElementById("accdel_box").style.visibility = "visible";
		document.getElementById("account_set_box").style.visibility = "hidden";
	}
	function delTrue(){
		document.getElementById("accdel_form").submit();
	}
	function delFalse(){
		document.getElementById("accdel_box").style.visibility = "hidden";
		document.getElementById("account_set_box").style.visibility = "visible";
	}
</script>
 <script>
 	var y1 = document.getElementById("bir_page_code").innerHTML;
 	var y2 = new Number(y1);
 	if(y2 == 1){
 		document.getElementById("bir_previous_page").style.color = "gray";
 	}
 	var y3 = document.getElementById("bir_total_record").innerHTML;
 	var y4 = y3.substring(0, y3.length - 3);
 	var y5 = new Number(y4);
 	if(y5 - y2 < 1){
 		document.getElementById("bir_next_page").style.color = "gray";
 	}
 	function bir_previouspage(){
		if(y2 > 1){
			var f1 = y2 - 1;
			document.getElementById("bir_pcode").value = f1;
			document.getElementById("birthday_f").submit();
		} 		
 	}
 	function bir_nextPage(){
		if(y5 - y2 >= 1){
			var f1 = y2 + 1;
			document.getElementById("bir_pcode").value = f1;
			document.getElementById("bir_previous_page").style.color = "#fff";
			document.getElementById("birthday_f").submit();
		} 		
 	}
 	function bir_page_sub(){
 		var inpage = document.getElementById("bir_in_page").value;
 		
 		var opage = document.getElementById("bir_total_page").innerHTML;
		var opage02 = opage.substring(1,opage.length - 1);
		var tpage = new Number(inpage);
		var opage03 = new Number(opage02);
 		
 		if(inpage == ""){
			document.getElementById("errmsg").innerHTML = "请输入页码";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
		}else if(tpage > opage03){
				document.getElementById("errmsg").innerHTML = "该页码不存在";
				var i = 1;
				var inter = setInterval(
					function(){
						var n = document.getElementById('errmsg');
						n.style.opacity = i;
						i -= 0.1;
						if(i < 0){
							clearInterval(inter);
						}
					},200);
		}else{
				document.getElementById("bir_pcode").value = tpage;
				document.getElementById("birthday_f").submit();
			}
 	}
 </script>
 <script>
 	var p = document.getElementById("page_code").innerHTML;
 	var xp = new Number(p);
 	if(p == 1){
 		document.getElementById("previous_page").style.color = "gray";
 	}
 	function page_sub(){
 		var inpage = document.getElementById("in_page").value;
 		
 		var opage = document.getElementById("total_page").innerHTML;
		var opage02 = opage.substring(1,opage.length - 1);
		var tpage = new Number(inpage);
		var opage03 = new Number(opage02);
			
 		if(inpage == ""){
			document.getElementById("errmsg").innerHTML = "请输入页码";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
		}else if(tpage > opage03){
				document.getElementById("errmsg").innerHTML = "该页码不存在";
				var i = 1;
				var inter = setInterval(
					function(){
						var n = document.getElementById('errmsg');
						n.style.opacity = i;
						i -= 0.1;
						if(i < 0){
							clearInterval(inter);
						}
					},200);
		}else{
				document.getElementById("pcode").value = tpage * 5 - 4;
				document.getElementById("addressbook_form").submit();
			}
 	}
 	function previouspage(){
 		var x = document.getElementById("page_code").innerHTML;
 		if(x > 1){
 			document.getElementById("pcode").value = (xp * 5) - 10 + 1;
 			p -= 1;
 			document.getElementById("addressbook_form").submit();
 		}
 	}
 	var x3 = xp * 5 + 1;
 		var x = document.getElementById("total_record").innerHTML;
 		var x1 = x.substring(0,x.length - 3);
 		var x2 = new Number(x1);
 		if(x2 - (xp * 5) < 1){
 				document.getElementById("next_page").style.color = "gray";
 	}
 	function nextPage(){
 		var x3 = xp * 5 + 1;
 		var x = document.getElementById("total_record").innerHTML;
 		var x1 = x.substring(0,x.length - 3);
 		var x2 = new Number(x1);
 		if(x2 - (xp * 5) < 1){
 				document.getElementById("next_page").style.color = "gray";
 		}else{
 			document.getElementById("pcode").value = x3;
 			document.getElementById("previous_page").style.color = "#fff";
 			document.getElementById("addressbook_form").submit();
 		}
 	}
 </script>

<!-- -----------------------------------------------这里是所有标记-------------------------------------------------------- -->
<span id="storyedit_mark" style="visibility:hidden">${storyedit_mark}</span>
<span id="storysearch_mark" style="visibility:hidden">${storysearch_mark}</span>
<span id="we_story_mark" style="visibility:hidden">${we_story_mark}</span>
<span id="accmod_mark" style="visibility:hidden">${accmod_mark}</span>
<span id="birthdaylist_mark" style="visibility:hidden">${birthdaylist_mark}</span>
<span id="addbooksear_mark" style="visibility:hidden">${addbooksear_mark}</span>
<span id="addressbook_mark" style="visibility:hidden">${addressbook_mark}</span>
<span id="modified_mark" style="visibility:hidden">${modified_mark}</span>
<span id="modify_mark" style="visibility:hidden">${modify_mark}</span>
<span id="delete_mark" style="visibility:hidden">${delete_mark}</span>
<span id="del_mark" style="visibility:hidden">${del_mark}</span>
<span id="mod_mark" style="visibility:hidden">${mod_mark}</span>
<span id="add_mark" style="visibility:hidden">${add_mark}</span>
<span id="sear_mark" style="visibility:hidden">${sear_mark}</span>
<span id="search_mark" style="visibility:hidden">${search_mark}</span>
<!-- -----------------------------------------------这里是所有标记-------------------------------------------------------- -->

<script>
	var x = document.getElementById("storyedit_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("story_edit").style.visibility = "visible";
		document.getElementById("i_story").style.backgroundColor = "#7f97a4";
		document.getElementById("i_story").onmouseout = "";
		document.getElementById("body").style.background = "url(Add_Background02.png)";
		document.getElementById("body").style.backgroundSize = "1366px 890px;";
	}
</script>
<script>
	var x = document.getElementById("accmod_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("accmod_box").style.visibility = "visible";
		document.getElementById("i_set").style.backgroundColor = "#7f97a4";
		document.getElementById("i_set").onmouseout = "";
		document.getElementById("body").style.background = "url(Add_Background02.png)";
		document.getElementById("body").style.backgroundSize = "1366px 890px;";
	}
</script>

<script>
	function bn_change(x){
		x.style.cursor = "pointer";
		x.style.color = "#af7340";
	}
	function bn_modoru(x){
		x.style.color = "#000";
	}
	function addbook_tosearch1(){
		var x = document.getElementById("book_name1").innerHTML;
		document.getElementById("in_bookname").value = x;
		document.getElementById("addressbook_form").action = "/Bond/addbooksear";
		document.getElementById("addressbook_form").submit();
	}
	function addbook_tosearch2(){
		var x = document.getElementById("book_name2").innerHTML;
		document.getElementById("in_bookname").value = x;
		document.getElementById("addressbook_form").action = "/Bond/addbooksear";
		document.getElementById("addressbook_form").submit();
	}
	function addbook_tosearch3(){
		var x = document.getElementById("book_name3").innerHTML;
		document.getElementById("in_bookname").value = x;
		document.getElementById("addressbook_form").action = "/Bond/addbooksear";
		document.getElementById("addressbook_form").submit();
	}
	function addbook_tosearch4(){
		var x = document.getElementById("book_name4").innerHTML;
		document.getElementById("in_bookname").value = x;
		document.getElementById("addressbook_form").action = "/Bond/addbooksear";
		document.getElementById("addressbook_form").submit();
	}
	function addbook_tosearch5(){
		var x = document.getElementById("book_name5").innerHTML;
		document.getElementById("in_bookname").value = x;
		document.getElementById("addressbook_form").action = "/Bond/addbooksear";
		document.getElementById("addressbook_form").submit();
	}
</script>
<script>
	var x = document.getElementById("addbooksear_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("contactinfo").style.visibility = "visible";
		document.getElementById("con_baseinfo").style.visibility = "visible";
		document.getElementById("i_addbook").style.backgroundColor = "#7f97a4";
		document.getElementById("i_addbook").onmouseout = "";
		document.getElementById("body").style.background = "url(Add_Background02.png)";
		document.getElementById("body").style.backgroundSize = "1366px 890px;";
	}
</script>
<script>
	var ii = 1;
	<%
			int count = 1;
			request.setCharacterEncoding("UTF-8");
			Map<Integer,Bond_Contact> allCon = new HashMap<Integer,Bond_Contact>();
			allCon = (Map<Integer,Bond_Contact>)request.getSession().getAttribute("allCon");
			if(allCon != null && allCon.size() > 5){
			
				for(int i=1;i<=5;i++){
		%>
					document.getElementById("book_name" + ii).innerHTML = "<%=allCon.get(count).getBname()%>";
					document.getElementById("book_pnum" + ii).innerHTML = "<%=allCon.get(count).getPhonenumber()%>";
					document.getElementById("con_img" + ii).src = "<%=allCon.get(count).getImgpath()%>";
					ii++;
		<%
			count++;	
		%>
		<%		
				}
			}else if((allCon != null && allCon.size() <= 5)){
				for(int j=1;j<=allCon.size();j++){
		%>		
					document.getElementById("book_name" + ii).innerHTML = "<%=allCon.get(count).getBname()%>";
					document.getElementById("book_pnum" + ii).innerHTML = "<%=allCon.get(count).getPhonenumber()%>";
					document.getElementById("con_img" + ii).src = "<%=allCon.get(count).getImgpath()%>";
					ii++;
		<%
					count++;
				}
		%>
			document.getElementById("book_hr" + (ii-1)).style.visibility = "hidden";
		<%
				
		
		%>
			
				for(var k=1;k<=5;k++){
					var v = document.getElementById("con_img" + k).src;
					if(v == ""){
						document.getElementById("book_name" + k).style.visibility = "hidden";
						document.getElementById("con_img" + k).style.visibility = "hidden";
						document.getElementById("book_pnum" + k).style.visibility = "hidden";
						document.getElementById("book_hr" + k).style.visibility = "hidden";
					}
				}
			
		<%
			}
			if(allCon != null){
				Integer tr = (Integer)request.getSession().getAttribute("totalrecord");
				Integer p = (Integer)request.getSession().getAttribute("p");
				int now_recorde = (p - 1) * 5 + allCon.size();
				if((tr - now_recorde) < 1){
		%>
						document.getElementById("next_page").style.color = "gray";
						document.getElementById("next_page").onclick = "";
		<%
				}
			}
		%>
	
</script>
<script>
	var b = 1;
	<%
		request.setCharacterEncoding("UTF-8");
		Map<Integer,Bond_Contact> allCon3 = new HashMap<Integer,Bond_Contact>();
		allCon3 = (Map<Integer,Bond_Contact>)request.getSession().getAttribute("allstory");
		if(allCon3 != null){
			for(int i=1;i<=10;i++){
				if(allCon3.get(i) != null){
	%>
					document.getElementById("wsimg" + b).src = "<%=allCon3.get(i).getImgpath()%>";
					document.getElementById("wsname" + b).innerHTML = "<%=allCon3.get(i).getBname()%>";
	<%			
				}else{
	%>
					//document.getElementById("wsimg" + b).src = "http://localhost/Bond/upload.png";
					//document.getElementById("wsname" + b).innerHTML = "temp_00";
					document.getElementById("wsimg" + b).style.visibility = "hidden";
	<%					
				}
	%>
				b++;
	<%
			}
		}
		if(allCon3 != null && allCon3.size() < 10){
	%>
			document.getElementById("ws_next_page").style.color = "gray";
			document.getElementById("ws_next_page").onclick = "";
	<%
		}
	%>
</script>
<script>
	<%
		request.setCharacterEncoding("UTF-8");
		Bond_Contact contact = (Bond_Contact)request.getSession().getAttribute("bir_con");
		if(contact != null){
	%>
			document.getElementById("bir_img").src = "<%=contact.getImgpath()%>";
			document.getElementById("bir_conname").innerHTML = "<%=contact.getBname()%>";
	<%
		}
	%>
</script>

<script>
	var x = document.getElementById("we_story_mark").innerHTML;
	if(x != ""){
		document.getElementById("i_story").style.backgroundColor = "#7f97a4";
		document.getElementById("i_story").onmouseout = "";
		document.getElementById("wsStory").style.visibility = "visible";
		document.getElementById("account_set_box").style.visibility = "hidden";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
     	document.getElementById("i_addbook").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_addbook").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "hidden";
		document.getElementById("addbasic").style.visibility = "hidden";
		document.getElementById("portrait").style.visibility = "hidden";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("birthday_list").style.visibility = "hidden";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
</script>
<script>
	var x = document.getElementById("birthdaylist_mark").innerHTML;
	if(x != ""){
		document.getElementById("birthday_list").style.visibility = "visible";
		document.getElementById("i_birlist").style.backgroundColor = "#7f97a4";
		document.getElementById("i_birlist").onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "hidden";
		document.getElementById("addbasic").style.visibility = "hidden";
		document.getElementById("portrait").style.visibility = "hidden";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("address_book").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
</script>

<script>
	var x = document.getElementById("addressbook_mark").innerHTML;
	if(x != ""){
		document.getElementById("address_book").style.visibility = "visible";
		document.getElementById("i_addbook").style.backgroundColor = "#7f97a4";
		document.getElementById("i_addbook").onmouseout = "";
		document.getElementById("i_add").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_add").style.backgroundColor = "#fff";
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_home").style.backgroundColor = "#fff";
     	document.getElementById("i_del").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_del").style.backgroundColor = "#fff";
     	document.getElementById("i_sear").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_sear").style.backgroundColor = "#fff";
     	document.getElementById("i_mod").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_mod").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		document.getElementById("add").style.visibility = "hidden";
		document.getElementById("addbasic").style.visibility = "hidden";
		document.getElementById("portrait").style.visibility = "hidden";
		document.getElementById("search").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "hidden";
		document.getElementById("con_baseinfo").style.visibility = "hidden";
		document.getElementById("con_educateinfo").style.visibility = "hidden";
		document.getElementById("con_workinfo").style.visibility = "hidden";
		document.getElementById("con_comentinfo").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "hidden";
		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("modify").style.visibility = "hidden";
 		document.getElementById("delinfo").style.visibility = "hidden";
 		document.getElementById("del_baseinfo").style.visibility = "hidden";
 		document.getElementById("modinfo").style.visibility = "hidden";
     	document.getElementById("m_baseinfo").style.visibility = "hidden";
     	document.getElementById("m_eduinfo").style.visibility = "hidden";
     	document.getElementById("m_workinfo").style.visibility = "hidden";
     	document.getElementById("m_comentinfo").style.visibility = "hidden";
     	document.getElementById("m_portrait").style.visibility = "hidden";
     	document.getElementById("first_page").style.visibility = "hidden";
     	document.getElementById("account_set_box").style.visibility = "hidden";
     	document.getElementById("i_set").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_set").style.backgroundColor = "#fff";
     	document.getElementById("i_birlist").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_birlist").style.backgroundColor = "#fff";
     	document.getElementById("accmod_box").style.visibility = "hidden";
     	document.getElementById("accdel_box").style.visibility = "hidden";
     	document.getElementById("wsStory").style.visibility = "hidden";
     	document.getElementById("i_story").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_story").style.backgroundColor = "#fff";
     	document.getElementById("story_box").style.visibility = "hidden";
     	document.getElementById("story_edit").style.visibility = "hidden";
     	document.getElementById("mod_oncework").style.visibility = "hidden";
     	document.getElementById("oncework").style.visibility = "hidden";
     	document.getElementById("about").style.visibility = "hidden";
     	document.getElementById("i_about").onmouseout = function(){this.style.backgroundColor = '#fff';};
     	document.getElementById("i_about").style.backgroundColor = "#fff";
	}
</script>
<script>
	var x = document.getElementById("search_mark").innerHTML;
	if(x != ""){
		document.getElementById("search").style.visibility = "visible";
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_sear").style.backgroundColor = "#7f97a4";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_sear").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("modified_mark").innerHTML;
	if(x != ""){
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "visible";
		document.getElementById("con_baseinfo").style.visibility = "visible";
		document.getElementById("i_mod").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_mod").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("modify_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("modify").style.visibility = "visible";
		document.getElementById("i_mod").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_mod").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("add_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("contactinfo").style.visibility = "visible";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("con_baseinfo").style.visibility = "visible";
		document.getElementById("i_add").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_add").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("storysearch_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("story_box").style.visibility = "visible";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("i_story").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_story").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("delete_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("delete").style.visibility = "visible";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("i_del").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_del").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("mod_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("modinfo").style.visibility = "visible";
		document.getElementById("m_portrait").style.visibility = "visible";
		document.getElementById("m_baseinfo").style.visibility = "visible";
		document.getElementById("i_mod").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_mod").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("sear_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("contactinfo").style.visibility = "visible";
		document.getElementById("con_baseinfo").style.visibility = "visible";
		document.getElementById("i_sear").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_sear").onmouseout = "";
	}
</script>
<script>
	var x = document.getElementById("del_mark").innerHTML;
	if(x != ""){
		document.getElementById("first_page").style.visibility = "hidden";
		document.getElementById("i_home").style.backgroundColor = "#fff";
		document.getElementById("delinfo").style.visibility = "visible";
		document.getElementById("del_baseinfo").style.visibility = "visible";
		document.getElementById("i_del").style.backgroundColor = "#7f97a4";
		//document.getElementById("body").style.background = "url(Add_Background02.png)";
		//document.getElementById("body").style.backgroundSize = "1366px 890px;";
		
		document.getElementById("i_home").onmouseout = function(){this.style.backgroundColor = '#fff';};
		document.getElementById("i_del").onmouseout = "";
	}
</script>
<%
	request.getSession().removeAttribute("allstory");
	request.getSession().removeAttribute("wsp");
	request.getSession().removeAttribute("allCon");
	request.getSession().removeAttribute("p");
	request.getSession().removeAttribute("sear_mark");
	request.getSession().removeAttribute("del_mark");
	request.getSession().removeAttribute("mod_mark");
	request.getSession().removeAttribute("delete_mark");
	request.getSession().removeAttribute("add_mark");
	request.getSession().removeAttribute("modified_mark");
	request.getSession().removeAttribute("modify_mark");
	request.getSession().removeAttribute("search_mark");
	request.getSession().removeAttribute("addressbook_mark");
	request.getSession().removeAttribute("addbooksear_mark");
	request.getSession().removeAttribute("birthdaylist_mark");
	request.getSession().removeAttribute("bir_con");
	request.getSession().removeAttribute("birp");
	request.getSession().removeAttribute("accmod_mark");
	request.getSession().removeAttribute("we_story_mark");
	request.getSession().removeAttribute("storysearch_mark");
	request.getSession().removeAttribute("storyedit_mark");
	request.getSession().removeAttribute("BondContact");
 %>
 <script>
 	function address_submit(){
 		document.getElementById("addressbook_form").submit();
 	}
 	function sp1(){
 		document.getElementById("con_baseinfo").style.visibility = "visible";
 		document.getElementById("con_educateinfo").style.visibility = "hidden";
 		document.getElementById("con_workinfo").style.visibility = "hidden";
 		document.getElementById("con_comentinfo").style.visibility = "hidden";
 		
 		document.getElementById("sp1").style.color = "gray";
 		document.getElementById("sp2").style.color = "#fff";
 		document.getElementById("sp3").style.color = "#fff";
 		document.getElementById("sp4").style.color = "#fff";
 	}
 	function sp2(){
 		document.getElementById("con_baseinfo").style.visibility = "hidden";
 		document.getElementById("con_educateinfo").style.visibility = "visible";
 		document.getElementById("con_workinfo").style.visibility = "hidden";
 		document.getElementById("con_comentinfo").style.visibility = "hidden";
 		
 		document.getElementById("sp1").style.color = "#fff";
 		document.getElementById("sp2").style.color = "gray";
 		document.getElementById("sp3").style.color = "#fff";
 		document.getElementById("sp4").style.color = "#fff";
 	}
 	function sp3(){
 		document.getElementById("con_baseinfo").style.visibility = "hidden";
 		document.getElementById("con_educateinfo").style.visibility = "hidden";
 		document.getElementById("con_workinfo").style.visibility = "visible";
 		document.getElementById("con_comentinfo").style.visibility = "hidden";
 		
 		document.getElementById("sp1").style.color = "#fff";
 		document.getElementById("sp2").style.color = "#fff";
 		document.getElementById("sp3").style.color = "gray";
 		document.getElementById("sp4").style.color = "#fff";
 	}
 	function sp4(){
 		document.getElementById("con_baseinfo").style.visibility = "hidden";
 		document.getElementById("con_educateinfo").style.visibility = "hidden";
 		document.getElementById("con_workinfo").style.visibility = "hidden";
 		document.getElementById("con_comentinfo").style.visibility = "visible";
 		
 		document.getElementById("sp1").style.color = "#fff";
 		document.getElementById("sp2").style.color = "#fff";
 		document.getElementById("sp3").style.color = "#fff";
 		document.getElementById("sp4").style.color = "gray";
 	}
 	function sear_check(){
 		var x = document.getElementById("sear_in").value;
 		if(x == ""){
			document.getElementById("errmsg").innerHTML = "联系人姓名不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		return true;
 	}
 	function del_check(){
 		var x = document.getElementById("del_in").value;
 		if(x == ""){
			document.getElementById("errmsg").innerHTML = "联系人姓名不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		return true;
 	}
 	function mod_checkname(){
 		var x = document.getElementById("mod_in").value;
 		if(x == ""){
			document.getElementById("errmsg").innerHTML = "联系人姓名不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		return true;
 	}
 	function up_color(){
 		document.getElementById("sup").style.color = "#af7340";
 		document.getElementById("img_file").style.cursor = "pointer";
 	}
 	function up_modoru(){
 		document.getElementById("sup").style.color = "#fff";
 	}
 	function mod_change_co(){
 		document.getElementById("mod_imgup").style.color = "#af7340";
 	}
 	function mod_modoru_co(){
 		document.getElementById("mod_imgup").style.color = "#fff";
 	}
 	function change_co(x){
 		x.style.color = "#af7340";
 	}
 	function modoru_co(x){
 		x.style.color = "#fff";
 	}
 	function change_img(){
 		var x = document.getElementById("img_file").value;
 		if(x != ""){
	 		var index = x.lastIndexOf("\\");
	 		var img = x.substring(index+1,x.length);
	 		var path = "http://localhost/Bond/" + img;
 			document.getElementById("photo").src = path;
 		}
 		document.getElementById("img_path").value = document.getElementById("photo").src;
 	}
 	function mod_change_img(){
 		var x = document.getElementById("mod_imgfile").value;
 		if(x != ""){
	 		var index = x.lastIndexOf("\\");
	 		var img = x.substring(index+1,x.length);
	 		var path = "http://localhost/Bond/" + img;
 			document.getElementById("mod_photo").src = path;
 		}
 		document.getElementById("mod_img_path").value = document.getElementById("mod_photo").src;
 	}
 	function p1(){
 		document.getElementById("oncework").style.visibility = "hidden";
 		document.getElementById("page1").style.color = "gray";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("addbasic").style.visibility = "visible";
 		document.getElementById("portrait").style.visibility = "visible";
 		document.getElementById("addeducate").style.visibility = "hidden";
 		document.getElementById("addwork").style.visibility = "hidden";
 		document.getElementById("addcoment").style.visibility = "hidden";
 		document.getElementById("addsub").style.visibility = "hidden";
 	}
 	function p2(){
 		document.getElementById("oncework").style.visibility = "hidden";
 		document.getElementById("page1").style.color = "#fff";
 		document.getElementById("page2").style.color = "gray";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("addbasic").style.visibility = "hidden";
 		document.getElementById("portrait").style.visibility = "hidden";
 		document.getElementById("addeducate").style.visibility = "visible";
 		document.getElementById("addwork").style.visibility = "hidden";
 		document.getElementById("addcoment").style.visibility = "hidden";
 		document.getElementById("addsub").style.visibility = "hidden";
 	}
 	function p3(){
 		document.getElementById("page1").style.color = "#fff";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "gray";
 		document.getElementById("page4").style.color = "#fff";
 		document.getElementById("addbasic").style.visibility = "hidden";
 		document.getElementById("portrait").style.visibility = "hidden";
 		document.getElementById("addeducate").style.visibility = "hidden";
 		document.getElementById("addwork").style.visibility = "visible";
 		document.getElementById("addcoment").style.visibility = "hidden";
 		document.getElementById("addsub").style.visibility = "hidden";
 	}
 	function p4(){
 		document.getElementById("oncework").style.visibility = "hidden";
 		document.getElementById("page1").style.color = "#fff";
 		document.getElementById("page2").style.color = "#fff";
 		document.getElementById("page3").style.color = "#fff";
 		document.getElementById("page4").style.color = "gray";
 		document.getElementById("addbasic").style.visibility = "hidden";
 		document.getElementById("portrait").style.visibility = "hidden";
 		document.getElementById("addeducate").style.visibility = "hidden";
 		document.getElementById("addwork").style.visibility = "hidden";
 		document.getElementById("addcoment").style.visibility = "visible";
 		document.getElementById("addsub").style.visibility = "visible";
 	}
 	function change_in(){
 		document.getElementById("oncework").style.visibility = "hidden";
 	}
 	function change_un(){
 		document.getElementById("oncework").style.visibility = "visible";
 	}
 	function mod_change_in(){
 		document.getElementById("mod_oncework").style.visibility = "hidden";
 	}
 	function mod_change_un(){
 		document.getElementById("mod_oncework").style.visibility = "visible";
 	}
 	function mod_p1(){
 		document.getElementById("mod_page1").style.color = "gray";
 		document.getElementById("mod_page2").style.color = "#fff";
 		document.getElementById("mod_page3").style.color = "#fff";
 		document.getElementById("mod_page4").style.color = "#fff";
 		document.getElementById("m_baseinfo").style.visibility = "visible";
 		document.getElementById("m_portrait").style.visibility = "visible";
 		document.getElementById("m_eduinfo").style.visibility = "hidden";
 		document.getElementById("m_workinfo").style.visibility = "hidden";
 		document.getElementById("m_comentinfo").style.visibility = "hidden";
 		document.getElementById("mod_sub").style.visibility = "hidden";
 		document.getElementById("mod_oncework").style.visibility = "hidden";
 	}
 	function mod_p2(){
 		document.getElementById("mod_page1").style.color = "#fff";
 		document.getElementById("mod_page2").style.color = "gray";
 		document.getElementById("mod_page3").style.color = "#fff";
 		document.getElementById("mod_page4").style.color = "#fff";
 		document.getElementById("m_baseinfo").style.visibility = "hidden";
 		document.getElementById("m_portrait").style.visibility = "hidden";
 		document.getElementById("m_eduinfo").style.visibility = "visible";
 		document.getElementById("m_workinfo").style.visibility = "hidden";
 		document.getElementById("m_comentinfo").style.visibility = "hidden";
 		document.getElementById("mod_sub").style.visibility = "hidden";
 		document.getElementById("mod_oncework").style.visibility = "hidden";
 	}
 	function mod_p3(){
 		document.getElementById("mod_page1").style.color = "#fff";
 		document.getElementById("mod_page2").style.color = "#fff";
 		document.getElementById("mod_page3").style.color = "gray";
 		document.getElementById("mod_page4").style.color = "#fff";
 		document.getElementById("m_baseinfo").style.visibility = "hidden";
 		document.getElementById("m_portrait").style.visibility = "hidden";
 		document.getElementById("m_eduinfo").style.visibility = "hidden";
 		document.getElementById("m_workinfo").style.visibility = "visible";
 		document.getElementById("m_comentinfo").style.visibility = "hidden";
 		document.getElementById("mod_sub").style.visibility = "hidden";
 	}
 	function mod_p4(){
 		document.getElementById("mod_page1").style.color = "#fff";
 		document.getElementById("mod_page2").style.color = "#fff";
 		document.getElementById("mod_page3").style.color = "#fff";
 		document.getElementById("mod_page4").style.color = "gray";
 		document.getElementById("m_baseinfo").style.visibility = "hidden";
 		document.getElementById("m_portrait").style.visibility = "hidden";
 		document.getElementById("m_eduinfo").style.visibility = "hidden";
 		document.getElementById("m_workinfo").style.visibility = "hidden";
 		document.getElementById("m_comentinfo").style.visibility = "visible";
 		document.getElementById("mod_sub").style.visibility = "visible";
 		document.getElementById("mod_oncework").style.visibility = "hidden";
 	}
 	function visiline(x){
 		 x.style.color = "#17AEFF";
 		 x.style.textDecoration = "underline";
 	}
 	function hiddline(x){
 		x.style.color = "#000";
 		 x.style.textDecoration = "none";
 	}
 </script>
 <!-- --------------------------------------------------以上是JS-------------------------------------------------------- -->
</body>
</html>
