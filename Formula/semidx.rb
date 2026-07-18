class Semidx < Formula
  desc "Self-hosted semantic code search for git repos and documents"
  homepage "https://github.com/lgldsilva/semidx"
  version "0.44.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lgldsilva/semidx/releases/download/v0.44.9/semidx_0.44.9_darwin_arm64.tar.gz"
      sha256 "d91cfd8678f33eaff80f61fa924ca4a36e6560e92093d302406651b8255cc81b"
    end
    on_intel do
      url "https://github.com/lgldsilva/semidx/releases/download/v0.44.9/semidx_0.44.9_darwin_amd64.tar.gz"
      sha256 "4f8f39cd43c701841f40088c1622dbe3154f15a332d5bedd6ad7f6c39d0108ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lgldsilva/semidx/releases/download/v0.44.9/semidx_0.44.9_linux_arm64.tar.gz"
      sha256 "d2b708411fd7a0c05a212fe9947bc2049d7a676c8ee9198e65606c4ff168ae61"
    end
    on_intel do
      url "https://github.com/lgldsilva/semidx/releases/download/v0.44.9/semidx_0.44.9_linux_amd64.tar.gz"
      sha256 "4a540f397a795b0985718731616a60d525afb29f99a7fb57965d4471e5293b09"
    end
  end

  def install
    bin.install "semidx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/semidx --version")
  end
end
