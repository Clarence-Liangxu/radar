# radar
static code analyzer.

## Prerequisites
install llvm 17
```
# on macOS
brew install llvm@17
```
set environment
```
# ~/.zshrc
# homebrew llvm17
export PATH="/opt/homebrew/opt/llvm@17/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm@17/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm@17/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm@17/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm@17/lib/c++"
```