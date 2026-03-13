class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.6.0/grantiva-0.6.0-macos.tar.gz"
  sha256 "af1e3abc1b183e57376de4f4abdc2f42e83423d1a7004e1de99f4d0ec24282a9"
  version "0.6.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end

