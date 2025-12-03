class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.21.tar.gz"
  sha256 "9a2f1ff24090e39cc4b3175d1532cd1136cf404ddd22922e0bdbbe6f9a6a7bbc"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
