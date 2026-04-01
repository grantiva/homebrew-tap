class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.5/grantiva-0.8.5-macos.tar.gz"
  sha256 "29658d74e06179f86131cc41025bcf83a8fb48b6a70ad914675b5f97bf29be24"
  version "0.8.5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
