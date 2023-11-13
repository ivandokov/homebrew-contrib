class Phockup < Formula
  include Language::Python::Virtualenv

  desc "Organize photos and videos in folders by year, month and day."
  homepage "https://github.com/ivandokov/phockup"
  url "https://github.com/ivandokov/phockup/archive/1.11.2.tar.gz"
  sha256 "5fe012360acba4f92f275129df6b77b6f6ec2ec1cf957dca7dc3b42265477b39"

  depends_on "exiftool"
  depends_on "python3"

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
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
