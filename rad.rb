class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.1.5.tar.gz"
  sha256 "8cc1f2f5894ca36d88ec8a20662dac0fe91306d224edbcc14777977f5abf09c8"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
