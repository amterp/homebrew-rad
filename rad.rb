class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.5.58.tar.gz"
  sha256 "f1235f84f7a40bff67cabcb376fdcc28118dde78834f515e970db7e2d2591d2a"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
