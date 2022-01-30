var async = require('async');
var gulp = require('gulp');
var iconfont = require('gulp-iconfont');
var iconfontCss = require('gulp-iconfont-css');
var iconfontTemplate = require('gulp-iconfont-template');
var fontName = 'aws';
var consolidate = require('gulp-consolidate');

gulp.task('Iconfont', function(done){
  var iconStream = gulp.src(['./src/*.svg'])
  	.pipe(iconfontTemplate({
      		fontName: fontName,
      		cssClass: 'aws',
     		path: '_templates/template.html',
     		targetPath: '../../www/demo.html'
    		}))
    .pipe(iconfont({ fontName: 'aws',
    		fontHeight: 1024,
            	normalize: true,
		formats: ['svg', 'ttf', 'eot', 'woff', 'woff2'],
     }));

  async.parallel([
    function handleGlyphs (cb) {
      iconStream.on('glyphs', function(glyphs, options) {
        gulp.src('_templates/template.css')
          .pipe(consolidate('lodash', {
            glyphs: glyphs,
            fontName: 'aws',
            fontPath: '../fonts/',
            className: 'aws',
            targetPath: './www/css/aws.css'
          }))
          .pipe(gulp.dest('./www/css/'))
          .on('finish', cb);
      });
    },
    function handleFonts (cb) {
      iconStream
        .pipe(gulp.dest('./www/fonts/'))
        .on('finish', cb);
    }
  ], done);
});
