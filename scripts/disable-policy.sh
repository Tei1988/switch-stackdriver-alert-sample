#!/bin/sh -ex

gcloud alpha monitoring policies update --no-enabled $1
