-- The password you use on the following two lines needs to be added to the alienvault-asset-tracker.cfg file as well in the password= field
GRANT SELECT ON alienvault.host, to hostchecker@'127.0.0.1' IDENTIFIED BY '<replace with password>';
GRANT SELECT ON alienvault.host_ip, to hostchecker@'127.0.0.1' IDENTIFIED BY '<replace with password>';

DELETE FROM plugin WHERE id = "717354";
DELETE FROM plugin_sid where plugin_id = "717354";
INSERT INTO plugin (id, type, name, description, product_type, vendor) VALUES (717354, 1, 'alienvault-asset-tracker', 'AlienVault Asset Tracker', 4, 'AlienVault Asset Tracker');
INSERT INTO `plugin_sid` (`plugin_id`,`sid`,`category_id`,`subcategory_id`,`reliability`,`priority`,`name`) VALUES (717354, 99, 15, 131, 2, 2, 'New Asset Detected');
