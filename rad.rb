class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.37.tar.gz"
  sha256 "df7b5174b61e2cd7b446cb2c8a93fbe3e480900d68389234e29dde1eed89697a"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
