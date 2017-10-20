#!/bin/bash

sass common.sass:common.css --style compressed --sourcemap=none
sass blog.sass:blog.css --style compressed --sourcemap=none
sass post.sass:post.css --style compressed --sourcemap=none
