package iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.dto.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@ToString
public class AttributeValueUpdateRequest {
    String id;
    String value;
    String attributeId;
    
}
