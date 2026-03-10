class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.5.0/grantiva-0.5.0-macos.tar.gz"
  sha256 "94dc9d02b7d9868cf5c66c7ea7f39e8a974ce1323dc3dbc8a22204385056cfea"
  version "0.5.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
