# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Temple < Formula
  desc "Sick of sed? Prosaic about perl? Use temple to substitute your variables!"
  homepage "https://github.com/docwhat/temple"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/docwhat/temple/releases/download/v1.0.0/temple_1.0.0_macos_arm64.tar.gz"
      sha256 "88365ad3cd8ba5beeb12c379a5e3e9d65c18cccbaa0ac30619f01a8af6d53b50"

      def install
        bin.install "temple"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/docwhat/temple/releases/download/v1.0.0/temple_1.0.0_macos_amd64.tar.gz"
      sha256 "bad9ff4583923c0adf1298d9c1f1c72e7bc240e5f346d169bd2c77e73f0b5ad1"

      def install
        bin.install "temple"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/docwhat/temple/releases/download/v1.0.0/temple_1.0.0_linux_arm64.tar.gz"
      sha256 "dabb1b431d11b4272a099c626a6def32a4b9186d4b422ba9d0af86f9ff894791"

      def install
        bin.install "temple"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/docwhat/temple/releases/download/v1.0.0/temple_1.0.0_linux_armv6.tar.gz"
      sha256 "5666e49a60e5299316f903ded5228094f247109ed63fcfe1e5aadb43a319ddde"

      def install
        bin.install "temple"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/docwhat/temple/releases/download/v1.0.0/temple_1.0.0_linux_amd64.tar.gz"
      sha256 "8cdf58a95aff989504f37331ae702ccdcfbc3f5d91591a9501e84bbb34fd4cc3"

      def install
        bin.install "temple"
      end
    end
  end

  test do
    system "#{bin}/temple --version"
    system "#{bin}/temple /etc/hosts"
  end
end
