# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class LinuxmainGenerator < Formula
  desc "A shell command to automatically add code to Swift Package Manager projects to run unit tests on Linux."
  homepage "https://github.com/kareman/linuxmain-generator"
  url "https://github.com/kareman/linuxmain-generator/archive/0.1.0.tar.gz"
  sha256 "164256d2e7535545d88ff2b0a70b1574e7e4eae605cd5d29f8911f172e1f49f6"

  depends_on :xcode => ["8.2", :build]

  def install
    system "unset CC; swift build -c release"
    bin.install ".build/release/linuxmain-generator"
  end
end
