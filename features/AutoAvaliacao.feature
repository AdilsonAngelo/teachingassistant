Feature: students self-evaluation
            As a student
            I want to evaluate my goals
            So that I can compare with the grades the professor gave me
Scenario: student self-evaluation GUI
    Given that I’m on the “self-evaluation” screen
    When I select the grades for each goal
    And submit them
    Then the system shows a confirmation message
    
Scenario: student self-evaluation
    Given The student “Adilson Angelo” filled the “self-evaluation” form
    When “Adilson Angelo” submit the “self-evaluation” form
    Then the system shows a confirmation message
    And stores the “self-evaluation” form for “Adilson Angelo”

