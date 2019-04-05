## Homebrew formulas for kyma-incubator projects
Use this repo to probive homebrew formulas to the kyma-incubator projects/tools

### Installation
Add the this repo as a brew tap: `brew tap kyma-incubator/kyma-incubator`

Then install the desired formula: `brew install kyma-incubator/kyma-incubator/<formula_name>`

Ex, install the latest release of KymaCLI:

	brew tap kyma-incubator/kyma-incubator
	brew install kyma-incubator/kyma-incubator/kyma-cli


To install cutting-edge of the application add `--HEAD` to the `brew install` command


### Contribution
When adding formulas, please follow the general recomendations [of the Formula CookBook](https://docs.brew.sh/Formula-Cookbook)