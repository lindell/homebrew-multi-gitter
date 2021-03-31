# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.24.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.1/multi-gitter_0.24.1_Darwin_x86_64.tar.gz"
    sha256 "72ba79cea17f2397ad2b1dd5c94837bebed631765b764edea2df0ee39685c03a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.1/multi-gitter_0.24.1_Darwin_ARM64.tar.gz"
    sha256 "cb5af9929889c4e4e133b62dfee70cc9330ced357d5a6c0b95d785b741d500d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.1/multi-gitter_0.24.1_Linux_x86_64.tar.gz"
    sha256 "d57fdae1e54222c8650e5298d53f7ea942990fe794ea55dc2ff7a83b2a4efdab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.1/multi-gitter_0.24.1_Linux_ARMv6.tar.gz"
    sha256 "a09a423b8e7187f4c7e84d2b3916f305403bd512ccf5ccf6270389fbc979ab25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.1/multi-gitter_0.24.1_Linux_ARM64.tar.gz"
    sha256 "fea7447f957a67d1dd8b56ee3369176b92c98ab5bcf67ba39246b5eb8e3601c9"
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
