class HrCli < Formula
  desc "CLI for HR systems — Greeting HR (app.greetinghr.com) and beyond"
  homepage "https://github.com/zigbang-smarthome/hr-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-arm64.tar.gz"
      sha256 "1bd7e77af1e57728e2895ceed174ba6b6a7a0318863ad8f197a29860cfcdf81b"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-amd64.tar.gz"
      sha256 "941adcba6336240616523b1c75d4a7aeb80fce1f3b239b3a5cb3400e2ad5eb47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-arm64.tar.gz"
      sha256 "51894d1ce86ad9a5f0ea4455ed609beee915c5016d20e4a575abbfb081c1ef6f"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-amd64.tar.gz"
      sha256 "1af2ed9e01e19fb7bd0bfe6e38b26a86c596aa78426fe1090ec9e4050d771fe6"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    system "#{bin}/hr", "--help"
  end
end
