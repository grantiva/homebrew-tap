class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.6/grantiva-0.8.6-macos.tar.gz"
  sha256 "f29102f306930dcc4c12095c80739a6f5e0094c53e4f5288b9637c4dea97a47d"
  version "0.8.6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
