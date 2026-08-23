cask "screencam-cli" do
  version "1.0.1"
  sha256 "112b1dfe04ec8e506bb932dbebfb4d110bfb4bab20e014c82e5f44af96d56e51"

  url "https://download.thescreen.cam/cli/releases/1.0.1/screencam-cli-1.0.1-macos-arm64.zip"
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
