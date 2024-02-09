

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>BVS | Board of Directors</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
        <style>
            .para {
                font-family: 'Poppins', sans-serif;
                font-size: 1rem;
                padding-left: 15em;
                padding-right: 15em;
                text-align: justify;
            }
            .container {
                background-color: #E5E5E5;
                padding-left: 20em;
                padding-top :1em;
                padding-bottom: 1em;
                font-family: 'Merriweather', serif;
                color: #1968B1;

            }
            .title {
                font-size: 2rem;
                margin: 0; /* Remove any default margins */
            }
        </style>
    </head>
    <body>
        <%@include file="../jspf/navbar.jspf" %>

        <div class="title-bg">
            <div class="container">
                <div class="container_12">
                    <div class="grid_12">
                        <h1 class="title">Board of Directors </h1>
                    </div>
                </div> 
            </div>

        </div>

        <div class="para">
            <p style="color: #666666;font-size: 1.3rem;font-weight: 600;">
                Board of Directors  (2020-2022)
            </p>

            <ul>
                <li>Ven. Kumbalgoda Siriniwāsa (President)</li>  
                <li>Dr Aruna Somasiri (Vice President)</li>
                <li>Ariyaratne Tennakoon (Secretary)</li>
                <li>Madhava Amarasinghe (Asst.Secretary)</li>
                <li>Vishwanath Kumar (Treasurer)</li>
                <li>Eraj Liyanage (Asst.Treasurer)</li>
                <li>Pradeepa Weeraratne (Director)</li>
                <li>Kumar Basnayake (Director)</li>
                <li>Viraj Opananda (Director)</li>
                <li>Nirosha Amarasingha (Director)</li>
                <li>Thusitha Madawanaarachchi (Director)</li>
                <li>Chandana Kariyapperuma (Director)</li>
                <li>Nayana Hewage (Director)</li>
                <li>Kavindya Peiris (Director)</li>
                <li>Esanka Fernando (Director)</li>
            </ul>


        </div>


    </body>
</html>


