class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.5.tar.gz"
  sha256 "bd395ed0dc94ed728da687622435864e90087129568212f3f27fbfeebc2c3fbb"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
