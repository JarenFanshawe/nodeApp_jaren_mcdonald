module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    watch: {
      sass: {
        files: ['public/stylesheets/sass/*.scss'],
        tasks: ['sass','cssmin'],
      },

      concat: {
        files: ['javascripts/modules/*.js'],
        tasks: ['concat', 'uglify'],
      }
    },

    sass: {
      dist: {
        files: {
          'public/stylesheets/style.css' : 'public/stylesheets/sass/style.scss'
        }
      }
    },

    concat: {
      options: {
        seperator: ";",
        stripBanners: true,
      },
      dist: {
        src: ['public/javascripts/modules/*.js'],
        dest: 'public/javascripts/main.js',
      }
    },

    uglify: {
      options: {
        manage: false
      },
      my_target: {
        files: {
          'public/javascripts/main.min.js': ['public/javascripts/main.js']
        }
      }
    },

    cssmin: {
      my_target: {
        files: [{
          expand: true,
          cwd: 'public/stylesheets/',
          src: ['*.css', '!*.min.css'],
          dest: 'public/stylesheets/',
          ext: '.min.css'
        }]
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.registerTask('default', ["watch"]);
};
