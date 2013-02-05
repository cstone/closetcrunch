# Closetcrunch

## Requirements
* Ruby 1.9.3-head
* RVM
* `closetcrunch` gemset
* Sqlite3

## Installation
* Clone this repo
* `cd` into the `closetcrunch` directory
* `bundle install`
* Boot the server with `rails s`

## Running Specs

### Run all specs
`rake spec`

### Run model specs
`rake spec:controllers`    
`rake spec:models`

_Run `rake -T | grep spec` to see all possible rake tasks_


## Deployment
* Merge any completed feature branches into `master` (_optional_)
* `git push origin master` (_if necessary_)
* `rake spec`
* `git push heroku master`
* Grab beer
* ??
* Profit