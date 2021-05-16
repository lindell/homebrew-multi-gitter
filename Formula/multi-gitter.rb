# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.25.4"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.25.4/multi-gitter_0.25.4_Darwin_x86_64.tar.gz"
    sha256 "d757062d091d1621aad850e6d5d4d79377df648fedb630e63fe5ba3f92ae3db0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.25.4/multi-gitter_0.25.4_Darwin_ARM64.tar.gz"
    sha256 "cbd97e55f17c1f85a8861481d655807e96c0a52d10e9b0a8cbaf55303af99899"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.25.4/multi-gitter_0.25.4_Linux_x86_64.tar.gz"
    sha256 "ff456ad9c47f78adec22c93604d29ec48215c9e7e6dc6ed8066a068bcda944c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.25.4/multi-gitter_0.25.4_Linux_ARMv6.tar.gz"
    sha256 "00c84cca2fd4437ee26d73e658c6db239e1f90085e721234c9cd263fcadbd910"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.25.4/multi-gitter_0.25.4_Linux_ARM64.tar.gz"
    sha256 "4ccb83d9917587104779a729e1d6bbafd1d6beb17a55f1fa306b3050d65f0008"
  end

  def install
    bin.install "multi-gitter"
    bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
    zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
    fish_completion.install "completions/multi-gitter.fish"
  end

  test do
    system "#{bin}/multi-gitter", "version"
  end
end
