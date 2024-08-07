require 'yaml'
require 'time'

# Directory containing the posts
posts_dir = '_posts'

# Iterate through each file in the _posts directory
Dir.glob("#{posts_dir}/*.md").each do |file|
  content = File.read(file)
  
  # Extract front matter
  if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
    front_matter = $1
    body = $POSTMATCH

    # Parse YAML front matter with safe_load and permitted_classes
    data = YAML.safe_load(front_matter, permitted_classes: [Date, Time])

    # Update date format if date exists
    if data['date']
      begin
        parsed_date = Time.parse(data['date'].to_s)
        data['date'] = parsed_date.strftime('%Y-%m-%d %H:%M:%S %z')
      rescue ArgumentError
        puts "Invalid date format in file: #{file}"
      end
    end

    # Write updated content back to file
    new_front_matter = YAML.dump(data)
    File.open(file, 'w') do |f|
      f.puts new_front_matter
      f.puts '---'
      f.puts body
    end
  else
    puts "No front matter found in file: #{file}"
  end
end

puts "Date format update complete."