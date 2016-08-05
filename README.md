<h1>Fetching Remote Data using Angular JS</h1>
<img src=https://github.com/edsan88/MysqlPhonecatApp/blob/master/Screen%20Shot%202016-08-05%20at%208.13.57%20AM.png>
<hr/>
<h1>Instructions</h1>
<h2>I assume before following the steps below. Node JS,Git,Webserver(XAMMPP or WAMP) was successfully installed in your PC. If not, please install them</h2>
<p><b>Node JS</b> 
    <ul><li>https://nodejs.org</li></ul>
</p>
<p><b>Git</b> 
<ul>
    <li><b>for Windows</b> : https://git-scm.com/download/win</li>
    <li><b>for Mac</b> : https://git-scm.com/download/mac</li>
    <li><b>for Linux</b> : https://git-scm.com/download/linux</li>
</ul>
</p>
<p><b>Webserver</b>
    <ul>
        <li>WAMP - www.wampserver.com/en</li>
        <li>XAMPP - https://www.apachefriends.org</li>
    </ul>
</p>
<h2>Step 1. Create a Directory for Cloning</h2>
<p>
<ul>
  <li>Open your Terminal</li>
  <li><b>cd C:\</b></li>
  <li><b>mkdir angular</b></li>
  <li><b>cd angular</b></li>
</ul>
</p>

<h2>Step 2. Clone Git Repository</h2>
<p>
<ul>
  <li>On your terminal clone the repository: <b>git clone https://github.com/edsan88/MysqlPhonecatApp.git</b></li>
  <li>Note: Cloned Repository in your local directory contains 2 Folders: <b>angularjs</b> and <b>angular_web</b></li>
</ul>
</p>

<h2>Step 2. Setting up MySQL Database and Files for localhost</h2>
<p>
<ul>
  <li>Browse your cloned file: angular_web</li>
  <li>Folder contains:
    <ul>
        <li><b>phone.php</b></li>
        <li><b>phone_details.php</b></li>
        <li><b>phone.sql</b></li>
    </ul>
  </li>
  <li>Copy the entire angular_web folder inside your root directory (www) of your web server.  The path should look like this when viewed on your browse: 'localhost/angular_web' <br>
    <img src=https://github.com/edsan88/MysqlPhonecatApp/blob/master/Screen%20Shot%202016-08-05%20at%208.13.25%20AM.png>
  </li>
  <li>Open your phpmyadmin. 'localhost/phpmyadmin'</li>
  <li>Create a database name: phone</li>
  <li>Import phone.sql in your phone database</li>
</ul>
</p>

<h2>Step 3. Starting up MYSQL Phonecat</h2>
<p>
    <ul>
        <li>Open your terminal</li>
        <li>cd angular_js</li>
        <li>execute: <b>npm install</b> -  this will install the dependencies based on package.json file</li>
        <li>execute: <b>npm start</b></li>
        <li>Open your browser and point to address: <b>localhost:8000</b></li>
    </ul>
</p>

<hr>
<p>For Questions and Clarifications please send me a message and I will try my best to reply.
<br>Best Regard: <br>
<h2>Eduardo Santiago</h2> 
</p>
