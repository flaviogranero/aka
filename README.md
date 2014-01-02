# Aka

A CLI tool to automate software development workflows based on github pull requests.

* [Github Workflow](http://scottchacon.com/2011/08/31/github-flow.html)

Here in [Inaka](http://inaka.net) we have the following workflow steps:

1. Start a pivotal task, creating allowing new git branch for the new feature/bug fix
2. Commit the changes, pushing to a new remote branch
3. Submit a pull-request, allowing other team to review the code, and merge into master if everything is ok
4. Finish the pivotal task, removing both local and remote feature branches
5. Deploy master branch.

For more details, please read more about the [Inaka Workflow](https://github.com/inaka/inaka_corp/wiki/Inaka-Workflow).

This gem provides a command line tool to automate tasks related with `start`, `submit` and `finish` steps.

## Installation

Add this line to your application's Gemfile:

    gem 'aka'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aka
    
Or, if you are using homebrew and want to make aka system wide avaliable, use brew-gem:

    $ brew install brew-gem
    $ brew gem aka

## Initial Setup

TODO: Write usage instructions here

##Requirements

`aka` assumes you're using an 'origin' remote.  If you are not,
either add an 'origin' remote that points to the GitHub repository you want to submit pull requests.

##Private repositories

To submit pull requests for your private repositories you have set up your aka config for github

    $ aka config github.token=your_githubtoken123456789 --global

You must generate your OAuth token for command line use, see how to [generate oauth token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## To-do

1. test coverage, travis-ci and codeclimate setup.
2. add github task support
3. allow individual add-ons tasks like pivotal:start, github:submit, freckle:log

#### Inspiration

1. https://github.com/ddollar/foreman
2. https://github.com/github/hub
3. https://github.com/schacon/git-pulls
