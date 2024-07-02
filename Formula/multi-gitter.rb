# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.52.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/lindell/multi-gitter/releases/download/v0.52.1/multi-gitter_0.52.1_Darwin_x86_64.tar.gz"
      sha256 "34614eadbaccd0a4526f2a03eebf2c54570562ce3206f25125193377e91f91cf"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
    on_arm do
      url "https://github.com/lindell/multi-gitter/releases/download/v0.52.1/multi-gitter_0.52.1_Darwin_ARM64.tar.gz"
      sha256 "cceb18e2ae2311bbb186cfb45d722384389cf1b480608b0af773d4709e6e3cdb"

      def install
        bin.install "multi-gitter"
        bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
        zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
        fish_completion.install "completions/multi-gitter.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lindell/multi-gitter/releases/download/v0.52.1/multi-gitter_0.52.1_Linux_x86_64.tar.gz"
        sha256 "a49a4dc2feed17d7207549d2680652849cefb80de06334bdb8acdb32f2cba3ab"

        def install
          bin.install "multi-gitter"
          bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
          zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
          fish_completion.install "completions/multi-gitter.fish"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/lindell/multi-gitter/releases/download/v0.52.1/multi-gitter_0.52.1_Linux_ARM.tar.gz"
        sha256 "bd7f19df68f56ef9152a9ed09746d487a2be6d3127ccfdc055d3f82a5540a234"

        def install
          bin.install "multi-gitter"
          bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
          zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
          fish_completion.install "completions/multi-gitter.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lindell/multi-gitter/releases/download/v0.52.1/multi-gitter_0.52.1_Linux_ARM64.tar.gz"
        sha256 "78905efaa7a170c24cfb6cf328a6672324247f253355644256a527ec146e1fca"

        def install
          bin.install "multi-gitter"
          bash_completion.install "completions/multi-gitter.bash" => "multi-gitter"
          zsh_completion.install "completions/multi-gitter.zsh" => "_multi-gitter"
          fish_completion.install "completions/multi-gitter.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/multi-gitter", "version"
  end
end
