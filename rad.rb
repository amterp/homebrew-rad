class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.16.tar.gz"
  sha256 "92a5f785b74c0b34dce12ce0b85560e649abc6dc84bcabda478bb5f57d704d54"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
