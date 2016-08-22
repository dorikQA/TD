Given(/^Open "([^"]*)" site$/) do |url|
  $driver.get url

end

Then /^Collect all links and print links titles$/ do
  links =  $driver.find_elements(:xpath, "//a[@href]")
  puts links.count
  links_dis = []
  links.each do |link|
    if link.displayed?
      links_dis<< link

    end
  end
   puts links_dis.count
  titles = []
  links_dis.each do |x|
  title = x.attribute('title')
  puts title
  titles << title
  end
  #@links = links_dis
end


Then /^Verify when user click on link "([^"]*)" he redirects to the correct page "([^"]*)"$/ do |link_name, req_page_title|
  links = $driver.find_elements(:xpath, "//a[@title = '#{link_name}']")
  link_disp = []
  links.each do|link|
     if link.displayed?
       link_disp << link
     end
  end
  link_disp[0].click
  sleep 3
  act_page_title = $driver.title
  puts $driver.title
  expect(act_page_title). to include(req_page_title)


end

