class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.5.0.tar.gz"
  sha256 "06030e31b6b9d42245ac7e5efe19ab08a9e9c58680975b809fec4a698fa27c73"

  depends_on "exiftool"
  depends_on "python3"

  def install
    bin.install "phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
