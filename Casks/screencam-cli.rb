cask "screencam-cli" do
  version "1.12.0"
  sha256 "d76b2bbcfbb95a8598b9811e0a8197df6ad657aa045c967bd114b9538401bba3"

  url "https://download.thescreen.cam/cli/releases/1.12.0/screencam-cli-1.12.0-macos-arm64.zip"
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
