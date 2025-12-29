import java.io.*;
import java.util.*;

void main(String[] args) throws Exception {
    if (args.length == 0) {
        System.err.println("Usage: uao <zip-file>");
        return;
    }

    var zip = new File(args[0]).getAbsoluteFile();

    if (!zip.exists()) {
        System.err.println("File not found: " + zip);
        return;
    }

    var dir = new File(
        zip.getAbsolutePath().substring(0, zip.getAbsolutePath().lastIndexOf('.'))
    );

    // unzip
    new ProcessBuilder("unzip", "-o", zip.getAbsolutePath())
        .inheritIO()
        .start()
        .waitFor();

    // detect build file and open in IntelliJ
    for (var build : List.of("pom.xml", "build.gradle", "build.gradle.kts")) {
        var f = new File(dir, build);
        if (f.exists()) {
            new ProcessBuilder("intellij-idea-ultimate", f.getAbsolutePath())
                .inheritIO()
                .start();
            return;
        }
    }

    System.err.println("No build file found in " + dir);
}