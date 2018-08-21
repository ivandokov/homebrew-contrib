class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.5.5.tar.gz"
  sha256 "e435d64246c47e73af5b925a3e07931225e500dba7dbb3d581d89279eb28e25d"

  depends_on "exiftool"
  depends_on "python3"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
