class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.5.9.tar.gz"
  sha256 "94d79235ca11d1398a5437508d7617f3de860a4e3c82f63fbf769ca9516eb53c"

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
