class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.47.tar.gz"
  sha256 "741297c222125b2421384fd4056ce9bba70c008947cc53ffea2671dd760b7dab"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
