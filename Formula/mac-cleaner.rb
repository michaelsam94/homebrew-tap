class MacCleaner < Formula
  include Language::Python::Virtualenv

  desc "Aggressive macOS cache cleaner CLI"
  homepage "https://github.com/michaelsam94/mac_cleaner"
  url "https://github.com/michaelsam94/mac_cleaner/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4f1868bc3cc9883e91b29994440fb3848efde43150864705ef836878ebe10d02"
  license "MIT"
  head "https://github.com/michaelsam94/mac_cleaner.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "user-caches", shell_output("#{bin}/mac-cleaner categories")
  end
end
