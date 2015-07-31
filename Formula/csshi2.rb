require "formula"

# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Csshi2 < Formula
  homepage "https://github.com/untoldwind/csshi2"
  url "https://github.com/untoldwind/csshi2/archive/0.4.tar.gz"
  sha256 "0256cd0d0fefb176030d254bfce1d2d1f4b9e19498ea76b6bfaad8513d6035dc"

  head "https://github.com/untoldwind/csshi2.git"

  depends_on "zsh-completions" => :optional
  depends_on "bash-completion" => :optional

  def install
  	bin.install "csshi2"
    if build.with? "zsh-completions"
      (share / "zsh-completions").install "zsh/_csshi2"
    end
    if build.with? "bash-completion"
      (etc / "bash_completion.d").install "bash/csshi2"
    end
  end
end
