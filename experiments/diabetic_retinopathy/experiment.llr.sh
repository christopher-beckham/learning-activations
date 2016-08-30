#!/bin/bash

SLIM_512_N4=1 \
THEANO_FLAGS=mode=FAST_RUN,device=gpu0,lib.cnmem=0.95,allow_gc=True,floatX=float32,nvcc.fastmath=True,profile=False,dnn.conv.algo_fwd=time_once,dnn.conv.algo_bwd_filter=time_once,dnn.conv.algo_bwd_data=time_once \
  python -u quadrant_network_dr.py
