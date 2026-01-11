# typed: false
# frozen_string_literal: true

class He < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/hx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.1/he-macos-aarch64.tar.gz"
      sha256 "08fc627c0196a00d54d9c51cb7f4fab0f7237f4eb2f339ec03bc2da8e4d38358"
    end
    on_intel do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.1/he-macos-x86_64.tar.gz"
      sha256 "a49493e8635edb2d7677682f2720b74b7b552b824ec4e87d1efe9d963580c19e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.1/he-linux-aarch64.tar.gz"
      sha256 "e5fc8876426bb6b27438d44ede3d214f64753302b485d93429c5999b7df7e2e2"
    end
    on_intel do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.1/he-linux-x86_64.tar.gz"
      sha256 "6655013b1291073c6e8462fdf7d54787cc74df838e9c14d2a55389a323ec37d5"
    end
  end

  def install
    bin.install "he"
    bin.install "bx"
  end

  test do
    assert_match "he", shell_output("#{bin}/he --version")
  end
end
