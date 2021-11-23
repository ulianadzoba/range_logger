# range_logger

`range_logger` is range-based logs analyzer

## Installation

Gemfile:

```ruby
gem 'range_logger'
```

Run:

```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install range_logger
```

## Usage

In your Rails app directory execute `range_logger` with the next mandatory options:
- `path` - path to log.file;
- `--from` or `-f` - range start date;
- `--to` or `-t` - range end date.

### Example
```bash
$ range_logger log/production.log --from '8-10-2021 8:10' --to '10-10-221 12:30'
$ range_logger log/production.log --from '25/10/2021' --to 'yesterday'
$ range_logger log/production.log --from '4 days ago'
```
Find more available date range options https://github.com/mojombo/chronic.

Running this command will create the new log file.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
