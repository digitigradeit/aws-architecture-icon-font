var gulp = require('gulp');
var path = require('gulp-path');
var iconfont = require('gulp-iconfont');
var iconfontCSS = require('gulp-iconfont-css');
var consolidate = require('gulp-consolidate');
var svgmin = require ('gulp-svgmin');
var rename = require('gulp-rename');

gulp.task('default', function () {
    return gulp.src('./src/staged/*.svg')
        .pipe(svgmin())
        .pipe(iconfont({
            fontName: 'aws',
            formats: ['svg', 'ttf', 'eot', 'woff', 'woff2'],
            normalize: true,
            fontHeight: 1024,
        }))
        .on('glyphs', function (glyphs) {
            console.log(glyphs);
            gulp.src('./src/templates/_scss.scss')
                .pipe(consolidate('lodash', {
                    glyphs: glyphs,
                    appendUnicode: true,
                    prependUnicode: true,
                    fontName: 'aws',
                    fontPath: '../fonts/',
                    cssClass: 'aws'
                }))
                .pipe(gulp.dest('./dist/scss'));
            gulp.src('./src/templates/demo/_css.css')
                .pipe(consolidate('lodash', {
                    glyphs: glyphs,
                    fontName: 'aws',
                    fontPath: '../fonts/',
                    cssClass: 'aws'
                }))
                .pipe(rename('aws.css'))
                .pipe(gulp.dest('./dist/demo/'));
            gulp.src('./src/templates/demo/_index.html')
                .pipe(consolidate('lodash', {
                        glyphs: glyphs,
                        fontName: 'aws',
                        fontPath: '../fonts/',
                        cssClass: 'aws'
                }))
                .pipe(rename('index.html'))
                .pipe(gulp.dest('./dist/demo'))
        })
        .pipe(gulp.dest('./dist/fonts'));
});