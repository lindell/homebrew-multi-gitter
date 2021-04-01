# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.24.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.2/multi-gitter_0.24.2_Darwin_x86_64.tar.gz"
    sha256 "629e63c2220d8002ec76ff860eb79439e043286bd6682fba24e196fb80fdad11"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.2/multi-gitter_0.24.2_Darwin_ARM64.tar.gz"
    sha256 "8257a727d2a6e62e66974910bee31d1f6a7ab69d23a20999e1f9c9129ec6fa73"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.2/multi-gitter_0.24.2_Linux_x86_64.tar.gz"
    sha256 "a2a9a26296ce049207d5059ea7cf5cb0e1fdf53fb77a6c0de853eb5f0baf4685"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.2/multi-gitter_0.24.2_Linux_ARMv6.tar.gz"
    sha256 "f6befd0a0d36cb3e86a4a4de631cdc4e385c53525b1c5529c17b7dde8877ea4b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.24.2/multi-gitter_0.24.2_Linux_ARM64.tar.gz"
    sha256 "aabdb739de88d1c277eb24ebb573945ec43048140f1f79c14cf34c56c940bfa6"
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
