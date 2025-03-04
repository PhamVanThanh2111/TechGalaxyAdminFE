package iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.entities.enumeration.OrderStatus;
import iuh.fit.se.techgalaxy.frontend.admin.techgalaxyadminfe.entities.enumeration.PaymentStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    private String id;
    private Customer customer;
    private SystemUser systemUser;
    private String address;
    private PaymentStatus paymentStatus;
    private OrderStatus orderStatus;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private LocalDateTime createdAt;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private LocalDateTime updatedAt;
}
