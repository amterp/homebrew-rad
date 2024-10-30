class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.2.tar.gz"
  sha256 "722fcd1a23fd9a7bdf7a27aacd88fd0006fd55a054c7f6f284c1318f5e089f71"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
