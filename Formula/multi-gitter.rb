# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.49.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.49.0/multi-gitter_0.49.0_Darwin_ARM64.tar.gz"
      sha256 "982d519b8d529f7815b8a8f59293674747ae2fe70d5a3cbd3babeade691fff87"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.49.0/multi-gitter_0.49.0_Darwin_x86_64.tar.gz"
      sha256 "78f1686f12eecc303bfb62a3febe1af11fc260e4774d67eefdea1099d8a879fb"

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
      url "https://github.com/lindell/multi-gitter/releases/download/v0.49.0/multi-gitter_0.49.0_Linux_ARM.tar.gz"
      sha256 "d283e21fb80a64821d0be6ea4a4b47fbf68a0bf868b871c0063418835dc589be"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.49.0/multi-gitter_0.49.0_Linux_x86_64.tar.gz"
      sha256 "bd609ece59aeb056f323bf576d6b30455343f3f969fdafce54b8142b677ee7fe"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/multi-gitter/releases/download/v0.49.0/multi-gitter_0.49.0_Linux_ARM64.tar.gz"
      sha256 "8c644ec8df8bd450aafb32620babbb4bd90c755724b30fe1a240151e82ccd518"

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
