class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.40.tar.gz"
  sha256 "e3f13cbe273f88074c8d4e69cdf69f902e837e68c420fddf23dbbc259251ba8b"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
