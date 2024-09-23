class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.2.11.tar.gz"
  sha256 "f916cf3cb25f0b6bf8fbbd479f4e6395c5a85f915a94bfdd23174a23752d5742"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
