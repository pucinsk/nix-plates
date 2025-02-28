# Nix Flake for Running and Building Rails Apps

This Nix Flake provides a reproducible development environment for Ruby on Rails applications. It ensures consistent dependencies and simplifies setup across different machines.

## Features
- Installs Ruby, Bundler, Node.js, Yarn, and PostgreSQL
- Provides a shell environment with required dependencies
- Supports building and running Rails applications with ease

## Setup Steps
1. **Install Nix**
2. **Enable Flakes** (`nix.settings.experimental-features = nix-command flakes`)
3. **Clone the repository**
4. **Run the development shell**
5. **Start the Rails application**

```sh
nix develop
rails server
