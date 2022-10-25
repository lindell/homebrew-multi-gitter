# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.43.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.43.1/multi-gitter_0.43.1_Darwin_ARM64.tar.gz"
      sha256 "79f2aa2a5f7e9af6cc5cd291ec6f28dd530e700eb4fc9847a45abae58e9ad5ba"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.43.1/multi-gitter_0.43.1_Darwin_x86_64.tar.gz"
      sha256 "3351fa956efc2a062c54ce12a9541f7341298d259365a918dc618c7068cbdec6"

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
      url "https://github.com/lindell/multi-gitter/releases/download/v0.43.1/multi-gitter_0.43.1_Linux_x86_64.tar.gz"
      sha256 "0adaed2f39dd9944b1d0e03e798bce4056694bc7c771317acf452c909c39bebb"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.43.1/multi-gitter_0.43.1_Linux_ARMv6.tar.gz"
      sha256 "ecfb983f1f7d685293a88e15efd65b4e1a907901a723390e565d7ad50e53feb5"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.43.1/multi-gitter_0.43.1_Linux_ARM64.tar.gz"
      sha256 "7908df039ab413e39fb3600bdd4df2d78c553b6235a5d259b636d594743bedba"

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
