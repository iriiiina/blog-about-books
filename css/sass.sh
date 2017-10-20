#!/bin/bash

sass blog.sass:blog.css --style compressed --sourcemap=none
sass post.sass:post.css --style compressed --sourcemap=none
