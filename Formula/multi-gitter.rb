# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.51.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.51.0/multi-gitter_0.51.0_Darwin_ARM64.tar.gz"
      sha256 "f8a35dde5e4d6e1d569eb032020e979005fd3cf1f66d4ecedcc03c16403e5f48"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.51.0/multi-gitter_0.51.0_Darwin_x86_64.tar.gz"
      sha256 "8ed738c03738229c3da0baedccdbeee734cc004b9e0d382178ddbc06f398edf5"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.51.0/multi-gitter_0.51.0_Linux_x86_64.tar.gz"
      sha256 "f4cb926879c4ef1e640df6902550faa506b390e158fb06cfb603695b2fd9d09e"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.51.0/multi-gitter_0.51.0_Linux_ARM.tar.gz"
      sha256 "75034b6dbdb85181dc556ab107f4f099329ad1ea9f772aeed828a66010d64ee7"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.51.0/multi-gitter_0.51.0_Linux_ARM64.tar.gz"
      sha256 "cf3a2d515b030d96ed3a1987fe91fc2179cb4d062bbfa18d0f27bdb75d0eb494"

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
