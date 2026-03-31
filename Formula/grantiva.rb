class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.7.5/grantiva-0.7.5-macos.tar.gz"
  sha256 "2fe880d08bd87c117fa6dad1dafbaf3b9912463befc9ae052111383942282235"
  version "0.7.5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
