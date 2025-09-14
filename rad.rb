class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.5.59.tar.gz"
  sha256 "23e1fc38e241a32de598ed437512118d4fbb3a14017ea0ea3fece71472abee56"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
