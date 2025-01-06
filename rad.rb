class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.32.tar.gz"
  sha256 "a8b6eec23372f8f8d7ac86d13dc7b0346c3f867fa7b0470e287cfe9d6a57cc1a"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
