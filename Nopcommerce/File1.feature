Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter URL"http://demo.nopcommerce.com/" in browser
    And   I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories

    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:

      | categories        |
      | computer          |
      | Electronics       |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see book page with filters

    When I select book category from top menu tabs on home page
    Then I should be navigate to book categoty
    And  I should be able to see "<filters>"

    Examples:

      | filters  |
      | Sort by  |
      | Display  |
      | The Grid |
      | List Tab |


  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on book page
    When  I click on "<filter>"
    Then  I shouls be able to see "<list>" in dropdown menu

    Examples:

      | filter  | list                                                             |
      | sort by | Name: A to Z, Price: Low to High, Price: High to Low, Created on |
      | Display | 3,6,9                                                            |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am onn book page
    When  I click on "<filter>"
    And   I click on "<option>"
    Then  I should be able to choose any filter option from list
    And   I should be able to see "<result>"

    Examples:

      | filter  | option             | result                                                            |
      | sort by | Name: A to Z       | sorted product with the product name in alphabetical order A to Z |
      | sort by | Name: Z to A       | sorted product with the product name in alphabetical order Z to A |
      | sort by | Price: Low to High | sorted product with the price in decending order                  |
      | sort by | Price: High to Low | sorted product with the price in ascending order                  |
      | sort by | Created on         | Recently added product should be show first                       |
      | display | 3                  | 3 products in a page                                              |
      | display | 6                  | 6 products in a page                                              |
      | display | 9                  | 9 products in a page                                              |


  Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
    Given I am on book page
    When  I click on "<display format icon>"
    Then  I should be able see product display format type as per given picture in srs document

    Examples:

      | display format icon |
      | Grid                |
      | List                |