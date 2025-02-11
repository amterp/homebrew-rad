class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.1.tar.gz"
  sha256 "a9b2f366e8c9e3ed3d3652731c247a3f76fd674b1d682a7783725af7110ddb5a"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
