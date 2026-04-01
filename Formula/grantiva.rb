class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.2/grantiva-0.8.2-macos.tar.gz"
  sha256 "73eab47661872be0fac856764f23b3ac05952aef561674915c28155056de6457"
  version "0.8.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
