Feature: Demo NopCommerce's top menu acceptance criteria

  As a user, i would like to check acceptance criteria of nopcommerce top menu

  Background: User is on given URL
    When User type URL http://demo.nopcommerce.com
    And  User click on enter button
    Then User is on given URL

  Scenario: Verify that user can navigates to book category
    When User is on given URL
    And Click on book tab on top menu
    Then User is navigates to book category page

  Scenario: Verify that user can see the books category page with filters and list of products
    When  User is on given URL
    And Click on book tab on top menu
    And Check filters and list tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on book category page
    Given User is on books category page
    When  User is on book category page
    And  Check 'Sort by' filter  is present
    Then 'Sort by' filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category page
    Given User is on book category page
    When  User is on book category page
    And Check 'Display' filter is present
    Then 'Display' filter is available on books category page

  Scenario: Verify that user can see 'Grid' tab on books category page
    Given User is on book category page
    When  User is on book category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on book category page

  Scenario: Verify that user can see 'List' tab on books category page
    Given User is on book category page
    When User is on book category page
    And  Check 'List' tab is present
    Then 'List' tab is available on book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on book category page
    When User is on book category page
    And  Click on 'Sort by' Filter
    And  Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given User is on book category page
    When  User os on book category page
    And  Click on 'Sort by' filter
    And Check that 'Name: A to Z' is first in order
    Then 'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected (NOTE: Products are filtered in  alphabetical order)
    Given User is on book page
    When  User is on book page
    And  Click on 'Sort by' filter
    And  Select 'Name: A to z' filter
    Then All products are displayed in alphabeticlal order




