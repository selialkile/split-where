# guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch(%r{^config/environments/.+\.rb$})
#   watch(%r{^config/initializers/.+\.rb$})
#   watch('spec/spec_helper.rb')
# end

guard 'rspec', :cli => "--color", :all_after_pass => false, :all_on_start => false do
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^lib/(.+)\.rb})     { |m| "spec/lib/#{m[1]}_spec.rb" }

  # Rails example
  watch('spec/spec_helper.rb')                       { "spec" }
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^lib/split-where/(.+)\.rb})                           { |m| "spec/split-where/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb})                           { |m| "spec/#{m[1]}_spec.rb" }
end

