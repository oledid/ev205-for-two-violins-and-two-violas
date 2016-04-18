var gulp = require("gulp");
var watch = require("gulp-watch");
var shell = require("gulp-shell");

var filename = "ev205.ly";
var arguments = "--pdf --png --output build/ev205";

var exeFile = "lilypond";
if (process.platform === "win32") {
	exeFile = "\"C:/Program Files (x86)/LilyPond/usr/bin/lilypond.exe\"";
}

gulp.task("default", function() {
    gulp.start("build");
});

gulp.task("build", shell.task([
    "mkdir build",
    exeFile + " " + arguments + " " + filename
], {
    ignoreErrors: true
}));

gulp.task("watch", function() {
    gulp.start("build");
    watch(filename, function() {
        gulp.start("build");
    });
});
