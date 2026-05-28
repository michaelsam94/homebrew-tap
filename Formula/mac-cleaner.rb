class MacCleaner < Formula
  include Language::Python::Virtualenv

  desc "Aggressive macOS cache cleaner CLI"
  homepage "https://github.com/michaelsam94/mac_cleaner"
  url "https://github.com/michaelsam94/mac_cleaner/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "688e6e82ca8f01adec2bd68680ce1858c2c1efed299acee0257eb92f0f1a7c1e"
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
