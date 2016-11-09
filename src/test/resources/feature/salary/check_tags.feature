@ST_4406 @Feature_customerListFeature
Feature: Customer list table

@SC_18896 @High @sameTag @CustomerList @Pagination_001
Scenario: Pagination_001 next page
Given I`m on a homepage
When I save values from columns
And I press 'Next Page' button
Then I see value '2' in page text field
And columns values have changed

@SC_18897 @High @sameTag @CustomerList @Search
Scenario Outline: Search
Given I`m on a homepage
When I enter in a text field called 'Enter search text' following text "<value>"
Then I see value "<value>" in "<column>" column

Examples: 
|column|value|
|Name|Logistics|