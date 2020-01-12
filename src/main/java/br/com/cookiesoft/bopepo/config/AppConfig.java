package br.com.cookiesoft.bopepo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(DBConfig.class)
@ComponentScan(value = "br.com.cookiesoft.bopepo")
public class AppConfig {
}
