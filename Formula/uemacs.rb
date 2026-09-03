# coding: utf-8
class Uemacs < Formula
  desc "uEmacs incorporating Linus Torvalds' improvements"
  homepage "https://github.com/torvalds/uemacs"
  url "https://github.com/torvalds/uemacs.git"
  version "4.0.15"

  depends_on "gcc" => :build
  depends_on "hunspell"

  # macOS compatibility fixes:
  # - Add stdbool.h include for bool type in display.c
  # - Replace st_mtim with st_mtimespec for macOS stat structure
  # - Define OLCUC and XCASE termios flags missing on macOS
  patch do
    url "https://raw.githubusercontent.com/daviderestivo/homebrew-uemacs/dev/patches/macos-compat.patch"
    sha256 "a1cd0f59c2cda7180f674ab6b8150f0f25361285c80f7a720c81e845599037b7"
  end

  def install
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["hunspell"].opt_lib/"pkgconfig"
    ENV["CC"] = Formula["gcc"].opt_bin/"gcc"

    system "make"
    bin.install "em"
  end

  test do
    assert_equal "uEmacs/Pk version 4.0.15", shell_output("#{bin}/em --version").strip
  end
end
