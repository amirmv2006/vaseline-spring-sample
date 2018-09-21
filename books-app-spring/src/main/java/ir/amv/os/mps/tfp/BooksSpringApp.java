package ir.amv.os.mps.tfp;

import ir.amv.os.vaseline.basics.apis.core.server.polymorphysm.IVaselinePolymorphysmClassHolder;
import ir.amv.os.vaseline.basics.apis.core.server.polymorphysm.defimpl.VaselinePolymorphysmClassHolderImpl;
import ir.amv.os.vaseline.basics.spring.mapper.config.VaselineMapperConfig;
import ir.amv.os.vaseline.basics.spring.mapper.config.custconv.BaseVaselineCustomConverterClassHolderImpl;
import ir.amv.os.vaseline.basics.spring.mapper.config.custconv.IVaselineCustomConverterClassHolder;
import ir.amv.os.vaseline.basics.spring.validation.config.VaselineValidationConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;

/**
 * @author Amir
 */
@SpringBootApplication
public class BooksSpringApp {
    public static void main(String[] args) {
        SpringApplication.run(BooksSpringApp.class, args);
    }

    @Bean
    public IVaselinePolymorphysmClassHolder polymorphysmClassHolder() {
        return new VaselinePolymorphysmClassHolderImpl();
    }

    @Bean
    public IVaselineCustomConverterClassHolder customConverterClassHolder() {
        return new BaseVaselineCustomConverterClassHolderImpl() {
            @Override
            public Class<?>[] customConverterClasses() {
                return new Class[0];
            }
        };
    }
}
