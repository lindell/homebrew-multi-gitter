# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.42.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.42.2/multi-gitter_0.42.2_Darwin_x86_64.tar.gz"
      sha256 "8fc0b2834b13b5ab05d626082b31b282bd3fe47a15968153bedc57e4e045ee2d"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.42.2/multi-gitter_0.42.2_Darwin_ARM64.tar.gz"
      sha256 "c374eb6bce93f74e5313462c08989e6e7b20622802f99611507234d11d757aa5"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.42.2/multi-gitter_0.42.2_Linux_ARM64.tar.gz"
      sha256 "b939e1193c5c80c58224ad041b47a8a51eb59ce48533a8cfaa57d24936f11529"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.42.2/multi-gitter_0.42.2_Linux_ARMv6.tar.gz"
      sha256 "ff0aa3b6fc3877b02bcfa48cb3cde638f2063b891c99caee89be60235676c91f"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.42.2/multi-gitter_0.42.2_Linux_x86_64.tar.gz"
      sha256 "d56edd43e66df1f5e93e901803f8a231edab6a46532f3b2728a870654d6e142d"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
  end

  test do
    system "#{bin}/multi-gitter", "version"
  end
end
