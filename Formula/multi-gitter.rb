# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.36.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.36.0/multi-gitter_0.36.0_Darwin_x86_64.tar.gz"
      sha256 "b88872de254337895acf8e6698c8bcfe82b21b9a967cc3ce2265836de38bea54"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.36.0/multi-gitter_0.36.0_Darwin_ARM64.tar.gz"
      sha256 "6f0e36c7bfa7054e58ee1f2f7cc5822fecd18b1fa94019db6ee81604b24ae805"

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
      url "https://github.com/lindell/multi-gitter/releases/download/v0.36.0/multi-gitter_0.36.0_Linux_x86_64.tar.gz"
      sha256 "dcb9a9c176b224052e835805d841d91f8d958ee481d52ecf22ea5b08399afe16"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.36.0/multi-gitter_0.36.0_Linux_ARMv6.tar.gz"
      sha256 "937b4dad5c577f60c1a8201134a8aaccf8d0ea47c2fe28b2e0d26f87ef767aba"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.36.0/multi-gitter_0.36.0_Linux_ARM64.tar.gz"
      sha256 "32622b212c274cbfb9c75447507c7a29bce9e21364f5d89e79b0d0a1d56baaa1"

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
