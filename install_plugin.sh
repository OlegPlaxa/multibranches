#!/usr/bin/env bash

wp plugin uninstall thank-after-post --allow-root
wp plugin install /opt/thank-after-post.zip --allow-root
wp plugin activate thank-after-post --allow-root