class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.26.tar.gz"
  sha256 "d216ca0c78cfc1cce49ec2416aa68a7b73d82e815d815f64fd5d44b2d641ca9e"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
