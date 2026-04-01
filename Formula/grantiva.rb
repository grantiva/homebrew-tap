class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.3/grantiva-0.8.3-macos.tar.gz"
  sha256 "b25785eea81cd923b2c513f5a12f588450aa33b08e254c4c15b1d6e4b7a2213f"
  version "0.8.3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
