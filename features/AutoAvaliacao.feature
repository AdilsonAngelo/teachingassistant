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
Scenario: student self-evaluation incomplete GUI
    Given that I’m on the “self-evaluation” screen
    When I select all the grades for each goal but one
    And submit them
    Then the system shows an error message
    And asks to fill the “self-evaluation” form again

    Scenario: student self-evaluation incomplete 
    Given the student “Adilson Angelo” left blank spaces in the “self-evaluation” form
    When “Adilson Angelo” tries to submit the “self-evaluation” form
    Then the system shows an error message
    And asks to fill the “self-evaluation” form again

