
USE Portfolio_db;


USE atr7cdv4rkzlefkq;

INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-001",
    "TankView",
    "Visual C# program written entirely by me talks to networked PLC's. There is a bridge from Automation Direct PLC's to Siemens PLC which then means the software just needs to talk to the Automation Direct PLC",
    "Program was written entirely by me using Visual Studio.  The program talks to an Automation Direct PLC's that are networked together on a static IP network.  Also on the network are Siemen's PLC's.  The software talks to the PLC network and pulls out integer values representing how much ink is supposed to be in a tank versus analog values coming back from ultrasonic sensors measuring the liquid level.  From their the software displays warnings if their is a discrepency and also let's the user know if the job can run based on the quantities present.",
    "Easy way to talk to PLC without expensive packages that have limited capabilities",
    " ",
    " "
);

INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-002",
    "Panels linked to Siemens PLC",
    "Custom designed PLC panels and software.  Customer had their own existing Siemen's PLC network.  Each panel runs autonomously while at the same time transferring data packets thru the TCP/IP network.",
    "Each panel runs auxilliary equipment.  Status updates are sent thru the network including the main Siemens PLC. If one of the auxilliary panels detects a problem, adjustable time delays for each fault determine how long the operator has to clear the alarm before a complete production line shutdown is requested.",
    "Demonstrates distributed control and interfacing to a customer's quipment.",
    " ",
    " "
);

INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-003",
    "Wire forming machine",
    "Customer had bought an old used piece of equipment with no documentation, no prints, and no comments. PLC software was reverse engineered then fixed.  In addition, parts were measured up and then revised ones machined.",
    "First, all the wires labeled and then traced out using telephone ringing equipment. A full schematic was created along with reverse engineering the PLC software and adding comments.  Once machine was running, improvements were begun. Mechanical parts were measured up, modeled in CAD, and then CNC machined with improvements.",
    "Even equipment that has no source code nor prints can be salvaded if the engineer has enough experience.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-004",
    "Fully integrated production line",
    "Metal stamping and forming production line. 14 machines with individual control panels were all networked.  A supervisory PLC panel handles all the conveyors and the transferring of data packets between the machines.",
    "Each machine transmits its supply of product. The supervisory PLC does closed loop speed controls on each sequential operation based on the supply of material between the machines.  The supervisory PLC does also track line effeciencies and downtimes and for what cause.  The error codes are sent to a computer network where reports are generated on line efficiences and why the line is shutting down. ",
    "Networked PLC's on a production line & controlled by a supervisory PLC without needed a computer to be on-line all the time. Storing of QC and line effeciences.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-005",
    "Liquid pouring inspection",
    "A machine was having problems pouring liquid.  A monitorimg device was designed using an embedded processor.",
    "A machine was having quality control issues pouring liquid compound.  Optical sensors failed because of splasing and not enough detail. Mechanical analysis showed that the checkvalve system could be analyzed using a pressure transducer.  Pressure curves were analyzed using a Fluke Oscilliscope with custom software to record pressure curve at timed intervals and upload to a PC. Using this research embedded microprocessor then monitored the pressure continuously and rejected bad product or shutting down the machine if too many successive rejects.",
    "Using off the shelf test instruments for research, then designing software for waveform or signature analysis. Also mixing embedded microprocessors with PLC's on an industrial production line.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-006",
    "Powder Mixing System",
    "A powder mixing system with a silo and multiple stations was designed. Each station had a Allen-Bradley PanelView with PLC's. Recipes were downloaded from a PC.",
    "Loadcells were placed and calibrated on the silo.  These were then read into a PLC using a serial port to read from the transducer conditioning board. Mulitple mixing stations with unique identifiers on the containers tracked.  All during the process the batch is constantly monitored even for manual powder additions.  Receipes are typed in on the computer and sent over to the PLC which stores up to 25 in memory. The recipe allows for powder dribble at different times and also changing of the auger speeds during the cycle.",
    "Integrating multiple screens thru different PLC's while tracking enitre process at one PLC.  Entering complex mixing instructions onto a PC and then sending it to a PLC.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-007",
    "8 axis Servo Machine",
    "A machine was needed that ran at high speed and that did not have complex chains and gearboxes. In addition, the machine needed to synchronize it's speed to the rest of the production line.  This included ramping up/down during the acceleration phase",
    "An 8 axis servo panel and PLC control were developed. In order to tune all of the axis properly, a fixture was developed. An encoder input was brought in to follow the ramp up and down of the production line.  Virtual gearing was used on all the axis eliminating drive components such as driveshafts and chains. All servo loops, because of the required virtual gearing were all programmed to be distance control loops with different ratios (gears).",
    "Virtual gearing to tie multiple axis together. Using an encoder to follow an exisiting production line precisely.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-008",
    "Rebuild of machine tool",
    "A 1970's era 4-axis servo machine tool with old obsolete manual resistor tuning, relay logic, and no schematics was rebuilt with all new PLC controls.  As much of the old wiring and wire numbers were salvaged as possible.",
    "Machine had manually tuned servo axis with relay logic controls. Because of its age, the original manufacturer was out of business and no schemtics cold be found.  Using telephone wiring instruments (fox and hound), all of the wiring was traced out and a schematic was created.  From this schematic, the full intended operation of the machine could be interpreted. New servos were designed and installed along with PLC controls.",
    "It's possible to retrofit older equipment at a reasonable cost with the proper experience and knowledge.  In addition, pulling knowledge from other areas like telephony allowed the job to be completed quickly.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-009",
    "Continuous molding machine with cooling.",
    "A machine was needed that formed a product continuously while at the same time cooling it.  Thermodynamic calculations were done and it was determined that conductive cooling had to be implmented. Innovative cooling was employed thru the forming process.",
    "Thermodynamic analysis determined that the food product needed to be chilled at a rate that exceeded convection cooling.  Therefore, a conductive cooling system was developed.  Entire machine was whiteboard design and all mechanicals and electricals custom designed. The thermodynamics calculations were proven to be accurate as well as the recirculation tank with chiller. The PLC panel was designed to control the forming machine as well as the chiller tank and chillers.",
    "Possibility of cooling a product using conduction instead of convection.  Integrating mechanical with electrical design using all 3D solids modeling",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "PLC-010",
    "Powder Mixing Recipes",
    "A powder mixing system needed recipes to be downloaded from a PC.",
    "System was designed previously by me and now wanted to move recipes from a PC. A PC based database was developed along with custom driver to send data thru a network protocol.  ",
    "Integrating multiple screens thru different PLC's while tracking enitre process at one PLC.  Entering complex mixing instructions onto a PC and then sending it to a PLC. In addition it is possible to create recipes into the database from anywhere in the world and to schedule jobs also from anywhere in the world.  Lastly, QC data for every serialized batch is stored within the database.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "EME-001",
    "Portable test instrument",
    "Customer wanted a portable test instrument that was to be mass produced.",
    "Designed circuit board (PCB), enclosure, and full electro-assembly prints. Modeled circuit board in SolidWorks so that enclosure could be designed around it.",
    "Designing one of many complete electrical and mechanical products for production.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MLD-001",
    "Custom thermoform molded chair",
    "Customer wanted a chair for a video game that would seat children.  Full geometry of a child was done in 3D solids and then the chair was modeled to fit.  Chair was then thermoformed.",
    "After the 3D solids of the chair was designed, tool paths were created to machine the chair out of a base material to be used in a thermoforming machine.  The base 'mold' was machined and then the chairs were thermoformed.",
    "It's possible to model the human body in 3D solids and then form accessories around it.  Once the 3D solids is modeled, the same model is used to create tool paths whether the product is injection molded or thermoformed.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MCH-001",
    "HAAS CNC operation",
    "I can program and operate many different kinds of CNC machinery, including this HAAS mill.",
    "Designing good mechanical parts and making them machinable is the goal of all mechanical parts.  By being able to program and machine my own parts doesn't just mean that I am able to prototype quicker, it also give me an insight into better designs.",
    "Creating great parts means knowing how they are made and if you make them yourself, you become a better engineer.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MCH-002",
    "Operating manual mills, drills, & lathes",
    "As in operating a CNC machine, operating a manual machine give insight into how a part needs to be designed, dimensioned, and toleranced.",
    "With formal training on machinery operation as well as doing hands on machining of parts for prototypes and hobby, I understand the machining processes. It doesn't mean that I need to be machining the parts myself or that its necessary I do, but at least I understand them.",
    "By machining prototype parts or just knowing how to machine them, I have insight into how parts dshould be designed as well as being able to talk to machinists in how to improve parts.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MCH-003",
    "Operating old CNC machines",
    "My experience includes being able to machine parts on old, yes even physical paper tape style machines !",
    "Having a historical hands on perspective allows me to design better controls for new machines.",
    "I understand machinery and operations and can learn any machine as well as explain it to others.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MCH-004",
    "My own CNC machine",
    "Yes, I own my very own CNC machine.  I used it to reverse engineer and machine parts everywhere. It allows machining on-site. In addition, it runs the same code as a HAAS so I use it to cut test parts.",
    "Even though I can manually machine a part, it does require a lot of time.  The use of a CNC machine allows me to still use my creative side and design parts but not have to wait around.  The machine is started and runs by itself. It also allows me to measure and machine part on-site, getting them to fit properly. Also, I use it to test machine parts before committing them to a larger Haas machine.",
    "I have a passion for design, engineering, machining, and programing.  In short -- creating and building.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MCH-005",
    "Bracket Machined on-site",
    "Building an industrial control panel required some PCB (printed circuit boards) to be mounted. By using a portable CNC machine it's possible to machine bracket on-site and fit it in.",
    "Having a portable CNC machine and SolidWorks on a laptop allows me to quickly make any parts I need on-site where I can measure the parts needed and then machine them.  If modifications are needed, the parts can be re-machined and fitted.  After the project is finished the entire part along with the NC toolpaths are all contained within the design file.",
    "Reverse engineering mechanical parts by using measurement tools and then drawing them in SolidWorks and then machining on-site with portable CNC machine",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-001",
    "Skateboard simulation",
    "A customer wanted to simulated the feel of a skateboard, but wanted it to be stationary.",
    "A full analysis and measurement was done on existing skateboards. The design was reversed, where springs with rollers pushed on the underside of the skateboard mimicing the feel of a conventional skateboard.  Electronics were installed that made the skateboard act like a mouse.  Therefore, the final game run on Windows based hardware without any special drivers.",
    "Analyzing a mechancal problem and coming up with a unique solution.  Embedded microcontroller to mimic a mouse and keyboard.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-002",
    "FEA Analysis of a Toy",
    "Customer was concerned that a video game would flex or break from abuse. FEA was used to simulate various forms of possible abuse and failure modes.",
    "Using 3D models of various designs and first calculating all of the forces, FEA simulations were run. These showed that stacked plate design was strongest and that it would not fail with up to 500lbs of load.",
    "FEA can be used to confirm calculations and to also visually show the response of the system.  This allows the engineer to convey concerns and design methods to all shareholders on a project.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-003",
    "Video Game Stand",
    "Customer video game stand that could be shipped flat and assembled on-site.",
    "Customer wanted a video game stand that could be shipped on-site in a flattened state and then assembled on-site.  In addition to creating the usual exploded assembly diagram, and assembly animation video was created. Customer could see the assembly steps involved for himself, but then use it for training and hiring the correct installation crew.",
    "Creating designs with a 3D modeler is not just for getting a better design but also for customer visualization and training.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-004",
    "Cooling tunnel in a confined space",
    "A customer needed to fast cool a food product after the production line was built and land-locked.  A custom cooling tunnel was designed that would fit over their existing conveyors. ",
    "First, thermodynamic calculations were done to figure out how the cooling requirements and aid in the design of the tunnel. Thermodynamic calculations were done and they showed that the air flow had to be turbulent in order to achieve that cooling in the space required.  Baffle plates with holes and nozzles were designed taht would keep the air flow right above the food product. After that the tunnel was designed to swing over the conveyors and lift up like a lid.  The inlet and exhaust air piping was under the conveyor.",
    "Doing thermodynamic calculations especially convection cooling are involved. Using turbulent air flow allows for maximum cooling.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-005",
    "Cart for Automation Panel",
    "A cart was needed to hold an automation panel. Requirements were that it be able to be shipped in a flat container, it have wheels to roll, be hoistable, and have storage compartments.",
    "Off the shelf aluminum extrusions were chosen.  Complete desgin was done in SolidWorks and all of the extrusion and panel dimensions were sent to the vendor who supplied the entire cart in kit form.  Full assembly instructions were provided and the carts were assembled on site, working perfectly.",
    "Using alumunium extrusions is easy if the design is done in SolidWorks and all of the pieces are supplied pre-cut.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MEE-006",
    "FEA Analysis of a hollow shaft",
    "A hollow shaft that was used to transmit torque as well as cooling fluid thru the center of the hollow shaft was analyzed.  It need to work without failure.",
    "A surprising finding was that the maximum stress was at the shoulder of the shaft where the bearing made contact.  The center of the shaft flexed the most, as expected, but was not a high stress area and the deflection was within the design parameters of the machine. The shoulder was re-designed and all of the stress was reduced.",
    "Using FEA allowed for the re-design of the shaft prior to failure in the field.  The high stress point was unexpected.  Shaft performed flawlessly.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "EEE-001",
    "Embedded Game Controller",
    "Custom PCB (printed circuit board) and embedded software allows a customer to hook up video game sensors to a conventional PC.  Board sends signals that mimic a standard USB keyboard and mouse.",
    "First the sensors were designed using a cobination of hall effect and photo-optical encoders.  These pulses are read using interrupts which generate 'clicks' which are then sent as mouse movements.  Other sensors send keyboard strokes, like arrow keys for steering.",
    "Don't always need custom drivers.  A lot can be done using standard HID drivers.  That way, it's simply a plug and go installation.",
    " ",
    " "
);



INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "EEE-002",
    "Data center wiring.",
    "Have designed and installed several data centers including mining computers.",
    "Have designed as well as just installed data centers.  Can work with wire and fiber optics. Have done electrical loading as well as thermal loading.",
    "Designing and working with data centers makes me a fully rounded engineer.",
    " ",
    " "
);



INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "BCH-001",
    "Block chain bike registry",
    "Blockchain DAPP to register bicycles.  The originating bike shop posts all of their inventory of bike's manufacturer, serial number, etc.  When bike is sold, only the originating store can add a new entry and allow the transfer of ownership.",
    "Blockchain is a public ledger database that is stored on millions of nodes.  By making it a public database, anyone can verify the ownership of a bike.",
    "It possbile to create secure unmutable database that can be publically searched.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "BCH-002",
    "Incremental Sponsorship",
    "Blockchain DAPP (decentralized app) that allows a person to sponsor someone on a public ledger and then have the participant be paid for each increment of achieving their goal.",
    "The blockchain is used because it is public and allows everyone to see the participant during their increments.  This might be say per mile walked for a charity.  As each mile is walked, the user's wallet is updated.  This allows for instance, a walk for cancer to be spread out over a longer time than just a one day event.  In addition the sponsor feels secure in knowing the funds are only paid when the incremental goal is achieved.  After an expiration date, all of the unused funds are returned to the sponsor.",
    "Using the blockchain in an innovative way.  Also my skills in finding a use that is not yet present, and then programing a blockcahin.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MOB-001",
    "Mobile App to grade ScanTron forms",
    "Allows teachers to grade ScanTron forms on their iPhone or iPAD without having to wait in line to use the machine.",    
    "Teachers have long been tied to using ScanTron forms because the ease of using the machines.  However, there is always a line at the machine during the time when it's needed the most.  In addition, once a test is graded, the teacher can not throw out questions or adjust the curve. This app was originally written in Objective C to demonstrate what can be accomplished within a handheld device.  No outside API calls are done.  All of the machine vision techniques is done within the unit.  This allows the user to grade exams anywhere without access to the maine or even the internet.  A custom human hand writing routine was created to find out where the user marked the test. The teacher is allowed to throw questions out and/or adjust the curve prior to printing or emailing the graded tests.",
    "Demonstration of using an iOS device to perform machine vision techniques.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MOB-002",
    "Inventory with RF-ID",
    "A handheld device was needed to read RF-ID tags without connection to the internet.  All data was downloaded into the device and then the RF-ID read/write was used to stored updated values to the RFID tags.",
    "At the time, Windows Phones were the cheapest phones that could read AND write to RFID tags.  This app was programed using Visual Studio and deployed to be used in warehouses where the internet connections could not be counted on.  The phones had enough on-board storage to store all the inventory numbers, descriptions, and other fields.  When a stock item was found, it was recorded in the phone that the stock item had been found and then a new RFID was programed on site and fastened to the inventory item.  Of course, if the item already had a tag, it's tag was read.",
    "Programing of Windows Phones, the use of a database in a handheld device, and programing and reading RFID tags using a mobile device.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MOB-003",
    "HPLC software in a mobile device",
    "An HPLC (high pressure chromatography) unit need software to be able to read from the instrument as well as to do scientific analysis of the data.",
    "A brand new UI (user interface) and user experience were developed, completely breaking the mold from what was done on desktops previously.  With this new device, the user could identify the exact compound found and also be able to email the results directly from the device.  Software was written in Xamarin to make it universal for iOS or Android.",
    "Xamarin universal app programing, Bluetooth (BT) to serial device communications, graphics plotting, and doing integrations on the fly, within the device.  Other features were ability to email the report, download settings and parameters from the cloud.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MOB-004",
    "Machining specs calulator",
    "An app was developed that allowed the machinist to put in a material and the tool type and the app calculates the speeds and feeds and then gives the settings the machine requires.",
    "A machinist wants to setup for machining using speeds and feeds that are looked up in machinery handbooks. Some older machines do not have a direct input for setting the speeds and feeds based on known units like (in/min).  Instead the machine is setup up using a percentage of the maximum.  So, the machining is a guess setup to start with and then adjustments are done later on.  This app allows the machinist to put in the type of material being cut, the tool type and geometery. Then the app looks up the required speeds and feeds from it's database.  After that the app computes the settings based on the machines min/max/% settings.",
    "Ability to create a universal app in Xamarin.  Database table lookup within the device.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "MOB-005",
    "Pricing app for a machined part.",
    "A customer needed a quick way to be able to calculate pricing or even for their customer to get their own pricing.  The app allows anyone to type in the desired finished product and the app does the computations and then gives a price.",
    "The pricing is based on the raw cost of the material, how many spindles will be used for machining, what kind of tool, and how much volume is to be removed.  Then, there is the consideration of what the final machined part will look like.  The app does all of the calculations using the latest material costs as well as machine shop costs.  The customer likes using the app because they can play with the performance specs of the final product and get calculations on how it will run on their production floor and also the pricing.  So, their tradeoff of performance to pricing can be done by themselves.  In addition, the company sales people need to write less quotes because the customer can make their own changes and see the affects.",
    "Xamarin programing and pulling in machining data from a mySQL database.  Oher features are sending data via email and a mySQL database record.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "SFT-002",
    "PC ver of grading ScanTron",
    "Desktop version to allow easier keyboarding and also the import and export of grades and student emails. Same core logic as mobile app.",
    "This version, because it is made to run on a PC, means that you will have a hardware keyboard, internet connection, and large hard drive.  This allows the program to import student names / emails.  In addition, it allows the export of the grades to the student and parents.",
    "Using Xamarin to use the same core logic as a mobile app, but have it run on a desktop Windows based PC.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "FSW-001",
    "DateNight",
    "A full front end app that based on your location, selects all the movie theaters and movies around you. It then calls up a GPS map and shows all the nearest restaurants in the area.",
    "The user's GPS location is read and then a search radius is sent to an API to search for the nearest theater locations.  From there, a table is created with all of the movies and theaters.  When the user selects the movie, another search is initiated with the closest restaurants.  A Google Map is brought up with custom icons for the theater and restaurants.",
    "Reading GPS location and address, calling third party API's, searching for restaurants using Google.  Then using Google Maps to plot custom icons for the theater and the restaurants.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "FSW-002",
    "Mobi-Linq",
    "An app that uses the full stack.  Allows the user to use their phone as a device to remotely monitor a location.  A link is made between the user and a remote mobile device.",
    "The user can use any remote mobile device or even a desktop. A link is made between the two devices thru a backend server. The remote device uses a browser to get access to the camera.  Somewhere else the user logs in and a link is made thu a mySQL database. Commands are sent back and forth thru mySQL. If a picture is desired, the remote device takes a picture and sends the file as a blob. At the server the blob is stored as a file.",
    "Remote linking thru a mySQL database. Image transfer is done thru sending of blobs and then recreating the blob to a file at either end.",
    " ",
    " "
);


INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "FSW-003",
    "Pong-2180",
    "Ping pong game played long distance.  Players's GPS is read or the user can type in an address. The user can swing his phone or tap the screen.  Other users can log in from anywhere in the world and watch the flight of the ball as it flies thru the air.",
    "There are two front ends, one for the players and one for observers.  There are also two backends. One is the physics 'engine' that calculates the flight of the pong ball thru the air. All of the balls coordinates are stored in the real-time database so that other users can log in and view the data. The other backend handles the screen displays.  Observers can log in and watch the flight of the ball over a google map or the actual terrain and houses under the flight of the ball.",
    "Demonstrates the use of mySQL to store data, a real-time database, & two backends. On the mobile, GPS & gryometer are read to detect the tilt.  Google maps is used to display the flight of the ball.",
    " ",
    " "
);



INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "FSW-004",
    "Rich Budek Portfolio",
    "My personal portfolio page to demonstrate my Full Stack Web Developer skills. It is a a full stack project with Node JS backend, React, and mySQL database",
    "The backend is Node.JS which also serves React pages. All projects are stored in a mySQL database with several tables for descriptions, which page should display which projects, and then links to support files.  If the support file is a JPEG, it is displayed in a carousel. In addition there are API calls to an email API and a texting API. Projects are displayed in a React Table format that allows clicks",
    "Demonstrates my artistic UX/UI design experience, the use of mySQL to store data, linking to file storage, and use of a photo carousel",
    " ",
    " "
);



INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "SYS-001",
    "Complete IT layout for a plant",
    "Customer needed a complate overhaul of the IT department. I setup all staic IP addresses with devices separated by type and department. A full firewall with bandwidth limiting was implemented.",
    "A full firewall in software using UnTangle was used.  Redunant internet connections from 2 different vendors with load balancing to provide continuous connection. Devices were given static IP's and segrated by functions and departments.  This then allowed for bandwidth limitind based on the device/user.  VoIP was put onto the network with highest bandwidth.  A full wireless mesh with 4 points for coverage throughout the entire plant. CNC machines and IoT devices throughout the plant are integrated as well.",
    "Complete IT setup with thought put into static IP addressing. Virtual machine setup using VMWare",
    " ",
    " "
);



INSERT INTO projects (
    proj_code, proj_name, short_descrip, long_descrip, what_demonstrates, pic_thumb_name, 
    link_on_line
) VALUES (
    "WIR-001",
    "Making a wire harness",
    "When wiring a control panel, wire harness need to be made between panels to make connections. Stringing each wire separately is time consuming. This is an easier way to do it.",
    "Using this method, simply pick two fixed locations, take a spool of wire and string it between the two points. From there these pictures show how to label all the wires on one end first, ring them out one by one and label each one.  Then, you can lay the harness in the wire trough and wire both ends.",
    "This is one method of making a wire harness and I use it.",
    " ",
    " "
);


