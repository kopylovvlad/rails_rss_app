# README

## Info

The application to see the differences between different ways to implement rss feed. The ways are: standart builder `xml.builder`; erb template `xml.erb`; ox gem 'xml.ox'

The application has 3 endpoints for rss's. By the way, you can check it out and see the result.

## Instalation

```
gem install bundler
bundle install
```

## Running application

```
bundle exec rake db:migrate
bundle exec rake seed
bundle exec rails s
```

## Routing

```
# xml view with builer gem
curl 'http://localhost:3000/topics1.xml'

# xml view with erb template
curl 'http://localhost:3000/topics2.xml'

# xml view with ox gem
curl 'http://localhost:3000/topics3.xml'
```

## Performance test

```
# test for builer gem
ab -n 25 'http://localhost:3000/topics1.xml'
# result:
# Percentage of the requests served within a certain time (ms)
#   50%    101
#   66%    105
#   75%    110
#   80%    113
#   90%    122
#   95%    139
#   98%    140
#   99%    140
#  100%    140 (longest request)

# test for erb
ab -n 25 'http://localhost:3000/topics2.xml'
# result
# Percentage of the requests served within a certain time (ms)
#   50%     46
#   66%     47
#   75%     49
#   80%     52
#   90%     54
#   95%     67
#   98%     68
#   99%     68
#  100%     68 (longest request)

# test for ox gem
ab -n 25 'http://localhost:3000/topics3.xml'
# result:
# Percentage of the requests served within a certain time (ms)
#   50%     51
#   66%     58
#   75%     58
#   80%     62
#   90%     67
#   95%     68
#   98%     70
#   99%     70
#  100%     70 (longest request)
```
