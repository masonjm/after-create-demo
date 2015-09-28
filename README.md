# after-create-demo

This is a simple Rails app to help answer a [StackOverflow Question](http://stackoverflow.com/questions/32638245/rspec-pgunabletosendserver-closed-the-connection-unexpectedly-this-probably) on user after create hooks.

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org) 2.2.1 and [Bundler](http://bundler.io) installed.

```sh
git clone git@github.com:masonjm/after-create-demo.git # or clone your own fork
cd after-create-demo
bundle
bundle exec rake bootstrap
bundle exec rake demo
```
