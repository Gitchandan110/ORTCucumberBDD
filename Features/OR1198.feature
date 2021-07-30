Feature: OR- 1197 Scenario 1: See Checkboxes on Items

This improvement is to provide the capability to allow a surgery team member or sales rep
to highlight multiple Items at once which would indicate which items the scrub tech should 
take out of the tray, assemble, etc. The checkboxes should be centered at the 
bottom of each instrument image and should not overlap or cover the actual instrument image

Scenario: See Checkboxes on Items


Given Surgeon navigates to https://dev.ortelligence.com/
And I log into Ortelligence Application
And I access the surgery screen
When I see a tray for a procedure
Then I should see checkboxes on the items at the bottom of the screen


Scenario: Sales Rep Selects One Items to Highlight



GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
WHEN I check the checkboxes 1 Item
THEN the red highlights disappear
AND the item checked is highlighted in a green color in the tray
AND ORtelligence tracks the items that the sales rep highlighted"


Scenario: Sales Rep Selects Multiple Items to Highlight




GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
WHEN I check the checkboxes 2 additional Items
THEN all 3 items are highlighted in green incrementally as I check each item
AND ORtelligence tracks the items that the sales rep highlighted"


Scenario: unchecking an item unhighlight that item


GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
AND I check the checkboxes 2 additional Items
AND all 3 items are highlighted in green incrementally as I check each item
WHEN I uncheck 1 of the 3 items
THEN that item’s green highlight dissappears
AND the other 2 items remained highlighted"



Scenario: Checking  an item will highlight that item in all other steps that use that tray/system/procedure

GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
AND I check the checkboxes 2 additional Items
AND all 3 items are highlighted in green incrementally as I check each item
WHEN I click on another step that uses the same item and tray
THEN AND all 3 items are highlighted in that new step"
	
	
	
Scenario: Unchecking  an item will unhighlight that item in all other steps that use that tray/system/procedure

GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
AND I check the checkboxes 2 additional Items
AND all 3 items are highlighted in green incrementally as I check each item
AND I uncheck 1 of the 3 items
AND that item’s green highlight disappears
AND the other 2 items remained highlighted
WHEN I select another step that has the same item and tray
THEN AND all 3 items are unhighlighted in that new step"
	
	
	
Scenario: after  25 case minimum, system displays items based on predictive analysis

GIVEN I am a Surgeon
AND I perform a 27245 procedure for Hip
AND in step 3, the Sales rep checks/highlights  items other than the defaults for 25 different cases
WHEN I access the surgery screen for the 26th case for that same surgeon, procedure and system
THEN predictive analysis checks the pattern of items selected and  highlights in green color for
any of the steps in which  that tray is shown"
	
	
Scenario: When Feature is on an all items are unchecked, nothing is highlighted

GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a tray for a procedure with items shown at the bottom of the screen also highlighted in a red color
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
AND I check the checkboxes 2 additional Items
AND all 3 items are highlighted in green incrementally as I check each item
WHEN I uncheck all 3 items
THEN no items are highlighted in Green all should be in Red.
	
