
INSERT INTO `categoryavailable` (`id`, `categoryDescription`, `categoryName`, `categoryUrl`, `iconFile`, `isActive`, `packageFor`, `registrationCharge`) VALUES
(367, 'Florist', 'Florist', NULL, 'Category/categoryIcon/1498821324664tulip.png', b'1', 'HalfYearly', 3),
(368, 'Priest', 'Priest', NULL, 'Category/categoryIcon/1498821345854priest.png', b'1', 'HalfYearly', 3),
(369, 'Jewellery', 'Jewellery', NULL, 'Category/categoryIcon/1498821369491interlocking-rings.png', b'1', 'HalfYearly', 3),
(370, 'Grocery', 'Grocery', NULL, 'Category/categoryIcon/1498821391346man-pushing-a-shopping-cart.png', b'1', 'HalfYearly', 3),
(371, 'Wedding Cards', 'Wedding Cards', NULL, 'Category/categoryIcon/1498821421100wedding-invitation.png', b'1', 'HalfYearly', 3),
(372, 'Transport', 'Transport', NULL, 'Category/categoryIcon/1498821449843delivery-truck.png', b'1', 'HalfYearly', 3),
(373, 'Photographer', 'Photographer', NULL, 'Category/categoryIcon/1498821474100photo-camera.png', b'1', 'HalfYearly', 3),
(374, 'Wedding Hall', 'Wedding Hall', NULL, 'Category/categoryIcon/1498821505552city-hall.png', b'1', 'HalfYearly', 3),
(375, 'Catering', 'Catering', NULL, 'Category/categoryIcon/1498821541151shape.png', b'1', 'HalfYearly', 3),
(376, 'Beautician', 'Beautician', NULL, 'Category/categoryIcon/1498821577774woman-hair.png', b'1', 'HalfYearly', 3),
(377, 'Cook', 'Cook', NULL, 'Category/categoryIcon/1498821617134chefhat1.png', b'1', 'HalfYearly', 3),
(378, 'Crackers', 'Crackers', NULL, 'Category/categoryIcon/1498821650230shopping-groceries.png', b'1', 'HalfYearly', 3);


INSERT INTO `occasion` (`id`, `description`, `entryTime`, `name`, `status`) VALUES
(19, 'Test1 Desc', '2017-08-07 13:35:50', 'Test1', b'0'),
(24, 'Wedding desc', '2017-08-07 13:36:38', 'Wedding', b'1'),
(25, 'Birthday desc', '2017-08-07 13:35:42', 'Birthday', b'1'),
(26, 'Annaprashan  desc', '2017-08-07 13:35:57', 'Annaprashan', b'1'),
(27, 'Conference Desc', '2017-08-07 13:36:02', 'Conference', b'1');

INSERT INTO `producttype` (`id`, `entryTime`, `status`, `typeDescription`, `typeName`, `updateTime`, `categoryAvailable_id`) VALUES
(17, '2017-07-28 15:48:03', b'1', 'It\'s a  Single Piece Flower Type', 'Single Piece', '2017-07-29 11:40:57', 367),
(18, '2017-07-28 18:05:57', b'1', 'It\'s for Raw File Provider Photographer.', 'Raw File', '2017-07-29 11:44:28', 373),
(20, '2017-07-29 11:41:59', b'1', 'It\'s a Bunch of Flower', 'Bouquet', '2017-07-29 11:41:59', 367),
(21, '2017-07-29 11:47:07', b'1', 'It\'s for fine file provider photographer.', 'Fine Files', '2017-07-29 11:48:49', 373),
(22, '2017-07-29 11:47:07', b'1', 'It\'s for raw and fine both provider photographer', 'Raw + Fine File', '2017-07-29 11:49:05', 373),
(23, '2017-07-29 11:51:20', b'1', 'It\'s  for flower garlands (mala).', 'Garlands', '2017-07-29 11:51:20', 367);

INSERT INTO `subcategoryavailable` (`id`, `isActive`, `subCategoryDescription`, `subCategoryName`, `subCategoryUrl`, `categoryAvailable_id`) VALUES
(390, b'1', 'Add & Edit Flower', 'Add & Edit Flower', 'admin-addEditFlower', 367),
(391, b'1', 'View Flowers', 'View Flowers', 'viewFlowers', 367),
(392, b'1', 'Add & Edit Priest', 'Add & Edit Priest', 'admin-addEditPriest', 368),
(393, b'1', 'View Priests', 'View Priests', 'viewPriests', 368),
(394, b'1', 'Add & Edit Jewellery', 'Add & Edit Jewellery', 'admin-addEditJewellery', 369),
(395, b'1', 'View Jewellery', 'View Jewellery', 'viewJewellery', 369),
(396, b'1', 'Add & Edit Grocery', 'Add & Edit Grocery', 'admin-addEditGrocery', 370),
(397, b'1', 'View Grocery', 'View Grocery', 'viewGrocery', 370),
(398, b'1', 'Add & Edit Wedding Card', 'Add & Edit Wedding Card', 'admin-addEditWeddingCard', 371),
(400, b'1', 'View Wedding Cards', 'View Wedding Cards', 'viewWeddingCards', 371),
(402, b'1', 'Add & Edit Vehicles', 'Add & Edit Vehicle', 'admin-addEditVehicles', 372),
(403, b'1', 'View Vehicles', 'View Vehicles', 'viewVehicles', 372),
(404, b'1', 'Add & Edit Photographer', 'Add & Edit Photographer', 'admin-addEditPhotographer', 373),
(405, b'1', 'View Photographers', 'View Photographers', 'viewPhotographers', 373),
(406, b'1', 'Add & Edit Wedding Hall', 'Add & Edit Wedding Hall', 'admin-addEditWeddingHalls', 374),
(407, b'1', 'View Wedding Halls', 'View Wedding Halls', 'viewWeddingHalls', 374),
(408, b'1', 'Add & Edit Catering', 'Add & Edit Catering', 'admin-addEditCatering', 375),
(409, b'1', 'View Catering', 'View Catering', 'viewCatering', 375),
(410, b'1', 'Add & Edit Beauty Packages', 'Add & Edit Beauty Packages', 'admin-addEditBeautyPackages', 376),
(411, b'1', 'View Beauty Packages', 'View Beauty Packages', 'viewBeautyPackages', 376),
(412, b'1', 'Add & Edit Cook', 'Add & Edit Cook', 'admin-addEditCook', 377),
(413, b'1', 'View Cook', 'View Cook', 'viewCook', 377),
(414, b'1', 'Add & Edit Cracker', 'Add & Edit Cracker', 'admin-addEditCracker', 378),
(415, b'1', 'View Crackers', 'View Crackers', 'viewCrackers', 378);

