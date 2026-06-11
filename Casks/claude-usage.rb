cask "claude-usage" do
  version "0.1.0"
  sha256 "e437646de54235ad3f023d0b564ad8e1fd152879faf347dfb1bfdebfbe45e429"

  url "https://github.com/Bread-bang/claude-usage/releases/download/v#{version}/ClaudeUsage-#{version}.zip"
  name "Claude Usage"
  desc "Menu bar app showing Claude Code usage without launching Claude Code"
  homepage "https://github.com/Bread-bang/claude-usage"

  depends_on macos: :ventura

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.github.bread-bang.claude-usage.plist",
  ]
end
