# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.25.6"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.25.6/multi-gitter_0.25.6_Darwin_x86_64.tar.gz"
      sha256 "81c191f0f8b73b66d8717481fff8caa1261d1618d04f3578ac1b734d70cd1654"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.25.6/multi-gitter_0.25.6_Darwin_ARM64.tar.gz"
      sha256 "e2915cfddae7ad0732a035234122ec2af26e20811ab42628e0bbabd0c893d4fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.25.6/multi-gitter_0.25.6_Linux_x86_64.tar.gz"
      sha256 "882efa290d66d22c80f6c15fa47d19757aff95bef8db685f72f02a1311e2b344"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.25.6/multi-gitter_0.25.6_Linux_ARMv6.tar.gz"
      sha256 "e2688316e27bdb4299643d1f5e3200d7883dc5b2c2de65787ca53fb67553f4fe"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.25.6/multi-gitter_0.25.6_Linux_ARM64.tar.gz"
      sha256 "babdd8802664f365fb37cca6e012f3a3bca09433c7f357a9a46ce046a958def6"
    end
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
