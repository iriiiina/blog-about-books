#!/bin/bash

sass blog.sass:blog.css --style compressed --sourcemap=none
sass post.sass:post.css --style compressed --sourcemap=none
sass font.sass:font.css --style compressed --sourcemap=none
