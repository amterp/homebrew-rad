class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.24.tar.gz"
  sha256 "ae108f8726fce09a7f22cc0349f6460b5e1fc13616fdf3b642249a1a1a35719a"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
