class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.1.4.tar.gz"
  sha256 "ac1e52c6b12ed3d87280dbb8ed32156f81ccd7398f6c01697e9e24241fd7e1aa"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
