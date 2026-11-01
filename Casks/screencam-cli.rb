cask "screencam-cli" do
  version "1.21.0"
  sha256 "40152549b6dfd73b14002a3d1cd946ce8b3796c3f077a8c7a3009b0fe456f189"

  url "https://download.thescreen.cam/cli/releases/1.21.0/screencam-cli-1.21.0-macos-arm64.zip"
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
