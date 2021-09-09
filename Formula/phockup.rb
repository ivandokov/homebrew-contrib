class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.7.0.tar.gz"
  sha256 "aa68539eab93ebc5ef16cd2703e9d0749b588e1f74c4b6f1573d5049ab92f4d9"

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
