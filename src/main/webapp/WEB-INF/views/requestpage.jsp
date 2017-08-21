<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/21/2017
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Page</title>
</head>
<body>
<h1>Company Name</h1>
<p></p>
<form action="/addrequest" method="post">
Departure Station: <select name="departure">
    <option value="one" name="E Bethune St & Brush St">E Bethune St & Brush St</option>
    <option value="two" name="Second Ave & W Grand Blvd">Second Ave & W Grand Blvd</option>
    <option value="three" name="Henry Ford Hospital">Henry Ford Hospital</option>
    <option value="four" name="Second Ave & Burroughs St">Second Ave & Burroughs St</option>
    <option value="five" name="WSU - Cass Ave & Gilmour Mall">WSU - Cass Ave & Gilmour Mall</option>
    <option value="six" name="Kirby St & Woodward Ave">Kirby St & Woodward Ave</option>
    <option value="seven" name="WSU - W Kirby & Third Ave">WSU - W Kirby & Third Ave</option>
    <option value="eight" name="Farnsworth St & John R St">Farnsworth St & John R St</option>
    <option value="nine" name="Trumbull Ave & Merrick St">Trumbull Ave & Merrick St</option>
    <option value="ten" name="Cass Ave & W Hancock St">Cass Ave & W Hancock St</option>
    <option value="eleven" name="Second Ave & Prentis St">Second Ave & Prentis St</option>
    <option value="twelve" name="DMC - John R St & E Canfield St">DMC - John R St & E Canfield St</option>
    <option value="thirteen" name="W Willis St & Cass Ave">W Willis St & Cass Ave</option>
    <option value="fourteen" name="Second Ave & Selden St">Second Ave & Selden St</option>
    <option value="fifteen" name="Mack Ave & John R St">Mack Ave & John R St</option>
    <option value="sixteen" name="Wilkins St & Russell St">Wilkins St & Russell St</option>
    <option value="seventeen" name="Woodward Ave & Peterboro St">Woodward Ave & Peterboro St</option>
    <option value="eighteen" name="Temple St & Second Ave">Temple St & Second Ave</option>
    <option value="nineteen" name=">Wabash St & Michigan Ave">Wabash St & Michigan Ave</option>
    <option value="twenty" name="20th St & Bagley Ave">20th St & Bagley Ave</option>
    <option value="twenty-two" name="23rd St & Bagley Ave">23rd St & Bagley Ave</option>
    <option value="twenty-three" name="W Vernor Hwy & Scotten Ave">W Vernor Hwy & Scotten Ave</option>
    <option value="twenty-four" name="Gratiot Ave & Russell St">Gratiot Ave & Russell St</option>
    <option value="twenty-five" name="E Lafayette St & Orleans St">E Lafayette St & Orleans St</option>
    <option value="twenty-six" name="Atwater St & Orleans St">Atwater St & Orleans St</option>
    <option value="twenty-seven" name="Jos Campau & Guoin St">Jos Campau & Guoin St</option>
    <option value="twenty-eight" name="Wight St & Mt Elliott">Wight St & Mt Elliott</option>
    <option value="twenty-nine" name="Agnes St & Parker St">Agnes St & Parker St</option>
    <option value="thirty" name="Brooklyn St & Michigan Ave">Brooklyn St & Michigan Ave</option>
    <option value="thirty-one" name="WCCC - W Fort St">WCCC - W Fort St</option>
    <option value="thirty-two" name="Bagley Ave & Plaza Dr">Bagley Ave & Plaza Dr</option>
    <option value="thirty-three" name="Rosa Parks Transit Cente">Rosa Parks Transit Cente</option>
    <option value="thirty-four" name="Cobo Center - Washington Blvd & W Congress St">Cobo Center - Washington Blvd & W Congress St</option>
    <option value="thirty-five" name="Grand Circus Park - West">Grand Circus Park - West</option>
    <option value="thirty-six" name="Capitol Park - Griswold St & State St">Capitol Park - Griswold St & State St</option>
    <option value="thirty-seven" name="W Fort St & Griswold St">W Fort St & Griswold St</option>
    <option value="thiry-eight" name="Larned St & Woodward Ave">Larned St & Woodward Ave</option>
    <option value="thirty-nine" name="Paradise Valley - Gratiot Ave & Randolph St">Paradise Valley - Gratiot Ave & Randolph St</option>
    <option value="forty" name="Brush St & Madison St">Brush St & Madison St</option>
    <option value="forty-one" name="Beaubien St & E Lafayette St">Beaubien St & E Lafayette St</option>
    <option value="forty-two" name="Jefferson Ave & Beaubien St">Jefferson Ave & Beaubien St</option>
    <option value="forty-three" name="Ren Cen Plaza & Detroit Riverwalk">Ren Cen Plaza & Detroit Riverwalk</option>
    <option value="forty-four" name="Monroe Ave & Campus Martius">Monroe Ave & Campus Martius</option>
