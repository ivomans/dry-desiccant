# dry-desiccant
Procedure to dry your desiccant with a Bambulab P1S

Note: the gcode files in this repository work for my configuration. Check out carefully if they match your configuration. Best test first with the 'set-height.gcode' script before starting the actual drying process with the 'dry_desiccant.gcode'.

* First print the tray from https://makerworld.com/en/models/2165983-desiccant-dryer-using-hotbed-and-auxiliary-fan#profileId-2348610
* Download the .gcode files from this repository
* Upload these files to your printer through FTP, put them in the root directory of your printer.
  * how to make an FTP connection: see https://forum.bambulab.com/t/we-can-now-connect-to-ftp-on-the-p1-and-a1-series/6464?utm_source=chatgpt.com
* Next on your printer display: 
  * select the folder 
  * select the filename
  * start the print, without anything on the plate
  * after the plate has positioned 65mm under the top position insert the tray with the desiccant
  * wait 4 hours for the desiccant to get dry
