class MacCleaner < Formula
  include Language::Python::Virtualenv

  desc "Aggressive macOS cache cleaner CLI"
  homepage "https://github.com/michaelsam94/mac_cleaner"
  url "https://github.com/michaelsam94/mac_cleaner/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "a48dcb05b4b974fcbc7eaab87732baa45078f5e282efc388b9e8def399f03f41"
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
