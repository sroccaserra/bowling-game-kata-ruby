### Install

    $ bundle

### Run tests with watcher

    $ bundle exec guard

### Annex

Memo to start from scratch:

    $ echo -e "source 'https://rubygems.org'\n\ngem 'guard-rspec', require: false" > Gemfile
    $ bundle install
    $ bundle exec guard init rspec

Then cleanup the generated Guardfile (no need for Rails stuff).
