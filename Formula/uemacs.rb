# coding: utf-8
class Uemacs < Formula
  desc "uEmacs incorporating Linus Torvalds' improvements"
  homepage "https://github.com/torvalds/uemacs"
  url "https://github.com/torvalds/uemacs.git"
  version "4.0.15"

  depends_on "gcc" => :build
  depends_on "hunspell"

  def install
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["hunspell"].opt_lib/"pkgconfig"
    ENV["CC"] = Formula["gcc"].opt_bin/"gcc"
    if OS.mac?
      system "make", "CFLAGS=-O2 -Wall -Wstrict-prototypes -include stdbool.h",
                     "DEFINES=-DPOSIX -D_GNU_SOURCE -Dst_mtim=st_mtimespec"
    else
      system "make"
    end
    bin.install "em"
  end

  test do
    assert_equal "uEmacs/Pk version 4.0.15", shell_output("#{bin}/em --version").strip
  end
end
