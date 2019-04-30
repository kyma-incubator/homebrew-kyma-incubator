## Homebrew formulas for kyma-incubator projects
Use this repo to provide homebrew formulas to the kyma-incubator projects and tools

### Prerequisites
Make sure you have [brew](https://brew.sh/) and [xcode command line tools](https://stackoverflow.com/questions/9329243/xcode-install-command-line-tools) installed
 
### Installation
Add the this repo as a brew tap: `brew tap kyma-incubator/kyma-incubator`

Then install the desired formula: `brew install kyma-incubator/kyma-incubator/<formula_name>`

For example, install the latest release of Kyma-CLI:

	brew tap kyma-incubator/kyma-incubator
	brew install kyma-incubator/kyma-incubator/kyma-cli


To install cutting-edge version of the application add `--HEAD` to the `brew install` command

### Contribution
When adding formulas, please follow the general recomendations of the [Formula CookBook](https://docs.brew.sh/Formula-Cookbook)
