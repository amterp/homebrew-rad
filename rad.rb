class Rad < Formula
  desc "Modern CLI scripts made easy"
  homepage "https://amterp.dev/rad/"
  url "https://github.com/amterp/rad/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "7d2215d596fdb6d380761411bf868b7cd451a436efa6dd2153265a7b981e14d2"
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
