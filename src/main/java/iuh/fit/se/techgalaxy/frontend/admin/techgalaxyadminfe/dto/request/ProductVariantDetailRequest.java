package iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.dto.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductVariantDetailRequest {
    String memid;
    Double price;
    Double sale;
    List<ColorRequest> colors;

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @ToString
    @FieldDefaults(level = AccessLevel.PRIVATE)
    public static class ColorRequest {
        int quantity;
        String colorId;
    }
}
