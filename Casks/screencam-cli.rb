cask "screencam-cli" do
  version "1.0.0"
  sha256 "007d4671b07567ad91536113296a7133da33c5d8c4e9dc85ff14f4e4a2c8410a"

  url "https://download.thescreen.cam/cli/releases/1.0.0/screencam-cli-1.0.0-macos-arm64.zip"
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
