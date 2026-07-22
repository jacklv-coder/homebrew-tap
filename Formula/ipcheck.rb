class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.8.0/ipcheck-0.8.0.tar.gz"
  sha256 "0b0efb9677b8e81bb14617edd2a4b589c3d76d5371fab72c97798dff5a63266b"
  license "MIT"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
