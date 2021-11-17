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
$ range_logger log/production.log --from '2021-10-8 8:10' --to '2022-10-12 12:30'
```
Running this command will create the new log file.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
