class EacCli < Formula
  desc "CLI for eac.zigbang.in (E-Accounting / UniDocu)"
  homepage "https://github.com/zigbang-smarthome/eac-cli"
  version "26.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-arm64.tar.gz"
      sha256 "576e59c84673dc55bc37aae3f5f9cf66afa5b636b8400943d7b14dfd51edd35c"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-x64.tar.gz"
      sha256 "8e50d058400f1bf895a4bd6bae50340d7962cdfc23708ff0ff07557bc693a7fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-arm64.tar.gz"
      sha256 "5402dd1f6272e8ab337a7fc78f949cc2a1ce04ae118ee5a3060394ef9180b3aa"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-x64.tar.gz"
      sha256 "85ddebfd4c1812426d8def57c40e4ad1915e62ef7605091c5d78dfe2739efbd3"
    end
  end

  def install
    bin.install "eac"
  end

  test do
    system "#{bin}/eac", "--help"
  end
end
