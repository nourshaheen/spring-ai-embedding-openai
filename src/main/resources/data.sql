

CREATE TABLE products (
                         id SERIAL PRIMARY KEY,
                         name_english VARCHAR(255),
                         name_arabic VARCHAR(255),
                         serial_number VARCHAR(50),
                         description TEXT
);


INSERT INTO products (name_english, name_arabic, serial_number, description) VALUES
                                                                                ('Apple iPhone 13', 'آبل آيفون 13', 'SN-101', 'The latest smartphone from Apple. أحدث هاتف ذكي من آبل.'),
                                                                                ('Samsung Galaxy S23', 'سامسونج جالاكسي S23', 'SN-102', 'High-performance smartphone by Samsung. هاتف ذكي عالي الأداء من سامسونج.'),
                                                                                ('Sony WH-1000XM4', 'سوني WH-1000XM4', 'SN-103', 'Noise-cancelling wireless headphones. سماعات لاسلكية مانعة للضوضاء.'),
                                                                                ('Dell XPS 13', 'ديل XPS 13', 'SN-104', 'Ultrabook laptop with high-end features. لابتوب بمواصفات عالية.'),
                                                                                ('LG OLED TV 55"', 'إل جي تلفزيون OLED 55"', 'SN-105', '55-inch 4K OLED television. تلفزيون OLED 4K بحجم 55 بوصة.'),
                                                                                ('Philips Air Fryer XXL', 'قلاية هوائية XXL من فيليبس', 'SN-106', 'Air fryer for healthy cooking. قلاية هوائية للطهي الصحي.'),
                                                                                ('Dyson V15 Detect Vacuum', 'دايسون V15 ديتكت مكنسة', 'SN-107', 'Advanced cordless vacuum cleaner. مكنسة لاسلكية متقدمة.'),
                                                                                ('Adidas Ultraboost Shoes', 'أديداس أحذية Ultraboost', 'SN-108', 'Comfortable running shoes. أحذية رياضية مريحة.'),
                                                                                ('Canon EOS R5', 'كانون EOS R5', 'SN-109', 'Mirrorless professional camera. كاميرا احترافية بدون مرآة.'),
                                                                                ('PlayStation 5', 'بلاي ستيشن 5', 'SN-110', 'The latest gaming console from Sony. أحدث جهاز ألعاب من سوني.'),
                                                                                ('Nestle KitKat', 'نستله كيت كات', 'SN-111', 'Chocolate-covered wafer bar. شوكولاتة مع ويفر.'),
                                                                                ('Coca-Cola 1L', 'كوكاكولا 1 لتر', 'SN-112', 'Refreshing soft drink. مشروب غازي منعش.'),
                                                                                ('Nutella Hazelnut Spread', 'نوتيلا معجون البندق', 'SN-113', 'Chocolate hazelnut spread. معجون شوكولاتة بالبندق.'),
                                                                                ('Lipton Green Tea', 'شاي ليبتون الأخضر', 'SN-114', 'Premium green tea leaves. أوراق شاي أخضر فاخرة.'),
                                                                                ('Pantene Pro-V Shampoo', 'شامبو بانتين برو-في', 'SN-115', 'For smooth and shiny hair. للحصول على شعر ناعم ولامع.'),
                                                                                ('Dettol Antibacterial Soap', 'صابون ديتول المضاد للبكتيريا', 'SN-116', 'Kills 99.9% of germs. يقتل 99.9% من الجراثيم.'),
                                                                                ('Oral-B Electric Toothbrush', 'فرشاة أسنان كهربائية أورال-بي', 'SN-117', 'Electric toothbrush for better cleaning. فرشاة كهربائية لتنظيف أفضل.'),
                                                                                ('Gillette Mach3 Razor', 'ماكينة حلاقة جيليت Mach3', 'SN-118', 'Triple-blade razor for close shave. ماكينة حلاقة ثلاثية الشفرات.'),
                                                                                ('Tide Laundry Detergent', 'منظف الملابس تايد', 'SN-119', 'Powerful cleaning detergent. منظف قوي للملابس.'),
                                                                                ('Huggies Diapers Size 4', 'حفاضات هجيز مقاس 4', 'SN-120', 'Comfortable diapers for babies. حفاضات مريحة للأطفال.'),
                                                                                ('Lenovo ThinkPad X1', 'لينوفو ThinkPad X1', 'SN-121', 'High-performance business laptop. لابتوب عالي الأداء للأعمال.'),
                                                                                ('Logitech MX Master 3', 'ماوس لوجيتك MX Master 3', 'SN-122', 'Ergonomic wireless mouse. ماوس لاسلكي مريح.'),
                                                                                ('Bose SoundLink Speaker', 'مكبر صوت بوز SoundLink', 'SN-123', 'Portable Bluetooth speaker. مكبر صوت محمول بتقنية البلوتوث.'),
                                                                                ('Asus ROG Zephyrus', 'آسوس ROG Zephyrus', 'SN-124', 'Gaming laptop with powerful specs. لابتوب للألعاب بمواصفات قوية.'),
                                                                                ('Microsoft Surface Pro 9', 'مايكروسوفت سيرفس برو 9', 'SN-125', 'Versatile 2-in-1 laptop. لابتوب 2 في 1 متعدد الاستخدامات.'),
                                                                                ('Nikon D850', 'نيكون D850', 'SN-126', 'High-resolution DSLR camera. كاميرا DSLR عالية الدقة.'),
                                                                                ('Samsung Refrigerator', 'ثلاجة سامسونج', 'SN-127', 'Double-door refrigerator. ثلاجة ببابين.'),
                                                                                ('Huawei MatePad Pro', 'هواوي MatePad Pro', 'SN-128', 'High-performance tablet. تابلت عالي الأداء.'),
                                                                                ('Xiaomi Mi Band 6', 'شاومي Mi Band 6', 'SN-129', 'Smart fitness tracker. متعقب لياقة ذكي.'),
                                                                                ('Beats Studio Buds', 'سماعات بيتس Studio Buds', 'SN-130', 'Wireless noise-cancelling earbuds. سماعات أذن لاسلكية مانعة للضوضاء.'),
                                                                                ('Apple MacBook Air M2', 'آبل ماك بوك إير M2', 'SN-131', 'Lightweight laptop with M2 chip. لابتوب خفيف الوزن بمعالج M2.'),
                                                                                ('HP Envy Printer', 'طابعة HP Envy', 'SN-132', 'All-in-one printer. طابعة متعددة الوظائف.'),
                                                                                ('Sony PS5 Controller', 'يد تحكم PS5 سوني', 'SN-133', 'DualSense wireless controller. وحدة تحكم لاسلكية DualSense.'),
                                                                                ('Anchor Milk Powder', 'حليب بودرة أنكور', 'SN-134', 'Premium milk powder. حليب بودرة فاخر.'),
                                                                                ('Almarai Cheese', 'جبنة المراعي', 'SN-135', 'Delicious cheese variety. أنواع جبنة لذيذة.'),
                                                                                ('Oreo Cookies', 'بسكويت أوريو', 'SN-136', 'Chocolate sandwich cookies. بسكويت محشو بالشوكولاتة.'),
                                                                                ('Samsung Galaxy Watch 5', 'ساعة سامسونج جالاكسي 5', 'SN-137', 'Smartwatch with fitness tracking. ساعة ذكية مع متعقب للياقة.'),
                                                                                ('Nike Air Max 90', 'نايك Air Max 90', 'SN-138', 'Stylish sports shoes. أحذية رياضية أنيقة.'),
                                                                                ('Jordan Hoodie', 'هودي جوردان', 'SN-139', 'Comfortable casual hoodie. هودي مريح.'),
                                                                                ('Apple AirPods Pro 2', 'آبل AirPods Pro 2', 'SN-140', 'Premium noise-cancelling earbuds. سماعات أذن مانعة للضوضاء.'),
                                                                                ('Anker PowerCore Battery', 'بطارية أنكر PowerCore', 'SN-141', 'Portable power bank. بنك طاقة محمول.'),
                                                                                ('Faber-Castell Markers', 'ماركرات فابر كاستل', 'SN-142', 'Set of colorful markers. مجموعة من الماركرات الملونة.'),
                                                                                ('Baby Dove Shampoo', 'شامبو بيبي دوف', 'SN-143', 'Gentle shampoo for babies. شامبو لطيف للأطفال.'),
                                                                                ('Sensodyne Toothpaste', 'معجون أسنان سنسوداين', 'SN-144', 'Toothpaste for sensitive teeth. معجون أسنان للأسنان الحساسة.'),
                                                                                ('IKEA Desk Lamp', 'مصباح مكتب ايكيا', 'SN-145', 'Stylish and functional desk lamp. مصباح مكتب أنيق وعملي.');

-- should be use postgres version that support vector extension (version 16)
-- docker run -it --rm --name postgres-pgv -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres pgvector/pgvector:pg16
-- after creating table and insert sample data you can create vector extension and create index on description_embedding column

CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS hstore;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


ALTER TABLE products ADD description_embedding vector NULL;

CREATE INDEX ON products USING HNSW (description_embedding vector_cosine_ops);