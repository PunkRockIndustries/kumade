When /^I bundle$/ do
  When %{I run `bundle --gemfile=./Gemfile --local || bundle --gemfile=./Gemfile`}
end

When /^I set up the Gemfile with kumade$/ do
  steps %{
    When I write to "Gemfile" with:
      """
      gem 'kumade', :path => '../../..'
      """
  }
end

When /^I add "([^"]+)" to the Gemfile$/ do |gem|
  steps %{
    When I append to "Gemfile" with:
      """

      gem '#{gem}'
      """
  }
end
