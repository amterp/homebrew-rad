class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.8.tar.gz"
  sha256 "b315788e3fc73f36d33c21d7b82f092d580c8ce986f7c0f7ebf59f4b59eff3bc"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
