class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.12.tar.gz"
  sha256 "2d64c2e2701bc0f0b04807c9f638cd71f245472340d039eafd7ad103cfb1edda"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
