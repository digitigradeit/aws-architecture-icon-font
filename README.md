# aws-architecture-icon-font

Icon font for the [AWS architecture icons](https://aws.amazon.com/architecture/icons/).

Using an icon font could be useful for numerous applications: documentation, resume/cv/skillset sections, portfolio or blogs where embedding/inserting lots of tiny SVG files each with HTML tags and/or CSS could be rather tedious and time-consuming.

This is similar to how FontAwesome, Material Icons, Bootstrap Icons, etc. all work.

## Instructions/install guide

1. Clone this repo with git:

```
git clone https://github.com/digitigradeit/aws-architecture-icon-font.git
```

2. @include in your existing CSS or copy relevant CSS/FONT/SCSS files for your web/app root directory (i.e. @include  or copy to /assets/)

```
@inclue "https://cdn.jsdelivr.net/gh/digitigradeit/aws-architecture-icon-font@master/css/icons.css";
```

3. Insert the relevant HTML tags and the appropriate class. Complete list is iun

```
<i class="aws aws-cloud_digital_interface"></i>
<i class="aws aws-app_mesh_virtual_gateway"></i>
```

4. Icons are inherently black with transparent background. You can further colorize them with CSS:

```
<i class="aws aws-transit-gateway" style="color: #ff9021;"></i>
<i class="aws aws-vpc_internet_gateway" style="color: #854BD7;"></i>
<i class="aws aws-vpc_nat_gateway" style="color: red;"></i>
