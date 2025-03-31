class IcsCli < Formula
  desc "Command-line interface for managing Ingenuity Cloud Services resources"
  homepage "https://github.com/UK2Group/ics-cli"
  license "MIT"
  
  # Use latest release
  version "1.0.0" # Update this with your actual version number
  
  # Architecture-specific binaries
  if Hardware::CPU.arm?
    url "https://github.com/UK2Group/ics-cli/releases/download/v#{version}/ics-cli-macos-arm64"
    sha256 "467791582bb4d219f153abf5c85b30a2a0cc0ceb7bf56ee3f309ead7368d0524" # You'll need to replace this
  else
    url "https://github.com/UK2Group/ics-cli/releases/download/v#{version}/ics-cli-macos-amd64"
    sha256 "317206eac15a79130df3fd5411ceb5ece3e5a01acff9e12a174eef6561c0b70c" # You'll need to replace this
  end
  
  def install
    # The downloaded file is already an executable, so we just need to rename it
    if Hardware::CPU.arm?
      bin.install "ics-cli-macos-arm64" => "ics-cli"
    else
      bin.install "ics-cli-macos-amd64" => "ics-cli"
    end
  end
  
  test do
    assert_match "Ingenuity Cloud Services", shell_output("#{bin}/ics-cli --help")
  end
end