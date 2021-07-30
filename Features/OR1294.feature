Feature: OR- 1294 Scenario 1: Show Items in all Trays in Surgery Steps where Instruments

Show Items in all Trays in Surgery Steps where Instruments



Scenario: Show Items in all Trays in Surgery Steps where Instruments

GIVEN I am a Sales Rep
AND I log into Virtual Rep
AND I access the surgery screen
AND I see a step other than all items with a tray for a procedure (User select other steps means switched from All Tray ) with items shown at the bottom of the screen also highlighted in a red color
AND I go to the all trays step
AND I access the same tray in the all trays step where items other than the items in the specific surgery step are presented at the bottom of the screen
AND I see unchecked checkboxes on the items at the bottom of the screen
AND I check the checkboxes 1 Item
AND the red highlights disappear
AND the item checked is highlighted in a green color in the tray
WHEN I check the checkboxes 2 additional Items
AND all 3 items are highlighted in green incrementally as I check each item
AND ORtelligence tracks the items that the sales rep highlighted
AND after 10 surgeries for 90% of the time I highlight the same items in the all trays section
AND I access the next surgery for the same procedure
WHEN I access the same surgery step (other than all items)
THEN The item that was not previously shown in the surgery step 
AND the item is highlighted in green"
	
