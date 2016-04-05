module.exports = (grunt) ->
  grunt.initConfig
    exec:
      clean: 'rm -rf node_modules/ build/ app/build/'
      android_build: 'gradle build'
      android_install: 'adb  install -r app/build/outputs/apk/app-debug.apk'
  grunt.loadNpmTasks 'grunt-exec'

  grunt.registerTask 'default', [
    "exec:android_build"
    "exec:android_install"
  ]

  return

