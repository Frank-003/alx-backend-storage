-- Create the trigger to decrease quantity after a new order is added
DELIMITER //

CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.order_quantity
    WHERE item_id = NEW.item_id;
END //

DELIMITER ;
