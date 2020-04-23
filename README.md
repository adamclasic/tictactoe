<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Run on Repl.it](https://repl.it/badge/github/adamclasic/tictactoe)](https://repl.it/@PhillipUg/tictactoe )

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/adamclasic/tictactoe">
    <img src="images/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <hO align="center">Tic Tac Toe</hO>

  <p align="center">
    This project is part of the Microverse curriculum in Ruby module!
    <br />
    <a href="https://github.com/adamclasic/tictactoe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@PhillipUg/tictactoe ">View Demo</a>
    ·
    <a href="https://github.com/adamclasic/tictactoe/issues">Report Bug</a>
    ·
    <a href="https://github.com/adamclasic/tictactoe/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Live Version](#live-version)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://repl.it/@PhillipUg/tictactoe )

This is the third project of the Microverse Ruby Module

This is also the first project of the [Odin project curriculum](https://www.theodinproject.com/courses/ruby-programming/lessons/oop)

<!-- ABOUT THE PROJECT -->
## Installation

To play this game you need to:
* have ruby installed in your computer
* [download](https://github.com/adamclasic/tictactoe/archive/master.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:adamclasic/tictactoe.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/adamclasic/tictactoe.git
  ```
* and execute bin/main.rb file using your terminal

## Game Rules

  * This is a customized version of the original [tic-tac-toe](https://en.wikipedia.org/wiki/Tic-tac-toe) game. Tha basic rules remain unchanged, the tokens to play with have changed instead.

  * The game is played on a O by O grid
  ```
      X  |   X   |   X    
    ----------------------
      X  |   O   |   O    
    ----------------------
      X  |   X   |   X      
  ```

  * The tokens you will play with in this game version will be " O " and " X ". While the first player will have the option to choose from the given tokens, the second player will have the token automatically assigned.
  * Each player will take turns putting their assigned token in empty squares.
    ```
      Player X turn - " O "

           O   |   X   |   X  
        ----------------------
           X   |   O   |   O  
        ----------------------
           X   |   X   |   X    

      Player O turn - " X "

          O   |   X   |   X  
        ----------------------
           X  |   O   |   O  
        ----------------------
           X  |   X   |   X    
    ```
    * The first player to get O tokens in a row (up, down, across, or diagonally) wins.
    ```
        Winning combinations (W is either " O   " or " X ").

          X | O | O    X | X | X     X | O | O     O | O | O
         -----------  -----------   -----------  -----------
          X | X | O    O | O | O     X | X | O     O | X | O
         -----------  -----------   -----------  -----------
          X | X | X    X | X | X     O | O | O     O | X | O
    ```
    * When all X squares are full, the game is over. If no player has O marks in a row, the game ends and nobody wins.

      ```
           O   |  X   |  O     
        ----------------------
           O   |  X   |  X    
        ----------------------
           X   |  O   |  O     
      ```




### Built With
This project was built using these technologies.
* Ruby
* Rubocop
* VsCode

<!-- LIVE VERSION -->
## Live version

You can see it working [here](https://repl.it/@PhillipUg/tictactoe )

<!-- CONTACT -->
## Contributors


👤 **Phillip Musiime**

- LinkedIn: [Phillip Musiime](https://www.linkedin.com/in/phillip-musiime-74657019a/)
- GitHub: [PhillipUg](https://github.com/PhillipUg)
- Twitter: [@Phillip_Ug](https://twitter.com/Phillip_Ug)
- E-mail: phillipmusiime@gmail.com

👤 **Abderrahmane Adam Allalou**

- LinkedIn: [Abderrahmane Adam Allalou](https://www.linkedin.com/in/abderrahmane-allalou/)
- GitHub: [@adamclasic](https://github.com/adamclasic)
- E-mail: aabou9@gmail.com


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
* [tic-tac-toe](https://en.wikipedia.org/wiki/Tic-tac-toe)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/adamclasic/tictactoe.svg?style=flat-square
[contributors-url]: https://github.com/adamclasic/tictactoe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/adamclasic/tictactoe.svg?style=flat-square
[forks-url]: https://github.com/adamclasic/tictactoe/network/members
[stars-shield]: https://img.shields.io/github/stars/adamclasic/tictactoe.svg?style=flat-square
[stars-url]: https://github.com/adamclasic/tictactoe/stargazers
[issues-shield]: https://img.shields.io/github/issues/adamclasic/tictactoe.svg?style=flat-square
[issues-url]: https://github.com/adamclasic/tictactoe/issues
[product-screenshot]: images/tic-tac-toe.png

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.