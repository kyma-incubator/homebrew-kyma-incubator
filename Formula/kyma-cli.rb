class KymaCli < Formula
  desc "Kyma command-line interface"
  homepage "https://kyma-project.io"
  url "https://github.com/kyma-project/cli.git",
    :tag => "1.2.0",
    :revision => "db6d31bf0083e50f80d0512f48641344d54346ad"
  head "https://github.com/kyma-project/cli.git"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/kyma-project/cli/"
    bin_path.install Dir["*"]

    cd bin_path do
      system "make resolve"
      system "make build"
      bin.install "bin/kyma-darwin"
      mv bin/"kyma-darwin", bin/"kyma"
    end

    test do
      output = shell_output("#{bin}/kyma --help")
      assert_match "controls a Kyma cluster.", output
    end
  end

  def caveats
    <<~EOS
      Happy Kyma-ing! Type \033[1;31mkyma help\033[0m to start
      EOS
  end
end
