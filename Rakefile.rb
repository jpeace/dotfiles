desc 'Installs dotfiles'
task :install do
  replace_all = false
  ignore = ['Rakefile.rb']

  Dir['*'].each do |file|
    next if ignore.include? file
    
    if File.exist?(make_dot(file))
      if File.identical?(file, make_dot(file))
        puts "identical #{make_dot(file)}"
      elsif replace_all
        replace_file(file)
      else
        puts "overwrite #{make_dot(file)}? [ynaq]"
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping #{make_dot(file)}"
        end
      end
    else
      link_file(file)
    end
  end
end

def make_dot(file)
  File.join(ENV['HOME'], ".#{file}")
end

def replace_file(file)
  system %{rm -r #{make_dot(file)}}
  link_file(file)
end

def link_file(file)
  puts "linking #{make_dot(file)}"
  system %{ln -s #{File.join('$PWD', file)} #{make_dot(file)}}
end