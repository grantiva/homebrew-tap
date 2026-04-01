class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v0.8.7/grantiva-v0.8.7-macos.tar.gz"
  sha256 "178847df39c245db8647bddd5bbea0ef09a4e17172d5ba0d11c60458ce930f9f"
  version "v0.8.7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
