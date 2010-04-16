Feature: Bars
  In order view bars
  As a visitor
  I want list and view bars with info
  
  Scenario: View a list of bars
    Given there is 3 bars
    When I go to the list of bars
    And I should see "bar1"
    And I should see "bar2"
    And I should see "bar3"
    And I should see "Lägg till ny bar"
  

  Scenario: View a bar's page with address
    Given there is 1 bar
    When I go to the list of bars
    And I follow "bar1"
    Then I should see "bar1" within "h1"
    And I should see "bar1gatan"
    And I should see "bar1staden"
    And I should see "Visa alla"
  

  Scenario: Add a new bar
    Given I am on the add new bar page
    When I fill in the following:
      | Namn | ny bar                |
      | Gata | Margretelundsgatan 19 |
      | Stad | Göteborg              |
    And I press "Spara"
    Then I should see "ny bar" within "h1"
    And I should see "Ny bar sparad"
  

  Scenario: Add a invalid bar
    Given I am on the add new bar page
    When I fill in the following:
      | Namn |                       |
      | Gata | Margretelundsgatan 19 |
      | Stad | Göteborg              |
    And I press "Spara"
    Then I should see "Fel vid sparning"
  
  Scenario: Update bar
    Given there is 1 bar
    And I am on the page of the bar
    When I follow "Redigera"
    And I fill in the following:
      | Gata | Drottninggatan 32 |
    And press "Spara"
    Then I should see "Ändringar Sparade"
    And I should see "Drottninggatan 32"
    And I should not see "bar1gatan"
  

  Scenario: View a bar and it's prices
    Given there is 1 bar
    And the bar has 1 beer 
    When I am on the page of the bar
    Then I should see "35 SEK"
    Then I should see "Red Stripe"
  

  Scenario: Add a new beer to a bar
    Given there is 1 bar
    And I am on the page of the bar
    When I follow "Lägg till nytt ölpris"
    And I fill in the following:
      | Namn      | Corona           |
      | Pris      | 28               |
      | Kommentar | Innan klockan 22 |
    And press "Spara"
    Then I should see "Nytt ölpris sparat"
    And I should see "bar1" within "h1"
    And I should see "Corona"
    And I should see "28 SEK"
    And I should see "Innan klockan 22"
  

  Scenario: Try to add a beer with invalid price
    Given there is 1 bar
    And I am on the page of the bar
    When I follow "Lägg till nytt ölpris"
    And I fill in the following:
      | Namn | felöl  |
      | Pris | billig |
    And press "Spara"
    Then I should see "Fel vid sparning"
  