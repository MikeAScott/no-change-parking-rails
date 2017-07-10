Feature: Driver Can Pay By Credit Card
  In order to avoid having to use coins in a parking meter 
  As a driver 
  I want to be able pay for my parking by credit card

Business Rules:
  To pay for parking:
  a Driver must give their Vehicle Registration and Credit Card Number 
  a vehicle is considered not paid for if it is not on the current payments list 
  Once paid, the vehicle is logged on the Payments list

Scenario: Once paid, a vehicle appears on the Payments list
    Given The following payments list 
      | Vehicle |
      | Car6    |
      | Car7    |
    
    When We get a new call from driver 'Dave'
    And He pays to park "Red Polo" with a valid credit card
    Then the payment should be accepted
    And the payments list should show   
      | Vehicle   |
      | Car6      |
      | Car7      |
      | Red Polo  |
