<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB" style="text-align:justify">
            <br /><br />
	        <p style="font-size:large; font-weight:bolder; text-align:center">Добредојдовте на официјалната web страница на АУДИ.</p>

            <script type="text/javascript" src="slider/js/jquery-1.2.6.min.js"></script>
            <script type="text/javascript" src="slider/js/jquery-easing-1.3.pack.js"></script>
            <script type="text/javascript" src="slider/js/jquery-easing-compatibility.1.2.pack.js"></script>
            <script type="text/javascript" src="slider/js/coda-slider.1.1.1.pack.js"></script>
	
	        <script type="text/javascript">

	            var theInt = null;
	            var $crosslink, $navthumb;
	            var curclicked = 0;

	            theInterval = function (cur) {
	                clearInterval(theInt);

	                if (typeof cur != 'undefined')
	                    curclicked = cur;

	                $crosslink.removeClass("active-thumb");
	                $navthumb.eq(curclicked).parent().addClass("active-thumb");
	                $(".stripNav ul li a").eq(curclicked).trigger('click');

	                theInt = setInterval(function () {
	                    $crosslink.removeClass("active-thumb");
	                    $navthumb.eq(curclicked).parent().addClass("active-thumb");
	                    $(".stripNav ul li a").eq(curclicked).trigger('click');
	                    curclicked++;
	                    if (4 == curclicked)
	                        curclicked = 0;

	                }, 5000);
	            };

	            $(function () {

	                $("#main-photo-slider").codaSlider();

	                $navthumb = $(".nav-thumb");
	                $crosslink = $(".cross-link");

	                $navthumb
			        .click(function () {
			            var $this = $(this);
			            theInterval($this.parent().attr('href').slice(1) - 1);
			            return false;
			        });

	                theInterval();
	            });
	        </script>
	<table width="600px" cellpadding="5px" cellspacing="5" border="0">
	   <tr>
	        <td>
	            <div id="page-wrap">						
	                <div class="slider-wrap">
		                <div id="main-photo-slider" class="csw">
			                <div class="panelContainer">
				                <div class="panel" title="Ауди Q5">
					                <div class="wrapper">
                                        <img src="images/modeli/q5.jpg" alt="Ауди Q5" width="550px" height="220px" />
						                <div class="photo-meta-data">
						                </div>
					                </div>
				                </div>
				                <div class="panel" title="Ауди A8">
					                <div class="wrapper">
                                        <img src="images/modeli/a8.jpg" alt="Ауди А8" width="550px" height="220px" />
						                <div class="photo-meta-data">
						                </div>
					                </div>
				                </div>
                                <div class="panel" title="Ауди R8">
					                <div class="wrapper">
                                        <img src="images/modeli/r8_coupe.jpg" alt="Ауди R8" width="550px" height="220px" />
						                <div class="photo-meta-data">
						                </div>
					                </div>
				                </div>
                                <div class="panel" title="Ауди TT">
					                <div class="wrapper">
                                        <img src="images/modeli/tt_coupe.jpg" alt="Ауди TT" width="550px" height="220px" />
						                <div class="photo-meta-data">
						                </div>
					                </div>
				                </div>
			                </div>
		                </div>
	                </div>
	             </div>
	        </td>
	    </tr>
	    </table>
        <table width="600px">
            <tr><td>Новиот Ауди А6</td><td>Новиот Ауди А7 SportBack</td></tr>
            <tr><td width="300px"><asp:Image ID="img1" runat="server" ImageUrl="~/images/modeli/a6_limuzina.jpg" Width="300" /></td>
                <td width="300px"><asp:Image ID="img2" runat="server" ImageUrl="~/images/modeli/a7_sportback.jpg" Width="300" /></td></tr>
                <tr><td><asp:LinkButton ID="lb1" runat="server" onclick="lb1_Click">Дознај повеќе...</asp:LinkButton></td>
                <td><asp:LinkButton ID="lb2" runat="server" onclick="lb2_Click">Дознај повеќе...</asp:LinkButton></td></tr>
        </table>
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>