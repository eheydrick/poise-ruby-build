#
# Copyright 2015-2017, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "poise-ruby-build"
version "1.0.3"
description "A Chef cookbook for managing Ruby installations using ruby-build."
long_description "# Poise-Ruby-Build Cookbook\n\n[![Build Status](https://img.shields.io/travis/poise/poise-ruby-build.svg)](https://travis-ci.org/poise/poise-ruby-build)\n[![Gem Version](https://img.shields.io/gem/v/poise-ruby-build.svg)](https://rubygems.org/gems/poise-ruby-build)\n[![Cookbook Version](https://img.shields.io/cookbook/v/poise-ruby-build.svg)](https://supermarket.chef.io/cookbooks/poise-ruby-build)\n[![Coverage](https://img.shields.io/codecov/c/github/poise/poise-ruby-build.svg)](https://codecov.io/github/poise/poise-ruby-build)\n[![Gemnasium](https://img.shields.io/gemnasium/poise/poise-ruby-build.svg)](https://gemnasium.com/poise/poise-ruby-build)\n[![License](https://img.shields.io/badge/license-Apache_2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)\n\nA [ruby-build](https://github.com/sstephenson/ruby-build) provider for the\n[poise-ruby cookbook](https://github.com/poise/poise-ruby).\n\n## Provider\n\nThe `ruby_build` provider uses [ruby-build](https://github.com/sstephenson/ruby-build)\nto compile and install Ruby.\n\n```ruby\nruby_runtime 'myapp' do\n  provider :ruby_build\n  version '2.1'\nend\n```\n\n### Options\n\n* `install_doc` – Install documentation with Ruby. *(default: false)*\n* `install_repo` – Git URI to clone to install ruby-build. *(default: https://github.com/sstephenson/ruby-build.git)*\n* `install_rev` – Git revision to clone to install ruby-build. *(default: master)*\n* `prefix` – Base path for install ruby-build and rubies. *(default: /opt/ruby_build)*\n* `version` – Override the Ruby version.\n\n## Sponsors\n\nDevelopment sponsored by [Bloomberg](http://www.bloomberg.com/company/technology/).\n\nThe Poise test server infrastructure is sponsored by [Rackspace](https://rackspace.com/).\n\n## License\n\nCopyright 2015-2017, Noah Kantrowitz\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\nhttp://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.\n"
maintainer "Noah Kantrowitz"
maintainer_email "noah@coderanger.net"
source_url "https://github.com/poise/poise-ruby-build" if defined?(source_url)
issues_url "https://github.com/poise/poise-ruby-build/issues" if defined?(issues_url)
license "Apache 2.0"
depends "git", "~> 5.0"
depends "build-essential", "~> 7.0"
depends "poise", "~> 2.0"
depends "poise-ruby", "~> 2.1"
chef_version "~> 12" if defined?(chef_version)
