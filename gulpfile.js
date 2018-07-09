const gulp = require('gulp')
const sass = require('gulp-sass')
const postcss = require('gulp-postcss')
const autoprefixer = require('autoprefixer')
const flexBugsFixies = require('postcss-flexbugs-fixes')
const cssWring = require('csswring')

const autoprefixerOption = {
  grid: true
}

const postcssOption = [
  flexBugsFixies,
  autoprefixer(autoprefixerOption),
  cssWring
]

gulp.task('sass', () => {
  return gulp.src('./scss/**/*.scss')
    .pipe(sass())
    .pipe(postcss(postcssOption))
    .pipe(gulp.dest('./css'))
});

gulp.task('watch', () => {
  return gulp.watch('./scss/**/*.scss', ['sass']);
});

