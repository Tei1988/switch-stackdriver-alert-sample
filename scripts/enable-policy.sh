#!/bin/sh -ex

gcloud alpha monitoring policies update --enabled $1
