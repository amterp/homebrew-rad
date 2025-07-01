class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.51.tar.gz"
  sha256 "86b92d48d21d5a27c03d122fe408ee2497e332e98acddaefb22a455b6c8eeabc"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
