# coding: utf-8
class Uemacs < Formula
  desc "MicroEMACS modified by Linus Torvalds"
  homepage "https://github.com/torvalds/uemacs"
  url "https://github.com/torvalds/uemacs.git"
  version "4.0.15"

  depends_on "cmake" => :build
  depends_on "gcc"   => :build

  def install
    system "make"
    bin.install "em"
  end

  test do
    assert_equal "uEmacs/Pk version 4.0.15", shell_output("#{bin}/em --version").strip
  end
end
