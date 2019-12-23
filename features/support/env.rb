require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'cucumber'
require 'rspec'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'

# Massa para os testes
LOGIN = YAML.load_file './features/config/massa.yml'

# Configuracoes do Capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
  
# Seta o driver de espera
Capybara.default_driver = :selenium
  
# Seta o tempo de espera do Driver
Capybara.default_max_wait_time = 15

