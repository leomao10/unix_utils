# -*- encoding: utf-8 -*-
require File.expand_path('../lib/unix_utils/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Seamus Abshere"]
  gem.email         = ["seamus@abshere.net"]
  desc = %q{Like FileUtils, but provides zip, unzip, bzip2, bunzip2, tar, untar, sed, du, md5sum, shasum, cut, head, tail, wc, unix2dos, dos2unix, iconv, curl, perl, etc.}
  gem.description   = desc
  gem.summary       = desc
  gem.homepage      = "https://github.com/seamusabshere/unix_utils"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "unix_utils"
  gem.require_paths = ["lib"]
  gem.version       = UnixUtils::VERSION

  gem.add_runtime_dependency 'posix-spawn'
end
