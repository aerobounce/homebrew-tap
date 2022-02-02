class Approle < Formula
  desc "CLI to set defalut application for UTIs and Extensions"
  homepage "https://github.com/aerobounce/approle.swift"
  url "https://github.com/aerobounce/approle.swift/archive/1.0.1.tar.gz"
  sha256 "ca98e0d9cc769ec0dc142fb5a272a1074e41989855874a1a9c4f647817be83cb"
  license "AGPL-3.0-only"

  depends_on xcode: ["13.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/approle"
  end
end
