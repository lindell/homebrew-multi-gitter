# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.38.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.38.0/multi-gitter_0.38.0_Darwin_ARM64.tar.gz"
      sha256 "1b6dbfd0860c5523bf2c471d917c5c8aaaa7fe623daa5f0adec9ce4fdf5b108e"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.38.0/multi-gitter_0.38.0_Darwin_x86_64.tar.gz"
      sha256 "bc27a04dd2eed2d2361ffb056d11b645cf6c71b8c6bad01da22d606db9b1991f"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.38.0/multi-gitter_0.38.0_Linux_ARMv6.tar.gz"
      sha256 "c97f39ca9eac930eddf8ecca586dcc985566d2b2320fdc5b5efd9988f3fe983b"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.38.0/multi-gitter_0.38.0_Linux_ARM64.tar.gz"
      sha256 "7bdebf1718e18d83dd1e7f0769f764728d016454bf903e3fd9ed75943259f667"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.38.0/multi-gitter_0.38.0_Linux_x86_64.tar.gz"
      sha256 "99eb2d7b7b607ca9b74e0cd85fbdc7daf023bcacae605326704268096577501e"

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
