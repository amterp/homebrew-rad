class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.10.tar.gz"
  sha256 "7e923ffe6588d1acae55766f81e589a51ed4dd047112b64f2fbb530aa833aa57"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
