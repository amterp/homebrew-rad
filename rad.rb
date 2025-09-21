class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.0.tar.gz"
  sha256 "10ad2f0d699ca90c2b0e184e1033970d7f225232c8da2a1b14009389b3bc577c"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
