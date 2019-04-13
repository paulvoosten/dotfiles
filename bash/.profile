#!/bin/bash
# environment variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_STATE="$XDG_CACHE_HOME/bspwm/state.json"
export EDITOR='nvim'
export VISUAL='nvim'
export PATH="$PATH:$HOME/.cargo/bin"

# DXVK
export DXVK_HUD=1
export DXVK_FAKE_DX10_SUPPORT=1

# Vulkan
export VK_ICD_FILENAMES='/usr/share/vulkan/icd.d/nvidia_icd.json'
