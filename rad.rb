class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.46.tar.gz"
  sha256 "900348cb0a83d79df70b37f3431cf0d1fec634d3cbd0086321d435a4f2cb640d"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
