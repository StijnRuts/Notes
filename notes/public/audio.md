---
tags:
  - system
---

# Audio

## About

On this [[nixos]] machine, audio is provided by PipeWire, which replaces PulseAudio and JACK while presenting a PulseAudio-compatible interface to applications.
The configuration enables PipeWire with ALSA support, including 32-bit applications, and disables the PulseAudio daemon so the two servers do not compete.
`security.rtkit` grants PipeWire real-time scheduling, reducing latency and audio dropouts.

## Links

[PipeWire](https://pipewire.org)

## See also

[[nixos]]

## Nix module

![[audio.nix]]
