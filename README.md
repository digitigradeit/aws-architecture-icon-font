# aws-architecture-icon-font

Icon font for the [AWS architecture icons](https://aws.amazon.com/architecture/icons/).

Using an icon font could be useful for numerous applications: documentation, resume/cv/skillset sections, portfolio or blogs where embedding/inserting lots of tiny SVG files each with HTML tags and/or CSS could be rather tedious and time-consuming.

This is similar to how FontAwesome, Material Icons, Bootstrap Icons, etc. all work.

## Instructions/install guide

1. Clone this repo with git:

```
git clone https://github.com/digitigradeit/aws-architecture-icon-font.git
```

2. @importjsdelivr cdn, or @import locally in your existing CSS and CSS/FONT/SCSS files for your web/app root directory

```
@import url('https://cdn.jsdelivr.net/gh/digitigradeit/aws-architecture-icon-font@master/dist/demo/aws.css');
```

3. Insert the relevant HTML tags and the appropriate class. Complete list is in demo.html

```
<i class="aws aws-cloud_digital_interface"></i>
<i class="aws aws-app_mesh_virtual_gateway"></i>
```

4. Icons are inherently black with transparent background. You can further colorize them with CSS:

```
<i class="aws aws-transit-gateway" style="color: #ff9021;"></i>
<i class="aws aws-vpc_internet_gateway" style="color: #854BD7;"></i>
<i class="aws aws-vpc_nat_gateway" style="color: red;"></i>
```

5. Please reference the guidelines for dark and light backgrounds, including colors and best practices"
* [PowerPoint Slide Deck for Dark Backgrounds](https://d1.awsstatic.com/webteam/architecture-icons/q3-2021/AWS-Architecture-Icons-Deck_For-Dark-BG_09212021.pptx.9ce8315233b44e93e5f95c7493acc96134df7f04.zip)
* [PowerPoint Slide Deck for Light Backgrounds](https://d1.awsstatic.com/webteam/architecture-icons/q3-2021/AWS-Architecture-Icons-Deck_For-Light-BG_09212021.pptx.ebb55809fc3b5817966396387b26b24e6435ebbc.zip)

6. Demo
* https://github.com/digitigradeit/aws-architecture-icon-font/blob/main/demo.png
* https://github.com/digitigradeit/aws-architecture-icon-font/blob/main/preview.png

7. Enjoy!

8. Cool ideas/future work
Paire this with a service like https://jgraph.github.io/mxgraph/javascript/examples/clipboard.html https://jgraph.github.io/mxgraph/

***Licence/Copyright Notice***

This repository assumes no ownership. Architecture icons are copyright Amazon Web Services and are freely available in SVG format via [AWS Architecture Icons](https://aws.amazon.com/architecture/icons/) with no published license or copyright. This repo shall be routinely updated with any provided guidance from AWS. License and/or usage subject to change with or without notice.
