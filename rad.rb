class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.2.5.tar.gz"
  sha256 "7f83e058229a0be732a240c39a1cd82597492e8a0833ae0cc7cc54745585e455"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
