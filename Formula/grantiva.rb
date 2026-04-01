class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.1/grantiva-0.8.1-macos.tar.gz"
  sha256 "abb10181dcc2f260cbdcfe519c4eb5a87d320ccd2859ded737a4f2f1039920de"
  version "0.8.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
