class HrCli < Formula
  desc "CLI for HR systems — Greeting HR (app.greetinghr.com) and beyond"
  homepage "https://github.com/zigbang-smarthome/hr-cli"
  version "26.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-arm64.tar.gz"
      sha256 "2811c415a47ebed00c1384e880d14c23c6c9494c86aba876edc12f605c49e7cc"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-amd64.tar.gz"
      sha256 "8cd63238abfda7c520909c0769b024e50534b849c367cc0d8d09ed4fb0647351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-arm64.tar.gz"
      sha256 "61f182c1b1f5d39a0d6b01af7bc912f9cdfb838afe20978e3a46fc48f78f534e"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-amd64.tar.gz"
      sha256 "a64abf0d35f718019c6ee9be70fee45f8e6375145359660949f4e286af38152c"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    system "#{bin}/hr", "--help"
  end
end
