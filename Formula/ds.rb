class Ds < Formula
  desc "User Defaults Plist → Shell Script converter with Regex filtering"
  homepage "https://github.com/aerobounce/defaults.sh"
  url "https://github.com/aerobounce/defaults.sh/archive/2021.04.10.tar.gz"
  sha256 "f2a195828bc03241a434e48f23a12e4fc30f5b7232b922a2dec081a733371cae"
  license "AGPL-3.0-only"

  def install
    bin.install "ds"
  end
end
