cask "screencam-cli" do
  version "1.0.23"
  sha256 "758b3460230c9a78e254eb4fa91fcb394cce120c7ff0acbae5921546c761a764"

  url "https://download.thescreen.cam/cli/releases/1.0.23/screencam-cli-1.0.23-macos-arm64.zip"
  name "ScreenCam CLI"
  desc "Native command-line client for ScreenCam recording and processing"
  homepage "https://thescreen.cam"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  binary "ScreenCamCLI.app/Contents/MacOS/screencam"

  caveats <<~EOS
    ScreenCam CLI requires the compatible ScreenCam app from the Mac App Store.
    Recording, processing, permissions, and Pro entitlement remain App-owned.
  EOS
end
