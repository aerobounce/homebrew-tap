class Trash < Formula
  desc "Pure Swift CLI to move objects to the trash in the same manner as the Finder"
  homepage "https://github.com/aerobounce/trash.swift"
  url "https://github.com/aerobounce/trash.swift/archive/1.0.1.tar.gz"
  sha256 "8353a8c1476eee35e61779e7143c791488e9f765644344e99cae376d96adb178"
  license "AGPL-3.0-only"

  depends_on xcode: ["13.0", :build]

  conflicts_with "macos-trash", because: "both install a `trash` binary"
  conflicts_with "trash-cli", because: "both install a `trash` binary"
  conflicts_with "trash", because: "both install a `trash` binary"

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/trash"
  end
end
