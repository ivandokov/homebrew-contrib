class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.3.2.tar.gz"
  sha256 "d528699255abd246553bf2ed79f34dda1b650f0dd604bb80422c1f1b1e59829c"

  depends_on "exiftool"
  depends_on "python3"

  def install
    bin.install "phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
