Feature: OR- 1289 Scenario 1: Surgery Team can select between Default and Surgeon Specific Highlights

This improvement is to provide the capability to allow a surgery team member or sales rep
to highlight multiple Items at once which would indicate which items the scrub tech should 
take out of the tray, assemble, etc. The checkboxes should be centered at the 
bottom of each instrument image and should not overlap or cover the actual instrument image


Scenario: Surgery Team can select between Default and Surgeon Specific Highlights

GIVEN I am a Surgeon
AND I perform a 27245 procedure for Hip 
AND the default highlighted items for step 3 is 7 items
AND during surgery, in step 3, the Sales rep checks/highlights 3 items
AND the Surgery for the case is Completed
AND I perform 9 additional 27245 procedures for Hip
AND for 8 of the 9 additional procedures, the sales rep checks/highlights the same 3 items for the tray/system/ procedure
AND for the 1 of the 9 additional procedures, the sales rep checks/highlights items other than same 3 items for the tray/system/procedure
AND I access the surgery screen for the 11th case for that same surgeon, procedure and system
AND the default updates to showing same 3 items highlighted in green color for any of the steps in which that tray is shown
WHEN I select Show Defaults (Generic Instrument or No Surgeon specific)
THEN the page refreshes
AND the user remains on Step 3 and the same tray
AND the 7 original items are shown as highlighted in Red
AND the change will be Applicable for all other trays and steps (All other trays are also displaying All Instrument in Red Border: Pass)"
	
	
Scenario: User sees checkboxes to add and remove in surgeon specific only


WHEN I select Show Surgeon Specific
THEN  the page refreshes
AND the user remains on Step 3 and the same tray
AND the 3 Surgeon Specific Highlighted items are shown as highlighted (Green) 
AND the change will be Applicable for all other trays and steps
AND switch between default and surgeon specific
AND user sees checkboxes to add and remove in surgeon specific only
	
	
