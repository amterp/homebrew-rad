class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.35.tar.gz"
  sha256 "9a530b6867e108868c1a7cca8f8d9bc008a2cb6250e42216a7d7b902fb028241"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
