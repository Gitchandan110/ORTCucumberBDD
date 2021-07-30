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


