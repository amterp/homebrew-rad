class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.14.tar.gz"
  sha256 "889b68eaa33b604e4b2e5d87c30f9eac1761d5c7324a82ca0934022b1c114627"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
