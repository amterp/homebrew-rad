class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.5.tar.gz"
  sha256 "84423e1ceaa3b20da9e5ca081ee9774b95bf35e9193c5a69935f1d1c478c92db"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
