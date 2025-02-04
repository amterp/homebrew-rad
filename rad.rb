class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.34.tar.gz"
  sha256 "1b056cf21d4489c3c039b7fa024bc6066e0439b1553bcc8860f9771ea7d1c1bd"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
