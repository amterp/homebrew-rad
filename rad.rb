class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.12.tar.gz"
  sha256 "b78940eef3c21ca439bb5516ff6cb20922eff8a40b3ae9bd63c10ab562e6c381"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
