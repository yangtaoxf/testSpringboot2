package com.wxy.wjl.testspringboot2.swagger2;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Swagger配置  工程启动后访问 ip:port/swagger-ui.html
 */
@Configuration
@EnableSwagger2
public class Swagger2Config {
    public static final String PROVIDER_SCAN_BASE_PACKAGE = "com.wxy.wjl.providerapi.service";
    public static final String CONTROLLER_SCAN_BASE_PACKAGE = "com.wxy.wjl.testspringboot2.Controller";
    public static final String VERSION = "1.0.0";
    @Bean
    public Docket providerApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("provider")
                .apiInfo(providerApiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(PROVIDER_SCAN_BASE_PACKAGE))
                .paths(PathSelectors.any()) // 可以根据url路径设置哪些请求加入文档，忽略哪些请求
                .build();
    }
    private ApiInfo providerApiInfo() {
        return new ApiInfoBuilder()
                .title("swagger2 provider API文档") //设置文档的标题
                .description("测试swagger2 API 接口文档") // 设置文档的描述
                .version(VERSION) // 设置文档的版本信息-> 1.0.0 Version information
                .termsOfServiceUrl("http://www.baidu.com") // 设置文档的License信息->1.3 License information
                .build();
    }
    @Bean
    public Docket controllerApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("controller")
                .apiInfo(controllerApiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(CONTROLLER_SCAN_BASE_PACKAGE))
                .paths(PathSelectors.any()) // 可以根据url路径设置哪些请求加入文档，忽略哪些请求
                .build();
    }
    private ApiInfo controllerApiInfo() {
        return new ApiInfoBuilder()
                .title("swagger2 controller API文档") //设置文档的标题
                .description("测试swagger2 API 接口文档") // 设置文档的描述
                .version(VERSION) // 设置文档的版本信息-> 1.0.0 Version information
                .termsOfServiceUrl("http://www.baidu.com") // 设置文档的License信息->1.3 License information
                .build();
    }

    @Bean
    public Docket gatewayApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("Gateway-openapi")
                .apiInfo(controllerApiInfo())
                .select()
                //.apis("")
                .paths(PathSelectors.any()) // 可以根据url路径设置哪些请求加入文档，忽略哪些请求
                .build();
    }
    private ApiInfo gatewayApiInfo() {
        return new ApiInfoBuilder()
                .title("Gateway-openapi接口文档") //设置文档的标题
                .description("Gateway-openapi接口文档") // 设置文档的描述
                .version(VERSION) // 设置文档的版本信息-> 1.0.0 Version information
                .termsOfServiceUrl("") // 设置文档的License信息->1.3 License information
                .build();
    }

}
