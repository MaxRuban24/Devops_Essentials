#!/bin/bash

( mkdir ~/Cold_Beer && cd ~/Cold_Beer/ && touch my_file && echo "Hello" >> my_file &&  cat my_file ) || echo "Something went wrong"