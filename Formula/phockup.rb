class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.6.5.tar.gz"
  sha256 "e11a86b25cfafcd13e2909b7553844130ce7a8a3f8362ebd6a5ce07d361fb5ce"

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
