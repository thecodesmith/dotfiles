#!/usr/bin/env groovy

import groovy.io.FileType
import java.text.NumberFormat

if (!args.size()) {
    println '''|Usage:
               |  dep [artifact]'''.stripMargin()
    System.exit(1)
}

parts = args[0].tokenize(':')

if (parts.size() < 2) {
    println "Invalid artifact. Please specify coordinates like groupId:artifactId:version[:packaging][:classifier]."
    System.exit(1)
}

groupId = parts[0]
artifactId = parts[1]

version = parts.size() > 2 ?  parts[2] : 'LATEST'

cmd = "mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=$groupId:$artifactId:$version"
println cmd

p = cmd.execute()
p.waitFor()

repository = "${System.getProperty('user.home')}/.m2/repository"
dir = "$repository/${groupId.replaceAll(/\./, '/')}/$artifactId"

versions = []
new File(dir).eachFile(FileType.DIRECTORIES) {
    versions << it
}

if (version == 'LATEST') {
    version = versions.findAll {
        name = it.name.toLowerCase()
        !name.contains('alpha') && !name.contains('beta') && !name.contains('snapshot')
    }.max { it.name } .name
}

jar = new File("$dir/$version/$artifactId-${version}.jar")

println "Directory: $dir"
println "Version: $version"
println "Size: ${NumberFormat.integerInstance.format(jar.size())} bytes"
