<%-- 
    Document   : home
    Created on : 7 Feb 2024, 5:20:23 am
    Author     : Chirantha Prasad
--%>

<%-- 
    Document   : navbar
    Created on : Feb 8, 2024, 5:16:00 PM
    Author     : Nirmal Chathura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" version="XHTML+RDFa 1.0" dir="ltr">
<head profile="http://www.w3.org/1999/xhtml/vocab">
    <link rel="shortcut icon" href="https://bvs.org/sites/all/themes/bluemasters/favicon.ico" type="image/vnd.microsoft.icon" />
    <title>BVS</title>
    <style>@import url('https://fonts.googleapis.com/css?family=Varela+Round');

:root {
  --accent-color: #45494E;
  --gradient-color: #FBFBFB;
}

body {
  background: #cecece;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  font-size: 1.2rem;
  margin: 0;
  padding: 0;
}

.menu {
  top: 0; 
  left: 0;
  right: 0;
  width: 100%;
  list-style: none;
  display: flex;
  justify-content: space-around;
  background: #000000;
}

.menu > ol {
  list-style: none;
  margin: 30px 0;
  padding: 0;
  justify-content: space-around;
}

.menu > ol > li {
  color: #000000;
  background: darken(#000000, 75%);
  border-left: 5px solid var(--gradient-color);
  margin-bottom: 1px;
  position: relative;
  transition: 0.5s;
}

.menu > ol > li:nth-child(1) {
  --accent-color: #003bfd;
}

.menu > ol > li:nth-child(2) {
  --accent-color: #c2c513;
}

.menu > ol > li:nth-child(3) {
  --accent-color: #f30101;
}

.menu > ol > li:nth-child(4) {
  --accent-color: #ffffff;
}

.menu > ol > li:nth-child(4):hover {
  --accent-color: #000000;
}

.menu > ol > li:nth-child(5) {
  --accent-color: #ff7f08;
}

.menu > ol > li:nth-child(6) {
  --accent-color: #ce5afc;
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
  a:before {
    transform: rotate(-180deg);
  }
}

.menu > ol > li:after {
  background: darken(#FBFBFB, 75%);
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

.menu .sub-menu {
  border-left: 1px solid #ffffff;
  border-width: 5px;
  margin-left: 22.5px;
  list-style: none;
  max-height: 0;
  overflow: hidden;
  padding-left: 7.5px;
  position: relative;
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
      width: 50px;
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

@media (min-width: 775px) {
  .menu > ol > li {
    width: 150px;
  }
}
</style>
</head>
<body class="html front not-logged-in no-sidebars page-node i18n-en">

    <nav class="menu">
        <ol>
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
                <a href="#events" class="dropbtn">Schedule</a>
                <ol class="sub-menu">
                    <li class="menu-item"><a href="#">Dana Calendar</a></li>
                    <li class="menu-item"><a href="#">Events Calendar</a></li>
                    <li class="menu-item"><a href="#">Special Events</a></li>
                </ol>
            </li>
        </ol>
    </nav>

</body></html>