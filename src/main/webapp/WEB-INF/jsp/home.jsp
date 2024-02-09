
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <link rel="shortcut icon" href="https://bvs.org/sites/all/themes/bluemasters/favicon.ico" type="image/vnd.microsoft.icon" />
        <title>BVS</title>
        <link rel="shortcut icon" href="https://bvs.org/sites/all/themes/bluemasters/favicon.ico"
              type="image/vnd.microsoft.icon" />
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700,100' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <%@include file="jspf/navbar.jspf" %>

        <style>
            .a{
                style: unset !important;
                text-decoration: none;

            }

            body, h1, h2, h3, p {
                margin: 20px;
                padding: 0;
            }

            body {
                font-family: 'Roboto Slab', serif;
                font-size: 16px;
                line-height: 1.5;
                color: #333;
            }

            .container_12 {
                max-width: 1200px;
                margin: 0 auto;
            }

            .grid_6 {
                width: calc(50% - 2%);
                float: left;
                margin-right: 4%;
                box-sizing: border-box;
            }

            .covid-image{
                width:100px;
                height:100px;
            }
            .alpha {
                margin-left: 0;
            }

            .omega {
                margin-right: 0;
            }


            .container_12::after {
                content: "";
                display: table;
                clear: both;
            }


            .home-block-area {
                background-color: #fff;
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: box-shadow 0.3s ease;
            }

            .home-block-area:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }

            .content h2 {
                color: #333;
            }

            .content p {
                color: #555;
            }


            #banner {
                background-color: #f0f0f0;
                padding: 20px;
            }

            .slider-item {
                margin-bottom: 20px;
            }


            @media screen and (max-width: 768px) {

                .grid_6 {
                    width: 100%;
                    margin-right: 0;
                }
            }

        </style>






        <div class="slideshow-pan">
            <div id="banner">
                <!--#slideshow-->


                <div class="container_12">

                    <div class="grid_12 con_pan-2">
                        <!--home-block-area-->
                        <div id="home-blocks-area-2" class="clearfix">


                            <div class="container_12">
                                <div class="grid_6 alpha">
                                    <div class="column-fix">
                                        <div class="home-block-area first">
                                            <div class="region region-home-area-2-left">
                                                <div id="block-block-32" class="block block-block">
                                                    <div class="content">
                                                        <h2><img alt="" src="assets/img/covid.png"
                                                                 style="float:left; height:115px; margin-left:0px; margin-right:10px; width:130px" />BVS
                                                            Health and Safety protocols for COVID - 19</h2>
                                                        <p>Under the BC disease control, guidelines we have all had to make significant behavioral
                                                            changes, and new safety procedures to reduce the spread of COVID-19. Hence all the BVS
                                                            devotees....</p>
                                                        <p><a href="/sites/default/files/pdf/BVS-COVID-19-Final.pdf">READ MORE</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="grid_6 omega">
                                    <div class="column-fix">
                                        <div class="home-block-area">
                                            <div class="region region-home-area-2-right">
                                                <div id="block-block-31" class="block block-block">
                                                    <div class="content">
                                                        <h2><img alt="" src="assets/img/garden.png"
                                                                 style="float:left; height:110px; margin-left:0px; margin-right:20px; width:110px" />Town
                                                            Hall Meeting - BVS Garden Beautification Project</h2>
                                                        <p>We concluded a successful town hall meeting via Zoom on Saturday, the 19th December, 2020
                                                            from 6:00 pm to 7:00 pm and received very valuable comments and suggestions</p>
                                                        <p>We still would like to receive your valuable comments and suggestions on this project</p>
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

                <div class="container_12">



                </div>
                <div class="container_12">

                    <div class="grid_12 con_pan">
                        <!--home-block-area-->
                        <div id="home-blocks-area" class="clearfix">


                            <div class="grid_6 alpha">
                                <div class="column-fix">
                                    <div class="home-block-area first">
                                        <div class="region region-home-area-1">
                                            <div id="block-block-2" class="block block-block">

                                                <h2>Buddhist Vihara Society in BC</h2>

                                                <div class="content">
                                                    <p>Registered under the Canadian Charities Act, Buddhist Vihara Society
                                                        in BC, Reg#89234 2775RT0001, (BVS) is an organization which provides
                                                        various charitable services to the Canadian Society and to other
                                                        communities who are in need of help. For over twenty years (20
                                                        years) BVS has provided and helped in various ways to fellow
                                                        Canadians and other communities around the world such as earth quake
                                                        victims of Nepal, flood victims of Sri Lanka, fellow Canadians who
                                                        were affected by wild fire in Fort Mc Murray, Alberta, just to name
                                                        a few. ...</p>
                                                    <p><a class="readmore" href="/what-we-do">READ MORE</a></p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="grid_6 omega">
                                <div class="column-fix">
                                    <div class="home-block-area">
                                        <div class="region region-home-area-2">
                                            <div id="block-block-13" class="block block-block">


                                                <div class="content">

                                                    <body
                                                        onLoad="MM_preloadImages('sites/all/themes/bluemasters/images/event-icon_h.png', '/sites/all/themes/bluemasters/images/suport-icon_h.png')">
                                                        <div class="home-links">
                                                            <div class="dana-link content">
                                                                <a class="image"  href="/dāna-calendar" onMouseOut="MM_swapImgRestore()" src="assets/img/calendar.png" name="Image3" width="220" height="170" border="0"></a>
                                                                <h3><a href="/dāna-calendar">Dana Calendar</a></h3>
                                                                <p>All dana sponsors are kindly reminded to confirm your
                                                                    dana arrangement two days (2) prior to the dana date by
                                                                    calling the temple at 604.888.1162.</p>
                                                            </div>
                                                            <div class="suport-link content">
                                                                <a class="image" href="/support-us"
                                                                   onMouseOut="MM_swapImgRestore()"
                                                                   onMouseOver="MM_swapImage('Image2', '', '/sites/all/themes/bluemasters/images/suport-icon_h.png', 1)"><img
                                                                        src="assets/img/support.png"
                                                                        name="Image2" width="170" height="170"
                                                                        border="0"></a>
                                                                <h3><a href="/support-us">Support Us</a></h3>
                                                                <p>We request that anyone who requires the services of our
                                                                    society to become a member.In order to become a member
                                                                    please <a href="http://www.bvs.org/membership"
                                                                              target="_blank">register</a></p>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>



                        </div>
                        <!--EOF:home-block-area-->
                    </div>

                </div>

            </div>
            <!--EOF:wrapper-->
            <!--            <div class="bottom-box">
                            <div class="clearfix container_12">
                                <div class="grid_12 alpha omega">
                                    <div class="column-fix">
                                        <div class="home-block-area last">
                                            <div class="region region-home-area-3">
                                                <div id="block-views-latest-post-block" class="block block-views">
            
                                                    <h2>Special Events</h2>
            
                                                    <div class="content">
                                                        <div
                                                            class="view view-latest-post view-id-latest_post view-display-id-block view-dom-id-19a5b75c7ab6e8597794681df42b7c76">
            
            
            
                                                            <div class="view-content">
                                                                <div
                                                                    class="views-row views-row-1 views-row-odd views-row-first views-row-last">
            
                                                                    <div class="views-field views-field-title"> <span
                                                                            class="field-content"><a
                                                                                href="/maha-kathina-robe-offering-ceremony">Maha Kathina
                                                                                Robe offering Ceremony</a></span> </div>
                                                                    <div class="views-field views-field-field-spevent-date">
                                                                        <div class="field-content"><span
                                                                                class="date-display-single">2023 Oct 29</span></div>
                                                                    </div>
                                                                    <div class="views-field views-field-body">
                                                                        <div class="field-content">
                                                                            <p>Dear members and well-wishers,</p>
                                                                            <p>This year’s Kathina Robe Offering Ceremony will be held
                                                                                on
                                                                        </div>
                                                                    </div>
                                                                    <div class="views-field views-field-view-node"> <span
                                                                            class="field-content"><a
                                                                                href="/maha-kathina-robe-offering-ceremony">Read
                                                                                More</a></span> </div>
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
                        </div>-->


        </div>

        <%@include file="jspf/footer.jspf" %>
        <%@include file="jspf/scripts.jspf" %>
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    </body>
</html>