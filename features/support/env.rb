require 'selenium-webdriver'
require 'cucumber'



AfterStep do |scenario|
  $driver.manage.timeouts.implicit_wait = 2
end

Before do
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = false
  profile.secure_ssl = true
  $driver = Selenium::WebDriver.for(:firefox, :profile => profile)
  $delete_cookies
end

AfterStep do
  $driver.manage.timeouts.implicit_wait = 2
end



After do |scenario|
  if scenario.failed?
    screenshots_dir = File.join(File.dirname(__FILE__), "..", "FailedScreenshots")
    if !File.directory?(screenshots_dir)
      raise "!!!Cannot capture screenshots!!! Screenshot directory #{screenshots_dir} exists but isn't a directory" if File.exists? screenshots_dir
      FileUtils.mkdir_p(screenshots_dir)
    end
    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name}.png"
    screenshot_file = File.join(screenshots_dir, screenshot_name)
    sleep 1
    $driver.save_screenshot(screenshot_file)
    embed("#{screenshot_file}", 'image/png')
  end
$driver.quit
end
