class KymaCli < Formula
  desc "Kyma command-line interface"
  homepage "https://kyma-project.io"
  url "https://github.com/kyma-incubator/kyma-cli.git",
    :tag => "v0.5.1",
    :revision => "0d61b9de00b7b6771178049e9b770e624f848bb0"
  head "https://github.com/kyma-incubator/kyma-cli.git"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/kyma-incubator/kyma-cli/"
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
end
