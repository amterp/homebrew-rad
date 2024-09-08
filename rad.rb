class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.1.1.tar.gz"
  sha256 "351ce948562bc42f7a6f936112f12cbdb3e318a0a6cb02233f98f166f512679c"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
  
  test do
    assert_match "version 0.1.1", shell_output("#{bin}/rad --version")
  end
end
