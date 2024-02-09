<%-- 
    Document   : navbar
    Created on : Feb 9, 2024, 12:39:15 AM
    Author     : Nirmal Chathura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" version="XHTML+RDFa 1.0" dir="ltr">
<head profile="http://www.w3.org/1999/xhtml/vocab">
    <link rel="shortcut icon" href="https://bvs.org/sites/all/themes/bluemasters/favicon.ico" type="image/vnd.microsoft.icon" />
    <title>BVS</title>
  
    <style>
       @import url('https://fonts.googleapis.com/css?family=Varela+Round');

:root {
  --accent-color: #000000;
  --gradient-color: #FBFBFB;
}


* {
box-sizing: border-box;
}

body {
  background: #cecece;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  font-size: 1.2rem;
  margin: 0;
  padding: 0;
}

#logo-floater{
  
  margin-right: 250px;
  background-color: #000000;
 
}
a:focus {
  outline: none;
  position: relative;
}
a:after {
  content: "";
  background: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 15px;
  height: 3px;
  width: 0;
  transition: 0.5s;
  transition-delay: 0.2s;
}


.menu {
  top: 0; 
  left: 10px;
  right: 0px;
  width: 100%;
  list-style: none;
  display: flex;
  justify-content: space-around;
  background: #000000;
}

.menu > ol {
  list-style: none;
  margin-top: 5px;
  margin-right: 0px;
  padding: 0;
  justify-content: space-around;
}

