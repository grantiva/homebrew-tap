class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.7.4/grantiva-0.7.4-macos.tar.gz"
  sha256 "a6a14a318c3679b5345ac723ffaaa35307e7e780fee1ba489c73c75c03c4e47f"
  version "0.7.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
