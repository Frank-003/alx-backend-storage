-- Create the trigger to decrease quantity after a new order is added
CREATE TRIGGER 
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END 


