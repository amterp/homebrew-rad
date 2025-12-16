class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.25.tar.gz"
  sha256 "56a5447b4acabc8d190bd7bea4eb7746546684375238b2ef94c423c420f0a6b9"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
