require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = 'split-where'
  s.version = '0.0.2'
  s.summary = 'The best split'
  s.description = <<-EOF
    split_where is the best split for specific situations, such as when a 
    character is within quotation marks or apostrophes, use your imagination.
  EOF
  s.requirements << 'One string to split xD'
  s.files = [
            'lib/split-where.rb',
            'split-where.gemspec'
            ]

  s.has_rdoc = true
  s.author = 'Thiago Coutinho'
  s.email = 'thiago@osfeio.com'
  s.rubyforge_project = 'split-where'
  s.homepage = "http://github.com/selialkile/split-where"
end

if __FILE__ == $0
  Gem::Builder.new(spec).build
else
  spec
end
