class Phockup < Formula
  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.5.19.tar.gz"
  sha256 "dd9a7527ad8f96a9ad0756eac46180f4404572e484307b2f47112a1d5d595138"

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
