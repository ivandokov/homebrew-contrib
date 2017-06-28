class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.2.1.tar.gz"
  sha256 "71d48ea1e1b197dc3462ba53edfa85b2e5b25a5b5f9ea614628f4aa7d4995ec3"

  depends_on "exiftool"
  depends_on "python3"

  def install
    bin.install "phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
