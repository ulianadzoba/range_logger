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
$ range_logger log/production.log -f '2021-10-08' -t '2021-10-13'
$ range_logger log/production.log --from '2021-10-08 8:10' --to '2021-10-12 12:30'
$ range_logger log/production.log --from '03/07/2021 07:25:09.234567' --to '03/11/2021 07:25:09.234567'
$ range_logger log/production.log -f '03/07/2021 07:25:09.234567' -t '03/11/2021 07:25:09.234567'
$ range_logger log/production.log -f 'february 14th, 2020' -t 'february 14th, 2021'
$ range_logger log/production.log -f '25/10/2021' -t 'yesterday'
$ range_logger log/production.log -f 'Friday' -t 'Sunday'
$ range_logger log/production.log -f '4 days ago'
```
Default `--to` option is `Time.now`.
Find more available date range options https://github.com/mojombo/chronic.

Running this command will create the new log file.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
