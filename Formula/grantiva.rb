class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v0.8.8/grantiva-v0.8.8-macos.tar.gz"
  sha256 "d5e217411adfa0f75db87e672e230f14b0d0f080e1eb362854a1c97fced99375"
  version "v0.8.8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
