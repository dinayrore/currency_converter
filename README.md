# Currency Converter

The program entitled 'currency.rb' is a file that contains a Currency class that will allow the user to compare like currency code types and amounts (i.e. 'USD' to 'USD', 'EUR' to 'EUR', and 'JPY' to 'JPY.'  Additionally, '1 USD' is equal to '1 USD,' etc.).  If the user attempts to use a MATH operator (addition, subtraction, or multiplication) with amounts that contain different currency codes, a standard, DifferentCurrencyCodeError will appear.  To prevent the error from occurring the user should only add amounts with like currency codes.  

## Getting Started

The instructions below will help you retrieve a copy of the project to run on your local machine through the Terminal application. Please see deployment for notes on how to deploy the project on a live system.  The instructions provided are for macbook users.

### Prerequisities

You may need to install or update the following software.

Find Terminal - to run program
  1. Open Finder. Finder is available in the Dock.
  2. Select Applications from the side bar menu.  Then unfold the Utilities folder.
  3. Double click on Terminal to initialize.

Install Homebrew - to store program files properly
  1. Open up Terminal.
  2. Run```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```
  3. Run```brew doctor```

Install rbenv & ruby-build - to install and compile different versions of Ruby code language
  1. Open up Terminal
  2. Run```brew install ruby-build rbenv```
  3. Run```echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile```

Install ruby 2.3.1 - the latest version of Ruby
  1. Close and reopen Terminal.```rbenv install 2.3.1```
  2. After quite some time, run:```rbenv global 2.3.1```
Once you have completed the above installation processes your system should be ready to launch the program!

## Deployment

Please complete the following procedure to run the program on a live system:
  1. Open Terminal.
  2. Change your directory to the one that which you have saved this zip file.`cd folder_name`
  3. Type `convert_currency.rb` to run the program.
  4. READ all instructions BEFORE adding input.

## Built With

* Atom

## Authors

* **Kristine Teichmann**

## Acknowledgments

* The Iron Yard - Durham
