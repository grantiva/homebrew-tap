class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.0/grantiva-0.8.0-macos.tar.gz"
  sha256 "4125894105ac2dab6e5f1e731f08429768709655b3c67aa58d8d3c6dd2255350"
  version "0.8.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
