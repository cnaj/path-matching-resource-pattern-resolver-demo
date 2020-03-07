package com.example.minimal;

import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class ResourceDemo {

    public static void main(String[] args) throws IOException {
        ClassLoader classLoader = ResourceDemo.class.getClassLoader();
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();

        System.out.println("Classpath: " + System.getProperty("java.class.path"));
        System.out.println();

        List<URL> classLoaderResult = Collections.list(classLoader.getResources("LICENSE-junit.txt"));
        List<Resource> springResult = Arrays.asList(resolver.getResources("classpath*:**/LICENSE-junit.txt"));

        System.out.println(classLoaderResult);
        System.out.println(springResult);
    }

}
