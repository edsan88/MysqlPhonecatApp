<h1>Instructions</h1>
<hr/>
<h2>I assume before following the steps below. Node JS,Git,Webserver(XAMMPP or WAMP) was successfully installed in your PC. If not, please install them</h2>
<p>Node JS - https://nodejs.org</p>
<p>Git 
<ul>
    <li>for Windows : https://git-scm.com/download/win</li>
    <li>for Mac : https://git-scm.com/download/mac</li>
    <li>for Linux : https://git-scm.com/download/linux</li>
</ul>
</p>
<p>Webserver
    <ul>
        <li>WAMP - www.wampserver.com/en</li>
        <li>XAMPP - https://www.apachefriends.org</li>
    </ul>
</p>
<h2>Step 1. Create a Directory for Cloning</h2>
<p>
<ul>
  <li>Open your Terminal</li>
  <li>cd C:\</li>
  <li>mkdir angular</li>
  <li>cd angular</li>
</ul>
</p>

<h2>Step 2. Clone Git Repository</h2>
<p>
<ul>
  <li>On your terminal clone the repository: git clone https://github.com/edsan88/MysqlPhonecatApp.git</li>
  <li>Note: Cloned Repo contains 2 Folders: angularjs and angular_web</li>
</ul>
</p>

<h2>Step 2. Setting up MySQL Database and Files for localhost</h2>
<p>
<ul>
  <li>Browse your cloned file: angular_web</li>
  <li>Folder contains:
    <ul>
        <li>phone.php</li>
        <li>phone_details.php</li>
        <li>phone.sql</li>
    </ul>
  </li>
  <li>Copy the entire angular_web folder inside your root directory (www) of your web server.  The path should look like this when viewed on your browse: 'localhost/angular_web'</li>
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
        <li>execute: npm install -  this will install the dependencies based on package.json file</li>
        <li>execute: npm start</li>
        <li>Open your browser: localhost:8000</li>
    </ul>
</p>

<hr>
<p>For Questions and Clarifications please send me a message and I will try my best to reply.
<br>Best Regard: <b>Eduardo Santiago</b> 
</p>
