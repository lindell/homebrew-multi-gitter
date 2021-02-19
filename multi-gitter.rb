# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MultiGitter < Formula
  desc "Update multiple repositories in bulk"
  homepage "https://github.com/lindell/multi-gitter"
  version "0.20.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.20.3/multi-gitter_0.20.3_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "a28b7c3c5a3d2a04781b08a861a1cc4f4c76da5dead584a7a57592f6bb361414"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.20.3/multi-gitter_0.20.3_Darwin_ARM64.tar.gz", :using => CurlDownloadStrategy
    sha256 "c70a121dc611df15c0c1b3d51d905322fae35fb3ea8067eac2fedd17edfba10c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.20.3/multi-gitter_0.20.3_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "9d205aa60f0de73f9b0f67638bd6543c7466622788313e6d6ace9b4a28e61edb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.20.3/multi-gitter_0.20.3_Linux_ARMv6.tar.gz", :using => CurlDownloadStrategy
    sha256 "0583e3f8ed3729746e055ee45c5a66354fad95fa07f16c18ed781a42ce505311"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lindell/multi-gitter/releases/download/v0.20.3/multi-gitter_0.20.3_Linux_ARM64.tar.gz", :using => CurlDownloadStrategy
    sha256 "bdc451c08e609306b7ce5fcf9c85029276bde75218fda5bcbd01066139518c95"
  end

  def install
    bin.install "multi-gitter"
  end

  test do
    system "#{bin}/multi-gitter version"
  end
end
