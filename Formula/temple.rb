# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Temple < Formula
  desc "Sick of sed? Prosaic about perl? Use temple to substitute your variables!"
  homepage "https://github.com/docwhat/temple"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/docwhat/temple/releases/download/v0.4.0/temple_0.4.0_macos_arm64.tar.gz"
      sha256 "8ad5bc72d8f46b9eab5d6c6768f8482ef7e14470c27695b489a2bf172a15819b"

      def install
        bin.install "template"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/docwhat/temple/releases/download/v0.4.0/temple_0.4.0_macos_amd64.tar.gz"
      sha256 "b27b3d374b2fac0f33d6d25f464e6af2594fceb3d828cc82c67fea23109d5b9e"

      def install
        bin.install "template"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/docwhat/temple/releases/download/v0.4.0/temple_0.4.0_linux_arm64.tar.gz"
      sha256 "e3bbe77cb8465017b7a53386bba6c06552235c146246f9339815d849b08c1406"

      def install
        bin.install "template"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/docwhat/temple/releases/download/v0.4.0/temple_0.4.0_linux_armv6.tar.gz"
      sha256 "b124a0b221040a362392bdf528b8ace8793802525591069b76f0d106de6155d9"

      def install
        bin.install "template"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/docwhat/temple/releases/download/v0.4.0/temple_0.4.0_linux_amd64.tar.gz"
      sha256 "3ab0b6137be92e752412c16e186f6b84022dd5fe4e4e68f3d1440c26e22da4f8"

      def install
        bin.install "template"
      end
    end
  end

  test do
    system "#{bin}/template --version"
    system "#{bin}/template /etc/hosts"
  end
end
