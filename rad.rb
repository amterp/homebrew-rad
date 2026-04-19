class Rad < Formula
  desc "Modern CLI scripts made easy"
  homepage "https://amterp.dev/rad/"
  url "https://github.com/amterp/rad/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "24d4443b1105d69dc991b0493ea766f7b40e8976639938de6a995d64190e9c27"
  license "Apache-2.0"
  head "https://github.com/amterp/rad.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "1" if OS.linux? && Hardware::CPU.arm?
    system "go", "build", *std_go_args(ldflags: "-s -w")
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"radls"), "./radls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rad --version")
    (testpath/"test").write <<~SHELL
      #!/usr/bin/env rad
      args:
        times int = 1
      for _ in range(times):
        print("Hello, Homebrew!")
    SHELL
    chmod "+x", testpath/"test"
    assert_match "Hello, Homebrew!\nHello, Homebrew!", shell_output("#{testpath}/test 2")
    assert_match "Spinning up Rad LSP server", shell_output("#{bin}/radls 2>&1", 1)
  end
end
