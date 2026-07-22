class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.5.0/ipcheck-0.5.0.tar.gz"
  sha256 "cfcf5369bdd9d6510ba37491320a5a61d749eddcdf6257a715f52ce4c324feb3"
  license "Apache-2.0"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
