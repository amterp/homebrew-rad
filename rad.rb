class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.2.6.tar.gz"
  sha256 "95ae4991e54a6ee832f38a11f184baf98b5f86cf6dbcaac15e73d422a483e0ae"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
