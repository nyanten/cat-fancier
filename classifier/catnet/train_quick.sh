#!/usr/bin/env sh

TOOLS=../caffe/build/tools

#GLOG_logtostderr=1 $TOOLS/train_net.bin catnet_quick_solver.prototxt
GLOG_logtostderr=1 $TOOLS/caffe train -solver catnet_quick_solver.prototxt

#reduce learning rate by fctor of 10 after 8 epochs
#GLOG_logtostderr=1 $TOOLS/train_net.bin catnet_quick_solver_lr1.prototxt catnet_quick_iter_4000.solverstate