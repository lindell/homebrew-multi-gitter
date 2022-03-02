# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.40.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.40.1/multi-gitter_0.40.1_Darwin_x86_64.tar.gz"
      sha256 "3762511f5c36902f912144611094fb1b4aefabb7c853cd5b93cffa46f11ae736"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.40.1/multi-gitter_0.40.1_Darwin_ARM64.tar.gz"
      sha256 "ba8723699232bbfe28ebf673ea56692631716f2efcd528adaa89a698f321678a"

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
      url "https://github.com/lindell/multi-gitter/releases/download/v0.40.1/multi-gitter_0.40.1_Linux_ARMv6.tar.gz"
      sha256 "49dd7db1c5758cb44e8436ef7b9dcc53f25de1fe400f2ca769f2f2f1b4bd7a50"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.40.1/multi-gitter_0.40.1_Linux_ARM64.tar.gz"
      sha256 "bf3ff6e0063d0368d6cc1008d99158d9c1e134fd22e45d9c5de22dad05394376"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.40.1/multi-gitter_0.40.1_Linux_x86_64.tar.gz"
      sha256 "0ce039b43f522122b0e39bee3b4ecada0f60600f3af8827028d40fc5ccb72da6"

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
