To run the examples that come with vspec itself
===============================================

Change to the vspec directory:

    cd ~/dotfiles/vim/bundle/vspec

Then run the command:

    ./bin/vspec test/context.input .
    ^           ^                  ^
    path to     |                  |
    command     test files         |
                                   non-standard runtime path

You could run it from the parent directory, but you'd have to specify the full paths, e.g.:

    ./vspec/bin/vspec vspec/test/context.input vspec

To run the examples for a different plugin
==========================================

The `textobj-indent` plugin comes with a vspec test suite. You can run it as follows:

    cd ~/dotfiles/vim/bundle
    ./vspec/bin/vspec textobj-indent/test/basic.input vspec/ textobj-user/ textobj-indent/

Note that the 'non-standard runtime paths' include vspec (required to run the test suite), textobj-user (on which the indentation plugin depends) and the plugin itself.

An alternative:

    cd ~/dotfiles/vim/bundle/textobj-indent
    ../vspec/bin/vspec test/basic.input ../vspec/ ../textobj-user/ .
