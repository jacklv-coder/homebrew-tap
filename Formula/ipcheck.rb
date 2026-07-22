class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.8.1/ipcheck-0.8.1.tar.gz"
  sha256 "ef7497e58304a5c46cd147357a6bc3e58f9367f912055a8e53007bd1d64bddfd"
  license "MIT"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
