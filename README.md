![kantan](http://i.imgur.com/t9SrZ1i.png)

kantan is a way to make consistent 16-colour scheming simple. At its core is a tiny shell script that allows for templating of colour configuration files for whatever programs you use. It comes with templates for vim, Xresources and iTerm 2, but pull requests are welcome! kantan is inspired by [base16-builder](https://github.com/chriskempson/base16-builder) and derives some structure from it.

kantan doesn't trash the ANSI colour codes, making it work with your console programs by default. Bright green appearing as dark grey really sucks, and you don't always have control of colours in situations like connecting to a server over ssh.

## Default Scheme

kantan comes with a modified version of base16's default scheme, modified to conform to the ANSI codes.

Palette:

![default scheme palette preview](http://i.imgur.com/LUOXy3V.png)

xterm:

![default scheme xterm preview](http://i.imgur.com/m2YFQep.png)

vim:

![default scheme vim preview](http://i.imgur.com/Bd03wj7.png)


## Usage

To build all templates with the scheme `schemes/default`:

    $ ./kantan

To build all templates with a custom scheme:

    $ ./kantan /path/to/scheme/file


(info coming on how to integrate into an existing setup).


## Scheme format

Schemes are just shell scripts that define the `hex[n]` variables. Take a look at the default scheme for an example. Note that although this is a 16-colour scheme, there is one extra colour to use as a background colour, which is at `hex[16]`.

## Templating

Templates are extremely simple. Just insert `${var}` anywhere to have it replaced with the desired colour code. `var` can be one of:

- `hex[0-16]` - hex representation
- `rgb_r[0-16]`, `rgb_g[0-16]`, `rgb_b[0-16]` - RGB red green and blue decimal values (0-255), respectively
- `srgb_r[0-16]`, `srgb_g[0-16]`, `srgb_b[0-16]` - sRGB red green and blue floating point decimal values (0.0-1.0), respectively

So if colour 3 had hex value `123456` and you wanted `something=#123456` you could do `something=#${hex[3]}` (note the leading `#`).


