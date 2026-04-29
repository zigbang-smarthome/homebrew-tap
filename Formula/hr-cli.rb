class HrCli < Formula
  desc "CLI for HR systems — Greeting HR (app.greetinghr.com) and beyond"
  homepage "https://github.com/zigbang-smarthome/hr-cli"
  version "26.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-arm64.tar.gz"
      sha256 "e8a413317d795b410bc73fffef37138790bb9cbff1adfacaea12e8c6282c13d2"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-amd64.tar.gz"
      sha256 "0ecfea2591ebe16b98c61228c987ca83d2666dd31fb552e8fe19a88cd78cf64c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-arm64.tar.gz"
      sha256 "a47381211c2c2d2bacdbcd31983f488ca7004e785c47709806171eb3eb06f18a"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-amd64.tar.gz"
      sha256 "558d5629457b893dd85b3f76a9c899366843cf028e2f74acb1c2be5e4e110200"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    system "#{bin}/hr", "--help"
  end
end
