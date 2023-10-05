# HolidaysBr

Welcome to the HolidaysBr gem! This Ruby gem helps you determine if a given date is a holiday in a specific Brazilian state and city. It provides holiday information such as the name and type of the holiday.

## Installation

Add this gem to your application's Gemfile:

```bash
$ bundle add holidays_br
```

Or install it directly using:

```bash
$ gem install holidays_br
```

## Usage

To check if a specific date is a holiday in a particular state and city, use the is_holiday method as follows:

```ruby
require 'holidays_br'

# Specify the state, city, and date you want to check
state = 'SP'
city = 'SAO PAULO'
date = '2023-12-25'

holiday_info = HolidaysBr.is_holiday(state, city, date)

if holiday_info
  puts "#{date} is a holiday in #{city}, #{state}:"
  puts "Name: #{holiday_info[:name]}"
  puts "Type: #{holiday_info[:type]}"
else
  puts "#{date} is not a holiday in #{city}, #{state}."
end
```

## Development
After checking out the repository, you can run bin/setup to install dependencies. You can also run bin/console for an interactive prompt to experiment with the gem.

To install this gem on your local machine, run:

```bash
$ bundle exec rake install
```
To release a new version, update the version number in lib/holidays_br/version.rb and then run:

```bash
$ bundle exec rake release
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/holidays_br. Please read the code of conduct before contributing.

## License
The gem is available as open source under the terms of the MIT License.

## Code of Conduct
Everyone interacting in the HolidaysBr project's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the code of conduct.
