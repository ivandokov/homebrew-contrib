class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.3.1.tar.gz"
  sha256 "72c87df1fc8310cf1035cb0e0c99f9712664cfb19b4cc83699812a96e953ac0e"

  depends_on "exiftool"
  depends_on "python3"

  def install
    bin.install "phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
