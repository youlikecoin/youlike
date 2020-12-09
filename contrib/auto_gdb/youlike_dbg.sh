#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.youlikecore/youliked.pid file instead
youlike_pid=$(<~/.youlikecore/testnet3/youliked.pid)
sudo gdb -batch -ex "source debug.gdb" youliked ${youlike_pid}