.menu > ol > li {
  color: #000000;
  background: darken(#000000, 75%);
  border-left: 5px solid var(--gradient-color);
  margin-bottom: 1px;
  position:  relative;
  transition: 0.5s;
  text-transform: uppercase;
}


.menu > ol > li:nth-child(1) {
  border:none;


  
}


.menu > ol > li:nth-child(2) {
  --accent-color: #003bfd;
}

.menu > ol > li:nth-child(3) {
  --accent-color: #c1c423;
}

.menu > ol > li:nth-child(4) {
  --accent-color: #f30101;
}

.menu > ol > li:nth-child(5) {
  --accent-color: #ffffff;
}

.menu > ol > li:nth-child(5):hover {
  --accent-color: #000000;
}

.menu > ol > li:nth-child(5)::after {
  --accent-color: #000000;
}

.menu > ol > li:nth-child(6) {
  --accent-color: #ff7f08;
}

.menu > ol > li:nth-child(7) {
  --accent-color: #003bfd;
}

.menu > ol > li:nth-child(8) {
  --accent-color: #c1c423;
}

.menu > ol > li:nth-child(9) {
  --accent-color: #f30101;
}

.menu > ol > li:nth-child(10) {
  --accent-color: #ff7f08;
}


.menu > ol > li a {
  color: #ffffff;
  display: block;
  padding: 15px;
  position: relative;
  text-decoration: none;
  z-index: 1;
}

.menu > ol > li:hover,
.menu > ol > li:focus,
.menu > ol > li:focus-within {
  z-index: 1;
}

.menu > ol > li:hover:after,
.menu > ol > li:focus:after,
.menu > ol > li:focus-within:after {
  background: var(--accent-color);
  max-width: 800px;
}

.menu > ol > li:focus,
.menu > ol > li:focus-within {
  .sub-menu {
    max-height: 500px;
  }

}

.menu > ol > li:after {
  background: darken(#bd3838, 75%);
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  transition: 0.5s;
  max-width: 0;
  overflow: hidden;
}


.menu > ol > li .sub-menu {
  background-color: var(--accent-color);
  position:absolute;
  left: 0;
  top: 100%;
  border-left: 1px solid #ffffff;
  border-width: 5px;
  list-style: none;
  max-height:0;
  overflow: hidden;
  padding-left: 7.5px;
  transition: 0.5s;
  z-index: 1;
}


.menu .sub-menu li {
  font-size: 0.9em;
}

.menu .sub-menu li:hover,
.menu .sub-menu a:focus {
  background: fade(darken(#000000, 75%), 30%);
}

.menu .sub-menu li a:after {
  bottom: 5px;
  height: 1px;
}

.menu .sub-menu li:hover a,
.menu .sub-menu a:focus {
  &:after {
    width: 15px;
  }
}




@media (min-width: 600px) {
  a:focus,
  a:hover {
    position: relative;
    &:after {
      width: 100px;
    }
  }

  a:after {
    left: 0;
    right: 0;
    margin: auto;
    

  }

  .menu {
    
    margin: 0;
    margin-top: 0; 
  }

  .menu > ol {
    
    display: block;
    max-width: none;
    text-align: center;
    margin-right: 400px;
    margin-top: 40px;
  }


  #logo-floater{
  

    padding: 0;
    background-color: #000000;
   
  }
  


  .menu > ol > li {
    border-top: 5px solid var(--accent-color);
    border-left: 0;
    display: inline-block;
    margin-left: -5px;
    vertical-align: top;
    width: 120px;
  }

  .menu > ol > li:hover,
  .menu > ol > li:focus,
  .menu > ol > li:focus-within {
    &:after {
      background: var(--accent-color);
      border-radius: 3px;
      top: -15px;
      bottom: -15px;
      left: -15px;
      right: -15px;
    }

    .sub-menu {
      max-height: 750px;
    }
  }

  .menu > ol > li a:not(:last-child):before {
    right: 12.5px;
  }

  .menu > ol > li:hover a {
    &:before {
      transform: rotate(-180deg);
    }
  }

  

}

@media (max-width: 600px) {
  .menu > ol > li {
    width: 150px;
  }

}

    </style>
</head>
<body class="html front not-logged-in no-sidebars page-node i18n-en">



    <div class="hamburger-menu"></div>

    <nav class="menu">


        <ol>
          
            
               
                        <li id="logo-floater">
                            <a href="/" title="Home">
                                <img src="https://bvs.org/sites/default/files/logo_0.png" alt="Home" />
                            </a>
                        </li>

                        
                  
            <li class="menu-item"><a href="#home">Home</a></li>
            
            <li class="menu-item">
                <a href="#aboutus" class="dropbtn">About Us</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="http://tinyurl.com/q8d82fy" target="_blank">Charitable Status (CRA)</a></li>
                    <li class="menu-item"><a href="/history">History</a></li>
                    <li class="menu-item"><a href="/what-we-do">What we do</a></li>
                    <li class="menu-item"><a href="/vision-mission">Vision & Mission</a></li>
                    <li class="menu-item"><a href="/resident-monks">Resident Monks</a></li>
                    <li class="menu-item"><a href="/board-directors">Board of Directors</a></li>
                    <li class="menu-item"><a href="/religious-advisors">Religious Advisors</a></li>
                    <li class="menu-item"><a href="/audit-committee">Audit Committee</a></li>
                    <li class="menu-item"><a href="/projects" title="projects">Projects</a></li>
                </ol>
            </li>

            <li class="menu-item"><a href="#dhamma">Dhamma Resources</a></li>

            <li class="menu-item">
                <a href="#dhammaschool" class="dropbtn">Dhamma School</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="#">Staff</a></li>
                    <li class="menu-item"><a href="#">Classes</a></li>
                    <li class="menu-item"><a href="#">School Calendar</a></li>
                </ol>
            </li>

            <li class="menu-item">
                <a href="#forms" class="dropbtn">Forms</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="#">Membership Form</a></li>
                    <li class="menu-item"><a href="#">Dana Request Form</a></li>
                    <li class="menu-item"><a href="#">Service Request Form</a></li>
                    <li class="menu-item"><a href="#">Sunday school SNACK Form</a></li>
                    <li class="menu-item"><a href="#">BVS Carpool Forms</a></li>
                    <li class="menu-item"><a href="#">PAP Form</a></li>
                    <li class="menu-item"><a href="#">Katina 2023 - Kapruka Offerings</a></li>
                    <li class="menu-item"><a href="#">Katina Dansala Lunch Items</a></li>
                </ol>
            </li>

            <li class="menu-item">
                <a href="#community-engagement" class="dropbtn">Community Engagement</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="/projects-events">Projects & Events</a></li>
                    <li class="menu-item"><a href="/newsletters">Newsletters</a></li>
                    <li class="menu-item"><a href="/vegetable-ordering">Vegetable Ordering</a></li>
                </ol>
            </li>

            <li class="menu-item">
                <a href="#events" class="dropbtn">Schedule</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="#">Dana Calendar</a></li>
                    <li class="menu-item"><a href="#">Events Calendar</a></li>
                    <li class="menu-item"><a href="#">Special Events</a></li>
                </ol>
            </li>

            <li class="menu-item"><a href="#contact">Contact</a></li>
            <li class="menu-item"><a href="#support-us">Support-US</a></li>
      

            


                
              <!-- <li class="social-media-block">
                    <ol  class="facebook first"><a href="https://www.facebook.com/bvsbc" title="Facebook"><img src="https://bvs.org/sites/all/modules/social_media_links/libraries/elegantthemes/PNG/facebook.png" alt="Facebook icon" /></a></ol>
                    <ol class="instagram"><a href="http://www.instagram.com/buddhistviharasociety" title="Instagram"><img src="https://bvs.org/sites/all/modules/social_media_links/libraries/elegantthemes/PNG/instagram.png" alt="Instagram icon" /></a></ol>
                    <ol  class="email last"><a href="mailto:info@bvs.org" title="E-Mail"><img src="https://bvs.org/sites/all/modules/social_media_links/libraries/elegantthemes/PNG/email.png" alt="E-Mail icon" /></a></ol>
                        
                
                </li> -->
            
                        
                     
                
        </ol>
    </nav>

</body></html>
