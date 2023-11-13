class Phockup < Formula
  include Language::Python::Virtualenv

  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.11.0.tar.gz"
  sha256 "4aa378e312d18f17b59f64768c5c1a2b1d28041f4ef3c13d9cde67730d3ca34d"

  depends_on "exiftool"
  depends_on "python3"

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "4aa378e312d18f17b59f64768c5c1a2b1d28041f4ef3c13d9cde67730d3ca34d"
  end

  def python3
    which("python3")
  end

  def install
    venv = virtualenv_create(libexec, python3)
    venv.pip_install resources

    prefix.install Dir["*"]
    bin.install_symlink prefix/"phockup.py" => "phockup"
  end

  test do
    assert_match "phockup", shell_output("#{bin}/phockup", 2)
  end
end
