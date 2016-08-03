RSpec.configure do |config|
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
      puts "DatabaseCleaner has started."
      puts "FactoryGirl has linted."
    ensure
      DatabaseCleaner.clean
      puts "DatabaseCleaner has clean."
    end
  end
end