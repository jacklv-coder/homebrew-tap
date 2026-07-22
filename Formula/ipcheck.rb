class Ipcheck < Formula
  desc "Diagnose proxy and network paths used by Codex and OpenAI"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.2.0/ipcheck-0.2.0.tar.gz"
  sha256 "54b6a056ab63cfd635efc77102a3c28cd909b80e3f8fc581cdcf7422b2c93596"
  license "Apache-2.0"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
  end
end
