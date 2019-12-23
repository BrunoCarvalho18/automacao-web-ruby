Before do |scenario|
    Capybara.reset_sessions!
end


After do |scenario|
  Dir.mkdir('report') unless Dir.exist?('report')
  sufix = ('Não passou' if scenario.failed?) || 'Sucesso'
  name = scenario.name.tr(' ', ' ').downcase
  page.save_screenshot("report/#{sufix}-#{name}.png")
  embed("report/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
  if page.driver.browser.window_handles.count > 1
    page.driver.browser.close
    last_handle = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(last_handle)
  end
end