# ManageIQ::Providers::Minio

[![CI](https://github.com/ManageIQ/manageiq-providers-minio/actions/workflows/ci.yaml/badge.svg)](https://github.com/ManageIQ/manageiq-providers-minio/actions/workflows/ci.yaml)
[![Maintainability](https://api.codeclimate.com/v1/badges/<badge_token>/maintainability)](https://codeclimate.com/github/ManageIQ/manageiq-providers-minio/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/<badge_token>/test_coverage)](https://codeclimate.com/github/ManageIQ/manageiq-providers-minio/test_coverage)

[![Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ManageIQ/manageiq-providers-minio?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

ManageIQ plugin for the Minio provider.
Plugin enables us to observe the state of object storage containers.
In the current state it enables fetching of all buckets from given MINIO server, which are then shown in ManageIQ dashboard.
Using the steps, we can implement posibility to present other volume based cloud storage solutions. 

## Setup

1. Clone this repo into `manageiq/plugins` folder 
2. Create file named `local_plugins.rb` in `bundler.d` directory: `echo "override_gem "manageiq-providers-minio", :path => "../plugins/manageiq-providers-minio""> bundler.d/local_plugins.rb `
3. Add the following lines into `Gemfile`:
  ```
  group :minio, :manageiq_default do
    manageiq_plugin "manageiq-providers-minio"
    gem "aws-sdk"
  end
  ```
4. Run `bundle update`
5. Run `bundle exec rails console`
 
## Development

See the section on plugins in the [ManageIQ Developer Setup](http://manageiq.org/docs/guides/developer_setup/plugins)

For quick local setup run `bin/setup`, which will clone the core ManageIQ repository under the *spec* directory and setup necessary config files. If you have already cloned it, you can run `bin/update` to bring the core ManageIQ code up to date.

## License

The gem is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
