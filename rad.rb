class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.52.tar.gz"
  sha256 "7e9a19f1e0f617bec7bf8936c07e9f5afa62a57556bf536aa251c3fcd6e7537f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
