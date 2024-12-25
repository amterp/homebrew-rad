class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.27.tar.gz"
  sha256 "6006731b34eb3709bcbc2bc992ee394ebd80dac46da201de9eeabbfcd1f0bd56"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