</select>
Arrival Station: <select name="arrival">
    <option value="one" name="E Bethune St & Brush St">E Bethune St & Brush St</option>
    <option value="two" name="Second Ave & W Grand Blvd">Second Ave & W Grand Blvd</option>
    <option value="three" name="Henry Ford Hospital">Henry Ford Hospital</option>
    <option value="four" name="Second Ave & Burroughs St">Second Ave & Burroughs St</option>
    <option value="five" name="WSU - Cass Ave & Gilmour Mall">WSU - Cass Ave & Gilmour Mall</option>
    <option value="six" name="Kirby St & Woodward Ave">Kirby St & Woodward Ave</option>
    <option value="seven" name="WSU - W Kirby & Third Ave">WSU - W Kirby & Third Ave</option>
    <option value="eight" name="Farnsworth St & John R St">Farnsworth St & John R St</option>
    <option value="nine" name="Trumbull Ave & Merrick St">Trumbull Ave & Merrick St</option>
    <option value="ten" name="Cass Ave & W Hancock St">Cass Ave & W Hancock St</option>
    <option value="eleven" name="Second Ave & Prentis St">Second Ave & Prentis St</option>
    <option value="twelve" name="DMC - John R St & E Canfield St">DMC - John R St & E Canfield St</option>
    <option value="thirteen" name="W Willis St & Cass Ave">W Willis St & Cass Ave</option>
    <option value="fourteen" name="Second Ave & Selden St">Second Ave & Selden St</option>
    <option value="fifteen" name="Mack Ave & John R St">Mack Ave & John R St</option>
    <option value="sixteen" name="Wilkins St & Russell St">Wilkins St & Russell St</option>
    <option value="seventeen" name="Woodward Ave & Peterboro St">Woodward Ave & Peterboro St</option>
    <option value="eighteen" name="Temple St & Second Ave">Temple St & Second Ave</option>
    <option value="nineteen" name=">Wabash St & Michigan Ave">Wabash St & Michigan Ave</option>
    <option value="twenty" name="20th St & Bagley Ave">20th St & Bagley Ave</option>
    <option value="twenty-two" name="23rd St & Bagley Ave">23rd St & Bagley Ave</option>
    <option value="twenty-three" name="W Vernor Hwy & Scotten Ave">W Vernor Hwy & Scotten Ave</option>
    <option value="twenty-four" name="Gratiot Ave & Russell St">Gratiot Ave & Russell St</option>
    <option value="twenty-five" name="E Lafayette St & Orleans St">E Lafayette St & Orleans St</option>
    <option value="twenty-six" name="Atwater St & Orleans St">Atwater St & Orleans St</option>
    <option value="twenty-seven" name="Jos Campau & Guoin St">Jos Campau & Guoin St</option>
    <option value="twenty-eight" name="Wight St & Mt Elliott">Wight St & Mt Elliott</option>
    <option value="twenty-nine" name="Agnes St & Parker St">Agnes St & Parker St</option>
    <option value="thirty" name="Brooklyn St & Michigan Ave">Brooklyn St & Michigan Ave</option>
    <option value="thirty-one" name="WCCC - W Fort St">WCCC - W Fort St</option>
    <option value="thirty-two" name="Bagley Ave & Plaza Dr">Bagley Ave & Plaza Dr</option>
    <option value="thirty-three" name="Rosa Parks Transit Cente">Rosa Parks Transit Cente</option>
    <option value="thirty-four" name="Cobo Center - Washington Blvd & W Congress St">Cobo Center - Washington Blvd & W Congress St</option>
    <option value="thirty-five" name="Grand Circus Park - West">Grand Circus Park - West</option>
    <option value="thirty-six" name="Capitol Park - Griswold St & State St">Capitol Park - Griswold St & State St</option>
    <option value="thirty-seven" name="W Fort St & Griswold St">W Fort St & Griswold St</option>
    <option value="thiry-eight" name="Larned St & Woodward Ave">Larned St & Woodward Ave</option>
    <option value="thirty-nine" name="Paradise Valley - Gratiot Ave & Randolph St">Paradise Valley - Gratiot Ave & Randolph St</option>
    <option value="forty" name="Brush St & Madison St">Brush St & Madison St</option>
    <option value="forty-one" name="Beaubien St & E Lafayette St">Beaubien St & E Lafayette St</option>
    <option value="forty-two" name="Jefferson Ave & Beaubien St">Jefferson Ave & Beaubien St</option>
    <option value="forty-three" name="Ren Cen Plaza & Detroit Riverwalk">Ren Cen Plaza & Detroit Riverwalk</option>
    <option value="forty-four" name="Monroe Ave & Campus Martius">Monroe Ave & Campus Martius</option>
</select>
Time: <select name="time">
    <option value="morning">Morning</option>
    <option value="Afternoon">Afternoon</option>
    <option value="Evening">Evening</option>
</select>
Start Date: <input type="date">
Frequency: <select name="frequency">
    <option value="weekday">Mon-Fri</option>
    <option value="daily">daily</option>
    <option value="one time">one time</option>
</select><br>
(Be more specific about your trip, add a message) <input type="text" name="message">
<br>
<input type="submit" value="Add Request">
</form>

<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1OgcE4Jko7Qw8604Mo_Mi-NarUQw" width="1200" height="780"></iframe>

</body>
</html>
