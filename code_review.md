- Is the Github documentation - commits and README - thorough and descriptive?

  README is the default Rails README template

  Commits look descriptive and succinct

- Is there good spec coverage?

  Simplecov was not running by default, enabling it showed the following coverage:
  - charges_controller - 15.79%
  - countries_controller - 59.525
  - allprojects_controller - 66.67%
  - projects_controller - 82.5%

  enable simplecov by addind the following to the top of spec_helper.rb:
  ```
  require 'simplecov'
  SimpleCov.start
  ```

- Do all specs pass?

  The "adds a country to the home page" spec fails. Manual testing produces behavior described in spec.

- Is the application logic clear and easy to navigate?
  - allprojects_controller and projects_controller are overlapping, all projects actions should be in projects controller.
  - 'continent' should be it's own class, with a one to many relationship with countries.
  - Authorization behavior is good, but re-directs should include a flash alert.
  - The model attributes c_name and c_description are confusing instead of being descriptive, if these are properties on the country, it is implicit that name and description refer to that model. If this refers to the continent, it should say continent, but also, see above about continent modeling.
  - Same applies for p_name, p_image, and p_description
  - User controller line 3 is redundant, devise requires email on user.create

- Can you make a test payment through Stripe?

  Yep! Flash notice would be nice here telling the user their payment has been processed

- Is the site user-friendly?

  Very! Styling is top-notch :+1:

- Are there opportunities for refactoring?
  - Consider moving "if current_user && current_user.admin" to a helper method

- What features stand out?
  - The hover enabled world map is awesome.
  - The country sidebar is a nice touch
  - Dropdown nav for user is rad

- What features could be improved?
  - Happy with quality and completeness of features, well done! Site operates beautifully from an end user perspective.

- Do you have any additional constructive criticism or positive feedback to share?
  - Downstreet on the flip flop, time pants.
