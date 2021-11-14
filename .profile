#!/bin/zsh
# environment variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_STATE="$XDG_CACHE_HOME/bspwm/state.json"
export EDITOR='nvim'
export VISUAL='nvim'
export PATH="$HOME/.cargo/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"

# DXVK
#export DXVK_HUD=1
export DXVK_FAKE_DX10_SUPPORT=1

# Vulkan
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json"

# Java
export _JAVA_AWT_WM_NONREPARENTING=1
