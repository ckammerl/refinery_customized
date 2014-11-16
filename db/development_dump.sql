
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20140929231123');
INSERT INTO "schema_migrations" VALUES('20140929231124');
INSERT INTO "schema_migrations" VALUES('20140929231125');
INSERT INTO "schema_migrations" VALUES('20140929231128');
INSERT INTO "schema_migrations" VALUES('20140929231130');
INSERT INTO "schema_migrations" VALUES('20140929231131');
INSERT INTO "schema_migrations" VALUES('20140929231133');
INSERT INTO "schema_migrations" VALUES('20140929231134');
INSERT INTO "schema_migrations" VALUES('20141027233626');
INSERT INTO "schema_migrations" VALUES('20141028030155');
CREATE TABLE "refinery_roles_users" ("user_id" integer, "role_id" integer);
INSERT INTO "refinery_roles_users" VALUES(1,1);
INSERT INTO "refinery_roles_users" VALUES(1,2);
CREATE TABLE "refinery_roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255));
INSERT INTO "refinery_roles" VALUES(1,'Refinery');
INSERT INTO "refinery_roles" VALUES(2,'Superuser');
CREATE TABLE "refinery_user_plugins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "name" varchar(255), "position" integer);
INSERT INTO "refinery_user_plugins" VALUES(1,1,'refinery_users',2);
INSERT INTO "refinery_user_plugins" VALUES(2,1,'refinery_dashboard',3);
INSERT INTO "refinery_user_plugins" VALUES(3,1,'refinery_images',1);
INSERT INTO "refinery_user_plugins" VALUES(4,1,'refinery_files',4);
INSERT INTO "refinery_user_plugins" VALUES(5,1,'refinery_pages',0);
INSERT INTO "refinery_user_plugins" VALUES(14,1,'termine_aktuelles',13);
INSERT INTO "refinery_user_plugins" VALUES(15,1,'refinerycms-termine_aktuelles',14);
CREATE TABLE "refinery_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255) NOT NULL, "email" varchar(255) NOT NULL, "encrypted_password" varchar(255) NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "sign_in_count" integer, "remember_created_at" datetime, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "slug" varchar(255));
INSERT INTO "refinery_users" VALUES(1,'admin','christiane@kammerl.com','$2a$10$Qit36nsgOq1KQNZvdkp/0u1P74/OfwyDmByfJogKAx/v4ACwSnGS.','2014-10-31 00:20:24.261565','2014-09-29 23:13:44.351612','127.0.0.1','127.0.0.1',2,NULL,NULL,NULL,'2014-09-29 23:13:44.270689','2014-10-31 00:20:24.262664','admin');
CREATE TABLE "refinery_resources" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "file_mime_type" varchar(255), "file_name" varchar(255), "file_size" integer, "file_uid" varchar(255), "file_ext" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "refinery_page_parts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "refinery_page_id" integer, "title" varchar(255), "body" text, "position" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "refinery_page_parts" VALUES(1,1,'Body','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTdfMDRfNDRfNzU3X2hvbWVfYmFtYnVzLnBuZyJdXQ/home_bambus.png" title="Home Bambus" alt="Home Bambus" data-rel="225x255" />

',0,'2014-09-29 23:11:41.723648','2014-10-29 00:40:54.945975');
INSERT INTO "refinery_page_parts" VALUES(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=''/''>Return to the home page</a></p>',0,'2014-09-29 23:11:41.842178','2014-09-29 23:11:41.842178');
INSERT INTO "refinery_page_parts" VALUES(4,3,'Body','<p>einzelarbeit</p>',0,'2014-09-29 23:11:41.904796','2014-10-07 23:30:53.802539');
INSERT INTO "refinery_page_parts" VALUES(5,3,'Side Body','',1,'2014-09-29 23:11:41.914686','2014-10-07 23:30:53.807937');
INSERT INTO "refinery_page_parts" VALUES(6,4,'Body','<p>&lt;p&gt;This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Integer interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.&lt;/p&gt;</p>',0,'2014-09-29 23:31:20.758298','2014-10-28 21:44:30.377740');
INSERT INTO "refinery_page_parts" VALUES(7,4,'Side Body','',1,'2014-09-29 23:31:20.764883','2014-10-28 21:44:30.382036');
INSERT INTO "refinery_page_parts" VALUES(37,9,'headline','<h1>initiatische therapie</h1>',1,'2014-10-13 21:03:22.529250','2014-10-28 21:43:38.586835');
INSERT INTO "refinery_page_parts" VALUES(38,9,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTRfMjdfMDJfMTlfSVRfMi5wbmciXV0/IT_2.png" title="It 2" alt="It 2" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTRfMjZfNTRfMjYzX0lUXzEucG5nIl1d/IT_1.png" title="It 1" alt="It 1" data-rel="225x255" />
',2,'2014-10-13 21:13:34.709386','2014-10-30 20:05:39.814592');
INSERT INTO "refinery_page_parts" VALUES(39,9,'img_box_2','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTVfMjJfMTBfNTUxX2xlaWJhcmJlaXQucG5nIl1d/leibarbeit.png" title="Leibarbeit" alt="Leibarbeit" data-rel="225x255" />',4,'2014-10-13 21:13:34.713233','2014-10-30 20:11:06.461282');
INSERT INTO "refinery_page_parts" VALUES(40,9,'img_box_3','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTVfMjJfMjNfMzc2X2dlc3ByYWVjaC5wbmciXV0/gespraech.png" title="Gespraech" alt="Gespraech" data-rel="225x255" />',6,'2014-10-13 21:13:34.717130','2014-10-30 20:11:28.634240');
INSERT INTO "refinery_page_parts" VALUES(41,9,'text_box_1','<p>Das Geführte Zeichnen basiert auf dem graphischen Ausdruck von Urformen, welche Maria Hippius als „Urformeln des Seins“ erkannte und für das seelenheilkundliche Weggeleit weiter entwickelte. „Geführt“ meint hier „von innen heraus führen lassen“. Mit geschlos- senen Augen in die eigene Tiefe lauschend, geschieht Hinwendung zur inneren Bewegung, die mittels der Zeichenstifte Spuren und Be- wegungen verschiedenster Ausdrucksqualitäten und Formen auf dem Zeichenpapier sichtbar werden lässt. Der Mensch wird hineingenom- men in ein schöpferisches Geschehen, das aus sich selbst heraus Wirk- und Werdekräfte entwickelt.</p>

<p>Durch das Einlassen in diesen immanenten Entwicklungs- und Entfal- tungsprozess kommt der Mensch zunehmend mit sich selbst in Be- rührung, kann er in direkten Kontakt mit seinen tiefen Schichten treten. Dabei werden oft gerade jede Schichten berührt, an denen die Entwicklung ehemals ins Stocken geriet. Menschliche Grundge- fühle wie Freude, Angst, Wut, Trauer usw. finden Ausdruck und for- men sich aus. Das Gestaute oder Verhinderte kann wieder ins Fließen geraten. Ein „Sich-auf-die-Spur-kommen“, ein „Sich-wieder- finden“ wird erfahrbar in einem sich vertiefenden Hineingenommen- Werden, ein „Hinein“ in die eigene Mitte.</p>

<p>Erinnernd und Wahrnehmend treten Lebensbewegungen ins Be- wusstsein, entwickeln sich Ausdrucksmöglichkeiten, geschieht eine Fühlungnahme mit dem eigenen Grund und dem Unbewussten. Im Auf-Sich-Wirken-Lassen tritt der Zeichnende in Bezug zum Ge- schehen. Im Dialog mit dem Begleiter finden Reflexion und Bewusst- werdung statt.</p>


',3,'2014-10-13 21:13:34.721733','2014-10-31 00:03:26.192341');
INSERT INTO "refinery_page_parts" VALUES(42,9,'text_box_2','<p>Inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. </p>',5,'2014-10-13 21:13:34.725935','2014-10-31 00:03:26.196918');
INSERT INTO "refinery_page_parts" VALUES(43,9,'text_box_3','<p>Inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung.</p>',7,'2014-10-13 21:13:34.729428','2014-10-31 00:03:26.200155');
INSERT INTO "refinery_page_parts" VALUES(45,10,'text_box_1','<h3>Psychologische Beratung und Therapeutisches Gespräch</h3>
<p>Hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhalt- lich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung.</p>',3,'2014-10-13 21:21:49.388654','2014-10-28 21:44:07.958530');
INSERT INTO "refinery_page_parts" VALUES(46,10,'headline','<h1>SPIRITUELLE WEGBEGLEITUNG</h1>',1,'2014-10-13 21:21:49.392566','2014-10-28 21:44:07.954998');
INSERT INTO "refinery_page_parts" VALUES(49,10,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTZfNDRfMTJfODc2X3NwaXJpV2VnLnBuZyJdXQ/spiriWeg.png" title="Spiri Weg" alt="Spiri Weg" data-rel="225x255" />',2,'2014-10-13 21:32:22.367028','2014-10-30 20:13:16.659376');
INSERT INTO "refinery_page_parts" VALUES(50,10,'placeholder','<div class="big"></div>',0,'2014-10-13 21:45:05.698860','2014-10-28 21:44:07.952657');
INSERT INTO "refinery_page_parts" VALUES(51,9,'placeholder','',0,'2014-10-13 21:45:55.071231','2014-10-28 21:43:38.583701');
INSERT INTO "refinery_page_parts" VALUES(96,12,'placeholder','',0,'2014-10-14 19:18:57.779983','2014-10-30 22:43:55.606939');
INSERT INTO "refinery_page_parts" VALUES(97,12,'headline','<h1>Seelenbilder</h1>',1,'2014-10-14 19:18:57.783301','2014-10-30 22:43:55.610007');
INSERT INTO "refinery_page_parts" VALUES(98,12,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />',2,'2014-10-14 19:18:57.786228','2014-10-30 22:43:55.611875');
INSERT INTO "refinery_page_parts" VALUES(103,13,'placeholder','',0,'2014-10-14 19:57:54.660863','2014-10-30 23:56:43.479933');
INSERT INTO "refinery_page_parts" VALUES(104,13,'headline','<h1>Wer bin ich</h1>',1,'2014-10-14 19:57:54.665536','2014-10-30 23:56:43.485082');
INSERT INTO "refinery_page_parts" VALUES(105,13,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />',2,'2014-10-14 19:57:54.669181','2014-10-30 23:56:43.487298');
INSERT INTO "refinery_page_parts" VALUES(106,13,'text_box_1','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

',5,'2014-10-14 19:57:54.672327','2014-10-30 23:56:43.492908');
INSERT INTO "refinery_page_parts" VALUES(107,14,'placeholder','',0,'2014-10-14 20:27:03.761960','2014-10-30 22:35:13.324751');
INSERT INTO "refinery_page_parts" VALUES(108,14,'headline','<h1>Holotropes Atmen</h1>',1,'2014-10-14 20:27:03.766947','2014-10-30 22:35:13.330565');
INSERT INTO "refinery_page_parts" VALUES(109,14,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTNfMDhfMzhfMl9ob2xvdHJvcDEucG5nIl1d/holotrop1.png" title="Holotrop1" alt="Holotrop1" data-rel="225x255" width="300" height="397" />',2,'2014-10-14 20:27:03.770148','2014-10-30 22:35:13.333376');
INSERT INTO "refinery_page_parts" VALUES(111,15,'placeholder','',0,'2014-10-14 21:06:20.499252','2014-10-30 23:55:42.141226');
INSERT INTO "refinery_page_parts" VALUES(112,15,'headline','<h1>Verluste und Trauer</h1>',1,'2014-10-14 21:06:20.504818','2014-10-30 23:55:42.143418');
INSERT INTO "refinery_page_parts" VALUES(113,15,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />',2,'2014-10-14 21:06:20.512026','2014-10-30 23:55:42.145469');
INSERT INTO "refinery_page_parts" VALUES(114,15,'text_box_1','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

',5,'2014-10-14 21:06:20.518000','2014-10-30 23:55:42.154226');
INSERT INTO "refinery_page_parts" VALUES(118,7,'placeholder','',0,'2014-10-14 21:41:20.555660','2014-10-28 21:46:36.149424');
INSERT INTO "refinery_page_parts" VALUES(119,7,'headline','<h1>Über mich</h1>',1,'2014-10-14 21:41:20.560580','2014-10-28 21:46:36.154213');
INSERT INTO "refinery_page_parts" VALUES(120,7,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzhfMzhfMzExX21zY2hlbW1lci5wbmciXV0/mschemmer.png" title="Mschemmer" alt="Mschemmer" data-rel="225x255" />',2,'2014-10-14 21:41:20.564055','2014-10-31 19:49:14.899699');
INSERT INTO "refinery_page_parts" VALUES(121,7,'text_box_1','<h3>Marianne Schemmer</h3>
 <div>Initiatische Therapeutin</div>

<p>Seit 1990 spirituelle und psychotherapeutische Begleitung von Menschen in Einzelstunden und in Gruppen auf ganzheitlicher tiefenpsychologischer Basis und seit 2011 Ausbilderin für Trauerbegleiter/innen.</p>

<p>Mehrjährige Tätigkeit auf einer Intensivstation und Leitung einer therapeutischen Wohngruppe.</p>

',3,'2014-10-14 21:41:20.567416','2014-10-31 19:49:14.902825');
INSERT INTO "refinery_page_parts" VALUES(122,7,'img_box_2','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzlfMDNfMzE5X2tvbnRhY3Rfc2NoZW1tZXIucG5nIl1d/kontact_schemmer.png" title="Kontact Schemmer" alt="Kontact Schemmer" data-rel="225x255" />',4,'2014-10-14 21:41:20.571594','2014-10-31 19:49:14.905538');
INSERT INTO "refinery_page_parts" VALUES(123,7,'text_box_2','<p>1985 führte mein Weg das erst Mal ins Dürckheim-Zentrum nach Rütte, wo ich später auch für drei Jahre ganz lebte - eine intensive Zeit der Ausbildung, Vertiefung und erstem tätig werden im Rahmen der Initiatischen Therapie.</p>

<p>1986 war meine erste persönliche Begegnung mit Stanislav Grof und meine erste Erfahrung im Holotropen Atmen, eine von ihm entwickelte Methode zur tiefen Selbsterfahrung in sogenannten Erweiterten Bewusstseinszuständen. Ich nahm regelmäßig an seinen Seminaren teil und ließ mich schließlich über mehrere Jahre, von ihm und seiner Frau Christina in den USA, in Transpersonaler Psychologie und Holotroper Atemarbeit ausbilden.</p>

<p>Dieses sollten bis heute meine beiden Standbeine werden. Es gab viele andere Ausbildungen und Fortbildungen, wo ich gutes Handwerkszeug für die therapeutische Tätigkeit erlernt habe. Nachhaltig wichtig waren aber – und sind die sehr kostbaren Begegnungen mit Lehrern, die aus einer persönlichen Vertiefung und Reife ihr Wissen weitergeben.</p>

<p>Seit meinem ersten Aufenthalt in Rütte fühlte ich mich tief angesprochen von dieser „besonderen Aura“ des ZEN. Es war Geheimnis und doch so wirklich – Erfahrungen mitten im Alltag – ein Spaziergang, ein Blatt, ein Stein, die Zeit – alles so wohltuend anders. Die Strenge des Zen-Meisters, die Achtsamkeit im täglichen Tun, die Tuschbilder…</p>

<p>Somit wurde schon früh in Rütte der Same für die weitere Meditationspraxis gelegt. Ich bin Schülerin des Zen-Meisters Zentatsu Richard Baker Roshi (und leite seit Jahren die Meditation im Stil des Zen in Gruppen an). Auf meinem Weg habe ich auch über viele Jahre wertvolle Erfahrungen mit der indischen Siddha Yoga Meisterin Gurumayi Shidvilasananda (Siddha Yoga Meditation) und dem Meditationslehrer Jack Kornfield (Vipassana Meditation) gemacht, und danke ihnen von Herzen für dieses Weggeleit!</p>
<p>Nach Jahren des Reisens und Mitarbeit und Assistenz bei Retreats mit Stanislav Grof und Jack Kornfield in USA und Schweiz bin ich nun im Münsterland verortet. Ich arbeite in freier Praxis in Ladbergen und am Benediktshof Münster, im Kloster Vinnenberg und der LVHS Freckenhorst.</p>
',5,'2014-10-14 21:41:20.575109','2014-10-31 19:49:14.907922');
INSERT INTO "refinery_page_parts" VALUES(124,5,'placeholder','',0,'2014-10-14 21:50:08.411433','2014-10-28 21:46:06.248995');
INSERT INTO "refinery_page_parts" VALUES(125,5,'headline','<h1>Ausbildung</h1>',1,'2014-10-14 21:50:08.416111','2014-10-28 21:46:06.254033');
INSERT INTO "refinery_page_parts" VALUES(126,5,'img_box_1','<p><img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTdfMDRfNDRfNzU3X2hvbWVfYmFtYnVzLnBuZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXSxbInAiLCJzdHJpcCJdXQ/home_bambus.png" title="Home Bambus" alt="Home Bambus" data-rel="225x255" width="187" height="255" /></p>',2,'2014-10-14 21:50:08.419295','2014-10-31 19:04:02.624911');
INSERT INTO "refinery_page_parts" VALUES(127,5,'text_box_1','<h3>Ausbildung</h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

',3,'2014-10-14 21:50:08.423141','2014-10-31 19:00:39.759497');
INSERT INTO "refinery_page_parts" VALUES(128,8,'placeholder','',0,'2014-10-14 21:56:28.925428','2014-10-28 21:46:50.275851');
INSERT INTO "refinery_page_parts" VALUES(129,8,'headline','<h1>Kontakt</h1>',1,'2014-10-14 21:56:28.930542','2014-10-28 21:46:50.279643');
INSERT INTO "refinery_page_parts" VALUES(130,8,'img_box_1','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzhfMzhfMzExX21zY2hlbW1lci5wbmciXSxbInAiLCJ0aHVtYiIsIjIyNXgyNTU%2BIl0sWyJwIiwic3RyaXAiXV0/mschemmer.png" title="Mschemmer" alt="Mschemmer" data-rel="225x255" />',2,'2014-10-14 21:56:28.933741','2014-10-31 20:00:00.819486');
INSERT INTO "refinery_page_parts" VALUES(131,8,'text_box_1','<h3>PRAXIS FUER INITIATISCHE THERAPIE</h3>

<p>Marianne Schemmer</p>
<p>Lütke Rott 18</p>
<p>49549 Ladbergen</p>

<br />

<p>05485 83 17 70</p>
<p>mschemmer@freenet.de</p>
',3,'2014-10-14 21:56:28.937572','2014-10-31 20:00:00.822779');
INSERT INTO "refinery_page_parts" VALUES(186,19,'event_headline','<h1>Termine 2014 / 2015</h1>',0,'2014-10-28 21:57:53.201016','2014-10-31 19:32:44.747738');
INSERT INTO "refinery_page_parts" VALUES(188,14,'subtitle','<div>„Ein großes Heilritual“</div>',4,'2014-10-30 20:49:35.087474','2014-10-30 22:35:13.339093');
INSERT INTO "refinery_page_parts" VALUES(189,14,'title','<h3>Holotropes Atmen <span class="gruppen_source">® nach Stanislav und Christina Grof</span>
</h3>',3,'2014-10-30 20:49:35.169223','2014-10-30 22:35:13.336887');
INSERT INTO "refinery_page_parts" VALUES(196,14,'img_box_small','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTNfMDhfNDZfMTc1X2hvbG90cm9wMi5wbmciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/holotrop2.png" title="Holotrop2" alt="Holotrop2" data-rel="110x110" />',6,'2014-10-30 22:03:08.128812','2014-10-30 22:35:13.345779');
INSERT INTO "refinery_page_parts" VALUES(197,14,'text_1','<p>In vielen alten Kulturen haben Menschen erweiterte Bewusstseins- räume aufgesucht, um Antwort auf existentielle Fragen des Daseins zu erhalten. Ihnen war das Heilpotential solcher außergewöhnlicher Bewusstseinszustände bekannt und sie entwickelten diverse Metho- den, um sie zu erreichen.</p>

<p>Heilige Rituale wie Tanzen, Trommeln, Singen, Fasten, Meditation und der Gebrauch von psychotropen Pflanzen zählen dazu. Auch der bewusste Einsatz des Atems zählt seit jeher zu einer der wichtigsten Methoden in veränderte Bewusstseinszustände einzutreten.</p>',5,'2014-10-30 22:03:08.136000','2014-10-30 22:35:13.341169');
INSERT INTO "refinery_page_parts" VALUES(198,14,'text_2','<p>Der Arzt und Psychiater Dr. Stanislav Grof erforscht bereits seit über 50 Jahren das Heilpotential außergewöhnlicher Bewusst- seinszustände. Er entwickelte zusammen mit seiner Frau Christina Grof das Holotrope Atmen (Holotropic BreathworkÒ).</p>',7,'2014-10-30 22:03:08.139870','2014-10-30 22:35:13.349040');
INSERT INTO "refinery_page_parts" VALUES(199,14,'text_3','<p>Es handelt sich beim Holotropen Atmen um eine kraftvolle und gleichzeitig sanfte und sichere Methode über den Atem in erweiterte Bewusstseinsräume einzutreten. Unterstützt wird dieser Prozess durch evokative Musik und gezielte Körperarbeit.</p>

<p>Hierdurch erschließen sich tiefe Schichten des Unbewussten. Durch schwierige Lebenserfahrungen ist oft ein Teil unserer Lebenskraft verschlossen und der Zugang zu unserem Wesen verstellt. Das mögliche Erfahren und Integrieren unverarbeiteter Elemente aus unserer Lebensgeschichte, Begegnung mit Tod und Geburt, sowie transpersonale Erfahrungen lassen alte Wunden heilen, uns tiefe Einsicht in Sinn-Zusammenhänge erfahren und uns offen werden für die spirituellen Aspekte des Lebens.</p>

<p>Besonderer Wert liegt darin, in einem geschützten Rahmen dem Einzelnen die Gelegenheit zu bieten die Ebenen der eigenen Seelenwelt möglichst vielfältig erlebbar werden zu lassen, und diesen Prozess so zu begleiten, dass er sich im Alltag förderlich auswirken kann.</p>
',8,'2014-10-30 22:03:08.144207','2014-10-30 22:35:13.351182');
INSERT INTO "refinery_page_parts" VALUES(200,12,'subtitle','<div>Malen aus der eigenen Tiefe</div>',4,'2014-10-30 22:43:55.589008','2014-10-30 22:51:11.628067');
INSERT INTO "refinery_page_parts" VALUES(201,12,'title','<h3>Ausdrucksmalen</h3>',3,'2014-10-30 22:43:55.593005','2014-10-30 22:43:55.614565');
INSERT INTO "refinery_page_parts" VALUES(202,12,'text_1','<p>Das großflächige Malen kann als ein Medium der Initiatischen Wegarbeit eingesetzt werden, um in die eigene Seelentiefe zu loten.</p>
<p>Beim großflächigen Malen ist es möglich, sich auf vielfältige Weise zu erfahren und zu erleben. Dem jeweiligen inneren Impuls folgend, nimmt das, was im Menschen lebt, bewusst oder unbewusst, Gestalt an und wird nach Außen / für den Malenden  sichtbar.</p>
<p>Durch das Einlassen in diesen schöpferischen Entfaltungsprozess kommt der Mensch mit einer tieferen Schicht in Berührung – sowohl mit seiner Freude, Lebenskraft, Kreativität und Liebe, als auch mit seinen Ängsten und alten seelischen Wunden. Deutlich zeigt sich hier im Malprozess, spiegelbildlich für sein Leben, wie dieser Mensch mit unvorhergesehenen Herausforderungen umgehen kann, wenn z.B. das Bild in seinem Werden nach Entscheidung verlangt. Wagt er vertrauensvoll die Entscheidung oder resigniert er, wird handlungsunfähig und bleibt in alten Mustern, Ängsten und Verhinderungen stecken und gibt auf.</p>
<p>In diesen Momenten hat die Arbeitsatmosphäre im Raum stärkende und stützende Wirkung. Gleichzeitig ringen, malen und schaffen noch Andere. Als Begleiterin stehe ich dem Malenden bei, in Momenten wo er am liebsten aufhören möchte oder das  Entstandene zerreißen – in Krisen also, in denen er alleingelassen in alte Muster fallen würde. Ich ermutige ihn weiter zu gehen – sich zu trauen und vertrauen und alte Muster zu überschreiten, d.h. meine Aufgabe als Begleiterin ist es, immer wieder den Prozess zu eröffnen wo er ins Stocken geraten ist, um der sgn. Lebensbewegung, der eigenen Kreativität Ausdruck geben zu können, bis es wirklich im Tiefsten sein Bild geworden ist.</p>
<p>Dem Malenden stehen eine Vielzahl an Materialien zur Verfügung, von Kohle und Kreiden bis zu leuchtenden Gouache- und Aquarellfarben, und je nach Impuls, kann mit Stiften, Fingern, Handflächen, Pinseln od. Schwämmchen gemalt werden – so wie es gerade im Moment für ihn stimmig ist.</p>
<p>Gemalt wird in kleinen Gruppen. Das Malen als Ausdrucks- und Werdeprozess  spricht den ganzen Menschen, als Leib-Seelische Einheit an. Nöte, Ängste, Grenzen und deren Lösungen (Weite, Freiheit, tiefes berührt sein, frei atmen können) werden  körperlich spürbar. Der neu gefundene Umgang mit z.B. engen Situationen wird  zutiefst befriedigend erlebt, als Erfahrung der eigenen Kompetenz (ich kann, ich habe gefunden, ich habe in mir..), bleibt als neu gefundene Möglichkeit  im Menschen verankert und kann sich so förderlich und verwandelnd im täglichen Leben auswirken.</p>
',5,'2014-10-30 22:51:11.631910','2014-10-30 23:35:23.457364');
INSERT INTO "refinery_page_parts" VALUES(203,12,'text_2','<p>Bildprozess und Bildbesprechung<br />
Sich entfalten im schöpferischen Tun</p>
<p>Beim großflächigen Malen kannst du dich auf vielfältige Weise er- Fahren und erleben. Das Tor zum Geheimen kann sich öffnen – die Bilder entstehen von innen her. Bilder aus der Stille, aus der Tiefe Deines Herzens können entstehen und bringen Dich in Fühlung, sowohl mit Deinen Ängsten und alten seelischen Wunden, als auch mit deiner Freude, Lebenskraft, Kreativität und Liebe.</p>


',6,'2014-10-30 22:51:11.637040','2014-10-30 23:06:48.361650');
INSERT INTO "refinery_page_parts" VALUES(204,12,'text_3',' <p>Bildprozess und Bildbesprechung<br />
Sich entfalten im schöpferischen Tun</p>

<p>Ein ganzes Wochenende mit viel Zeit für mehrere Maleinheiten (siehe oben) – der Malprozess hat Zeit sich zu entfalten und wird durch Morgen- und Abendmeditation und Naturerfahrungen unterstützt.</p>

<p>Wache Präsenz in stiller Arbeitsatmosphäre öffnet uns und kann zu einer Vertiefung des gesamten Erlebens führen.</p>

',7,'2014-10-30 22:51:11.641820','2014-10-30 23:06:48.365053');
INSERT INTO "refinery_page_parts" VALUES(207,13,'subtitle','<div>Lorem ipsum</div>',4,'2014-10-30 23:42:17.334065','2014-10-30 23:56:43.490926');
INSERT INTO "refinery_page_parts" VALUES(208,15,'title','<h3>Verluste und Trauer</h3>',3,'2014-10-30 23:54:52.788050','2014-10-30 23:55:42.147357');
INSERT INTO "refinery_page_parts" VALUES(209,15,'subtitle','<div>Lorem ipsum</div>',4,'2014-10-30 23:54:52.793141','2014-10-30 23:55:42.150423');
INSERT INTO "refinery_page_parts" VALUES(210,13,'title','<h3>Wer bin ich</h3>',3,'2014-10-30 23:56:43.466788','2014-10-30 23:56:43.489165');
CREATE TABLE "refinery_pages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "parent_id" integer, "path" varchar(255), "slug" varchar(255), "show_in_menu" boolean DEFAULT 't', "link_url" varchar(255), "menu_match" varchar(255), "deletable" boolean DEFAULT 't', "draft" boolean DEFAULT 'f', "skip_to_first_child" boolean DEFAULT 'f', "lft" integer, "rgt" integer, "depth" integer, "view_template" varchar(255), "layout_template" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "refinery_pages" VALUES(1,NULL,NULL,'home','t','/','^/$','f','f','f',1,4,0,'home',NULL,'2014-09-29 23:11:41.583355','2014-09-30 21:17:10.921557');
INSERT INTO "refinery_pages" VALUES(2,1,NULL,'page-not-found','f',NULL,'^/404$','f','f','f',2,3,1,NULL,NULL,'2014-09-29 23:11:41.780842','2014-09-29 23:11:41.780842');
INSERT INTO "refinery_pages" VALUES(3,NULL,NULL,'einzelarbeit-page','t','',NULL,'t','f','t',5,10,0,'show',NULL,'2014-09-29 23:11:41.874640','2014-10-14 18:44:48.335723');
INSERT INTO "refinery_pages" VALUES(4,NULL,NULL,'gruppen','t','',NULL,'t','f','t',11,20,0,'show',NULL,'2014-09-29 23:31:20.753188','2014-10-14 18:45:50.910189');
INSERT INTO "refinery_pages" VALUES(5,NULL,NULL,'ausbildung','t','',NULL,'t','f','f',21,22,0,'einzelarbeit_wegbegleit',NULL,'2014-09-29 23:31:42.920340','2014-10-14 21:50:08.407777');
INSERT INTO "refinery_pages" VALUES(7,NULL,NULL,'biografie','t','',NULL,'t','f','f',25,26,0,'biografie',NULL,'2014-09-29 23:33:58.215558','2014-10-31 19:52:17.427934');
INSERT INTO "refinery_pages" VALUES(8,NULL,NULL,'kontakt','t','',NULL,'t','f','f',27,28,0,'contact',NULL,'2014-09-29 23:34:11.616983','2014-10-31 21:02:16.572541');
INSERT INTO "refinery_pages" VALUES(9,3,NULL,'initiatische-therapie','t','',NULL,'t','f','f',6,7,1,'einzelarbeit_init',NULL,'2014-09-29 23:36:01.815159','2014-10-14 03:48:22.896695');
INSERT INTO "refinery_pages" VALUES(10,3,NULL,'spirituelle-wegbegleitung','t','',NULL,'t','f','f',8,9,1,'einzelarbeit_wegbegleit',NULL,'2014-09-29 23:38:37.223655','2014-10-14 03:50:55.708986');
INSERT INTO "refinery_pages" VALUES(12,4,NULL,'seelenbilder','t','',NULL,'t','f','f',12,13,1,'gruppen_seelenarbeit',NULL,'2014-10-14 18:46:03.691280','2014-10-14 20:00:38.838723');
INSERT INTO "refinery_pages" VALUES(13,4,NULL,'wer-bin-ich','t','',NULL,'t','f','f',14,15,1,'gruppen_wer_bin_ich',NULL,'2014-10-14 18:46:21.880085','2014-10-30 20:21:56.120064');
INSERT INTO "refinery_pages" VALUES(14,4,NULL,'holotropes_atmen','t','',NULL,'t','f','f',16,17,1,'gruppen_holotrop',NULL,'2014-10-14 18:50:12.587224','2014-10-30 20:59:54.598709');
INSERT INTO "refinery_pages" VALUES(15,4,NULL,'verluste-und-trauer','t','',NULL,'t','f','f',18,19,1,'gruppen_wer_bin_ich',NULL,'2014-10-14 18:50:27.878286','2014-10-30 23:55:42.123169');
INSERT INTO "refinery_pages" VALUES(19,NULL,NULL,'termine-aktuelles--2','t','/termine_aktuelles','^/termine_aktuelles(/|/.+?|)$','f','f','f',23,24,0,'show',NULL,'2014-10-28 03:05:23.253184','2014-10-28 03:06:41.921470');
CREATE TABLE "refinery_page_part_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "refinery_page_part_id" integer, "locale" varchar(255) NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "body" text);
INSERT INTO "refinery_page_part_translations" VALUES(1,1,'en','2014-09-29 23:11:41.738759','2014-10-29 00:40:54.947960','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTdfMDRfNDRfNzU3X2hvbWVfYmFtYnVzLnBuZyJdXQ/home_bambus.png" title="Home Bambus" alt="Home Bambus" data-rel="225x255" />

');
INSERT INTO "refinery_page_part_translations" VALUES(3,3,'en','2014-09-29 23:11:41.847064','2014-09-29 23:11:41.847064','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=''/''>Return to the home page</a></p>');
INSERT INTO "refinery_page_part_translations" VALUES(4,4,'en','2014-09-29 23:11:41.907211','2014-10-07 23:30:53.805692','<p>einzelarbeit</p>');
INSERT INTO "refinery_page_part_translations" VALUES(5,5,'en','2014-09-29 23:11:41.917214','2014-10-07 23:30:53.809736','');
INSERT INTO "refinery_page_part_translations" VALUES(6,6,'en','2014-09-29 23:31:20.762030','2014-09-29 23:31:20.762030','<p>&lt;p&gt;This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Integer interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.&lt;/p&gt;</p>');
INSERT INTO "refinery_page_part_translations" VALUES(7,7,'en','2014-09-29 23:31:20.767774','2014-09-29 23:31:20.767774','');
INSERT INTO "refinery_page_part_translations" VALUES(37,37,'en','2014-10-13 21:03:22.531346','2014-10-13 21:13:34.708161','<h1>initiatische therapie</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(38,38,'en','2014-10-13 21:13:34.711534','2014-10-30 20:05:39.816605','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTRfMjdfMDJfMTlfSVRfMi5wbmciXV0/IT_2.png" title="It 2" alt="It 2" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTRfMjZfNTRfMjYzX0lUXzEucG5nIl1d/IT_1.png" title="It 1" alt="It 1" data-rel="225x255" />
');
INSERT INTO "refinery_page_part_translations" VALUES(39,39,'en','2014-10-13 21:13:34.715249','2014-10-30 20:11:06.464561','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTVfMjJfMTBfNTUxX2xlaWJhcmJlaXQucG5nIl1d/leibarbeit.png" title="Leibarbeit" alt="Leibarbeit" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(40,40,'en','2014-10-13 21:13:34.719683','2014-10-30 20:11:28.636413','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTVfMjJfMjNfMzc2X2dlc3ByYWVjaC5wbmciXV0/gespraech.png" title="Gespraech" alt="Gespraech" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(41,41,'en','2014-10-13 21:13:34.724395','2014-10-31 00:03:26.195151','<p>Das Geführte Zeichnen basiert auf dem graphischen Ausdruck von Urformen, welche Maria Hippius als „Urformeln des Seins“ erkannte und für das seelenheilkundliche Weggeleit weiter entwickelte. „Geführt“ meint hier „von innen heraus führen lassen“. Mit geschlos- senen Augen in die eigene Tiefe lauschend, geschieht Hinwendung zur inneren Bewegung, die mittels der Zeichenstifte Spuren und Be- wegungen verschiedenster Ausdrucksqualitäten und Formen auf dem Zeichenpapier sichtbar werden lässt. Der Mensch wird hineingenom- men in ein schöpferisches Geschehen, das aus sich selbst heraus Wirk- und Werdekräfte entwickelt.</p>

<p>Durch das Einlassen in diesen immanenten Entwicklungs- und Entfal- tungsprozess kommt der Mensch zunehmend mit sich selbst in Be- rührung, kann er in direkten Kontakt mit seinen tiefen Schichten treten. Dabei werden oft gerade jede Schichten berührt, an denen die Entwicklung ehemals ins Stocken geriet. Menschliche Grundge- fühle wie Freude, Angst, Wut, Trauer usw. finden Ausdruck und for- men sich aus. Das Gestaute oder Verhinderte kann wieder ins Fließen geraten. Ein „Sich-auf-die-Spur-kommen“, ein „Sich-wieder- finden“ wird erfahrbar in einem sich vertiefenden Hineingenommen- Werden, ein „Hinein“ in die eigene Mitte.</p>

<p>Erinnernd und Wahrnehmend treten Lebensbewegungen ins Be- wusstsein, entwickeln sich Ausdrucksmöglichkeiten, geschieht eine Fühlungnahme mit dem eigenen Grund und dem Unbewussten. Im Auf-Sich-Wirken-Lassen tritt der Zeichnende in Bezug zum Ge- schehen. Im Dialog mit dem Begleiter finden Reflexion und Bewusst- werdung statt.</p>


');
INSERT INTO "refinery_page_part_translations" VALUES(42,42,'en','2014-10-13 21:13:34.727936','2014-10-31 00:03:26.198797','<p>Inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. </p>');
INSERT INTO "refinery_page_part_translations" VALUES(43,43,'en','2014-10-13 21:13:34.731231','2014-10-31 00:03:26.201423','<p>Inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung.</p>');
INSERT INTO "refinery_page_part_translations" VALUES(45,45,'en','2014-10-13 21:21:49.390944','2014-10-13 21:21:49.390944','<h3>Psychologische Beratung und Therapeutisches Gespräch</h3>
<p>Hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhalt- lich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat in- haltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Be- deutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung. Dies ist ein Blindtext und hat inhaltlich keine Bedeutung.</p>');
INSERT INTO "refinery_page_part_translations" VALUES(46,46,'en','2014-10-13 21:21:49.394291','2014-10-13 21:21:49.394291','<h1>SPIRITUELLE WEGBEGLEITUNG</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(49,49,'en','2014-10-13 21:32:22.371292','2014-10-30 20:13:16.661043','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTZfNDRfMTJfODc2X3NwaXJpV2VnLnBuZyJdXQ/spiriWeg.png" title="Spiri Weg" alt="Spiri Weg" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(50,50,'en','2014-10-13 21:45:05.701058','2014-10-13 21:53:03.475400','<div class="big"></div>');
INSERT INTO "refinery_page_part_translations" VALUES(51,51,'en','2014-10-13 21:45:55.073659','2014-10-13 21:49:14.315628','');
INSERT INTO "refinery_page_part_translations" VALUES(96,96,'en','2014-10-14 19:18:57.781888','2014-10-14 19:18:57.781888','');
INSERT INTO "refinery_page_part_translations" VALUES(97,97,'en','2014-10-14 19:18:57.784939','2014-10-14 20:03:04.676822','<h1>Seelenbilder</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(98,98,'en','2014-10-14 19:18:57.789094','2014-10-30 20:16:23.197394','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(103,103,'en','2014-10-14 19:57:54.663666','2014-10-14 19:57:54.663666','');
INSERT INTO "refinery_page_part_translations" VALUES(104,104,'en','2014-10-14 19:57:54.667661','2014-10-14 20:01:28.125708','<h1>Wer bin ich</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(105,105,'en','2014-10-14 19:57:54.670865','2014-10-30 20:18:25.034664','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(106,106,'en','2014-10-14 19:57:54.674194','2014-10-30 23:42:17.328331','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

');
INSERT INTO "refinery_page_part_translations" VALUES(107,107,'en','2014-10-14 20:27:03.765218','2014-10-14 20:27:03.765218','');
INSERT INTO "refinery_page_part_translations" VALUES(108,108,'en','2014-10-14 20:27:03.768732','2014-10-14 20:27:03.768732','<h1>Holotropes Atmen</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(109,109,'en','2014-10-14 20:27:03.773305','2014-10-30 20:49:35.084600','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTNfMDhfMzhfMl9ob2xvdHJvcDEucG5nIl1d/holotrop1.png" title="Holotrop1" alt="Holotrop1" data-rel="225x255" width="300" height="397" />');
INSERT INTO "refinery_page_part_translations" VALUES(111,111,'en','2014-10-14 21:06:20.502107','2014-10-14 21:06:20.502107','');
INSERT INTO "refinery_page_part_translations" VALUES(112,112,'en','2014-10-14 21:06:20.508608','2014-10-14 21:06:20.508608','<h1>Verluste und Trauer</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(113,113,'en','2014-10-14 21:06:20.515527','2014-10-30 23:54:52.784597','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />
<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTJfMDNfMzVfMjc5X3NlZWxlbmJpbGRlci5wbmciXV0/seelenbilder.png" title="Seelenbilder" alt="Seelenbilder" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(114,114,'en','2014-10-14 21:06:20.520142','2014-10-30 23:54:52.786691','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

');
INSERT INTO "refinery_page_part_translations" VALUES(118,118,'en','2014-10-14 21:41:20.558519','2014-10-14 21:41:20.558519','');
INSERT INTO "refinery_page_part_translations" VALUES(119,119,'en','2014-10-14 21:41:20.562424','2014-10-14 21:41:20.562424','<h1>Über mich</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(120,120,'en','2014-10-14 21:41:20.566005','2014-10-31 19:49:14.901629','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzhfMzhfMzExX21zY2hlbW1lci5wbmciXV0/mschemmer.png" title="Mschemmer" alt="Mschemmer" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(121,121,'en','2014-10-14 21:41:20.569539','2014-10-31 19:49:14.904306','<h3>Marianne Schemmer</h3>
 <div>Initiatische Therapeutin</div>

<p>Seit 1990 spirituelle und psychotherapeutische Begleitung von Menschen in Einzelstunden und in Gruppen auf ganzheitlicher tiefenpsychologischer Basis und seit 2011 Ausbilderin für Trauerbegleiter/innen.</p>

<p>Mehrjährige Tätigkeit auf einer Intensivstation und Leitung einer therapeutischen Wohngruppe.</p>

');
INSERT INTO "refinery_page_part_translations" VALUES(122,122,'en','2014-10-14 21:41:20.573657','2014-10-31 19:49:14.906984','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzlfMDNfMzE5X2tvbnRhY3Rfc2NoZW1tZXIucG5nIl1d/kontact_schemmer.png" title="Kontact Schemmer" alt="Kontact Schemmer" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(123,123,'en','2014-10-14 21:41:20.576992','2014-10-31 19:49:14.908924','<p>1985 führte mein Weg das erst Mal ins Dürckheim-Zentrum nach Rütte, wo ich später auch für drei Jahre ganz lebte - eine intensive Zeit der Ausbildung, Vertiefung und erstem tätig werden im Rahmen der Initiatischen Therapie.</p>

<p>1986 war meine erste persönliche Begegnung mit Stanislav Grof und meine erste Erfahrung im Holotropen Atmen, eine von ihm entwickelte Methode zur tiefen Selbsterfahrung in sogenannten Erweiterten Bewusstseinszuständen. Ich nahm regelmäßig an seinen Seminaren teil und ließ mich schließlich über mehrere Jahre, von ihm und seiner Frau Christina in den USA, in Transpersonaler Psychologie und Holotroper Atemarbeit ausbilden.</p>

<p>Dieses sollten bis heute meine beiden Standbeine werden. Es gab viele andere Ausbildungen und Fortbildungen, wo ich gutes Handwerkszeug für die therapeutische Tätigkeit erlernt habe. Nachhaltig wichtig waren aber – und sind die sehr kostbaren Begegnungen mit Lehrern, die aus einer persönlichen Vertiefung und Reife ihr Wissen weitergeben.</p>

<p>Seit meinem ersten Aufenthalt in Rütte fühlte ich mich tief angesprochen von dieser „besonderen Aura“ des ZEN. Es war Geheimnis und doch so wirklich – Erfahrungen mitten im Alltag – ein Spaziergang, ein Blatt, ein Stein, die Zeit – alles so wohltuend anders. Die Strenge des Zen-Meisters, die Achtsamkeit im täglichen Tun, die Tuschbilder…</p>

<p>Somit wurde schon früh in Rütte der Same für die weitere Meditationspraxis gelegt. Ich bin Schülerin des Zen-Meisters Zentatsu Richard Baker Roshi (und leite seit Jahren die Meditation im Stil des Zen in Gruppen an). Auf meinem Weg habe ich auch über viele Jahre wertvolle Erfahrungen mit der indischen Siddha Yoga Meisterin Gurumayi Shidvilasananda (Siddha Yoga Meditation) und dem Meditationslehrer Jack Kornfield (Vipassana Meditation) gemacht, und danke ihnen von Herzen für dieses Weggeleit!</p>
<p>Nach Jahren des Reisens und Mitarbeit und Assistenz bei Retreats mit Stanislav Grof und Jack Kornfield in USA und Schweiz bin ich nun im Münsterland verortet. Ich arbeite in freier Praxis in Ladbergen und am Benediktshof Münster, im Kloster Vinnenberg und der LVHS Freckenhorst.</p>
');
INSERT INTO "refinery_page_part_translations" VALUES(124,124,'en','2014-10-14 21:50:08.413629','2014-10-14 21:50:08.413629','');
INSERT INTO "refinery_page_part_translations" VALUES(125,125,'en','2014-10-14 21:50:08.417879','2014-10-14 21:50:08.417879','<h1>Ausbildung</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(126,126,'en','2014-10-14 21:50:08.421602','2014-10-31 19:04:02.627276','<p><img src="/system/images/W1siZiIsIjIwMTQvMTAvMDcvMTdfMDRfNDRfNzU3X2hvbWVfYmFtYnVzLnBuZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXSxbInAiLCJzdHJpcCJdXQ/home_bambus.png" title="Home Bambus" alt="Home Bambus" data-rel="225x255" width="187" height="255" /></p>');
INSERT INTO "refinery_page_part_translations" VALUES(127,127,'en','2014-10-14 21:50:08.425049','2014-10-31 19:00:39.762450','<h3>Ausbildung</h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.</p>

');
INSERT INTO "refinery_page_part_translations" VALUES(128,128,'en','2014-10-14 21:56:28.928520','2014-10-14 21:56:28.928520','');
INSERT INTO "refinery_page_part_translations" VALUES(129,129,'en','2014-10-14 21:56:28.932409','2014-10-14 21:56:28.932409','<h1>Kontakt</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(130,130,'en','2014-10-14 21:56:28.935922','2014-10-31 20:00:00.821173','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTRfMzhfMzhfMzExX21zY2hlbW1lci5wbmciXSxbInAiLCJ0aHVtYiIsIjIyNXgyNTU%2BIl0sWyJwIiwic3RyaXAiXV0/mschemmer.png" title="Mschemmer" alt="Mschemmer" data-rel="225x255" />');
INSERT INTO "refinery_page_part_translations" VALUES(131,131,'en','2014-10-14 21:56:28.939367','2014-10-31 20:00:00.824390','<h3>PRAXIS FUER INITIATISCHE THERAPIE</h3>

<p>Marianne Schemmer</p>
<p>Lütke Rott 18</p>
<p>49549 Ladbergen</p>

<br />

<p>05485 83 17 70</p>
<p>mschemmer@freenet.de</p>
');
INSERT INTO "refinery_page_part_translations" VALUES(186,186,'en','2014-10-28 21:57:53.205290','2014-10-31 19:32:44.749449','<h1>Termine 2014 / 2015</h1>');
INSERT INTO "refinery_page_part_translations" VALUES(188,188,'en','2014-10-30 20:49:35.165779','2014-10-30 20:52:48.840563','<div>„Ein großes Heilritual“</div>');
INSERT INTO "refinery_page_part_translations" VALUES(189,189,'en','2014-10-30 20:49:35.172059','2014-10-30 20:49:35.172059','<h3>Holotropes Atmen <span class="gruppen_source">® nach Stanislav und Christina Grof</span>
</h3>');
INSERT INTO "refinery_page_part_translations" VALUES(196,196,'en','2014-10-30 22:03:08.132948','2014-10-30 22:23:09.224922','<img src="/system/images/W1siZiIsIjIwMTQvMTAvMTQvMTNfMDhfNDZfMTc1X2hvbG90cm9wMi5wbmciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/holotrop2.png" title="Holotrop2" alt="Holotrop2" data-rel="110x110" />');
INSERT INTO "refinery_page_part_translations" VALUES(197,197,'en','2014-10-30 22:03:08.138303','2014-10-30 22:03:08.138303','<p>In vielen alten Kulturen haben Menschen erweiterte Bewusstseins- räume aufgesucht, um Antwort auf existentielle Fragen des Daseins zu erhalten. Ihnen war das Heilpotential solcher außergewöhnlicher Bewusstseinszustände bekannt und sie entwickelten diverse Metho- den, um sie zu erreichen.</p>

<p>Heilige Rituale wie Tanzen, Trommeln, Singen, Fasten, Meditation und der Gebrauch von psychotropen Pflanzen zählen dazu. Auch der bewusste Einsatz des Atems zählt seit jeher zu einer der wichtigsten Methoden in veränderte Bewusstseinszustände einzutreten.</p>');
INSERT INTO "refinery_page_part_translations" VALUES(198,198,'en','2014-10-30 22:03:08.142263','2014-10-30 22:03:08.142263','<p>Der Arzt und Psychiater Dr. Stanislav Grof erforscht bereits seit über 50 Jahren das Heilpotential außergewöhnlicher Bewusst- seinszustände. Er entwickelte zusammen mit seiner Frau Christina Grof das Holotrope Atmen (Holotropic BreathworkÒ).</p>');
INSERT INTO "refinery_page_part_translations" VALUES(199,199,'en','2014-10-30 22:03:08.147729','2014-10-30 22:03:08.147729','<p>Es handelt sich beim Holotropen Atmen um eine kraftvolle und gleichzeitig sanfte und sichere Methode über den Atem in erweiterte Bewusstseinsräume einzutreten. Unterstützt wird dieser Prozess durch evokative Musik und gezielte Körperarbeit.</p>

<p>Hierdurch erschließen sich tiefe Schichten des Unbewussten. Durch schwierige Lebenserfahrungen ist oft ein Teil unserer Lebenskraft verschlossen und der Zugang zu unserem Wesen verstellt. Das mögliche Erfahren und Integrieren unverarbeiteter Elemente aus unserer Lebensgeschichte, Begegnung mit Tod und Geburt, sowie transpersonale Erfahrungen lassen alte Wunden heilen, uns tiefe Einsicht in Sinn-Zusammenhänge erfahren und uns offen werden für die spirituellen Aspekte des Lebens.</p>

<p>Besonderer Wert liegt darin, in einem geschützten Rahmen dem Einzelnen die Gelegenheit zu bieten die Ebenen der eigenen Seelenwelt möglichst vielfältig erlebbar werden zu lassen, und diesen Prozess so zu begleiten, dass er sich im Alltag förderlich auswirken kann.</p>
');
INSERT INTO "refinery_page_part_translations" VALUES(200,200,'en','2014-10-30 22:43:55.591399','2014-10-30 22:51:11.630326','<div>Malen aus der eigenen Tiefe</div>');
INSERT INTO "refinery_page_part_translations" VALUES(201,201,'en','2014-10-30 22:43:55.594783','2014-10-30 22:43:55.594783','<h3>Ausdrucksmalen</h3>');
INSERT INTO "refinery_page_part_translations" VALUES(202,202,'en','2014-10-30 22:51:11.634449','2014-10-30 23:35:23.459302','<p>Das großflächige Malen kann als ein Medium der Initiatischen Wegarbeit eingesetzt werden, um in die eigene Seelentiefe zu loten.</p>
<p>Beim großflächigen Malen ist es möglich, sich auf vielfältige Weise zu erfahren und zu erleben. Dem jeweiligen inneren Impuls folgend, nimmt das, was im Menschen lebt, bewusst oder unbewusst, Gestalt an und wird nach Außen / für den Malenden  sichtbar.</p>
<p>Durch das Einlassen in diesen schöpferischen Entfaltungsprozess kommt der Mensch mit einer tieferen Schicht in Berührung – sowohl mit seiner Freude, Lebenskraft, Kreativität und Liebe, als auch mit seinen Ängsten und alten seelischen Wunden. Deutlich zeigt sich hier im Malprozess, spiegelbildlich für sein Leben, wie dieser Mensch mit unvorhergesehenen Herausforderungen umgehen kann, wenn z.B. das Bild in seinem Werden nach Entscheidung verlangt. Wagt er vertrauensvoll die Entscheidung oder resigniert er, wird handlungsunfähig und bleibt in alten Mustern, Ängsten und Verhinderungen stecken und gibt auf.</p>
<p>In diesen Momenten hat die Arbeitsatmosphäre im Raum stärkende und stützende Wirkung. Gleichzeitig ringen, malen und schaffen noch Andere. Als Begleiterin stehe ich dem Malenden bei, in Momenten wo er am liebsten aufhören möchte oder das  Entstandene zerreißen – in Krisen also, in denen er alleingelassen in alte Muster fallen würde. Ich ermutige ihn weiter zu gehen – sich zu trauen und vertrauen und alte Muster zu überschreiten, d.h. meine Aufgabe als Begleiterin ist es, immer wieder den Prozess zu eröffnen wo er ins Stocken geraten ist, um der sgn. Lebensbewegung, der eigenen Kreativität Ausdruck geben zu können, bis es wirklich im Tiefsten sein Bild geworden ist.</p>
<p>Dem Malenden stehen eine Vielzahl an Materialien zur Verfügung, von Kohle und Kreiden bis zu leuchtenden Gouache- und Aquarellfarben, und je nach Impuls, kann mit Stiften, Fingern, Handflächen, Pinseln od. Schwämmchen gemalt werden – so wie es gerade im Moment für ihn stimmig ist.</p>
<p>Gemalt wird in kleinen Gruppen. Das Malen als Ausdrucks- und Werdeprozess  spricht den ganzen Menschen, als Leib-Seelische Einheit an. Nöte, Ängste, Grenzen und deren Lösungen (Weite, Freiheit, tiefes berührt sein, frei atmen können) werden  körperlich spürbar. Der neu gefundene Umgang mit z.B. engen Situationen wird  zutiefst befriedigend erlebt, als Erfahrung der eigenen Kompetenz (ich kann, ich habe gefunden, ich habe in mir..), bleibt als neu gefundene Möglichkeit  im Menschen verankert und kann sich so förderlich und verwandelnd im täglichen Leben auswirken.</p>
');
INSERT INTO "refinery_page_part_translations" VALUES(203,203,'en','2014-10-30 22:51:11.640060','2014-10-30 23:06:48.363521','<p>Bildprozess und Bildbesprechung<br />
Sich entfalten im schöpferischen Tun</p>
<p>Beim großflächigen Malen kannst du dich auf vielfältige Weise er- Fahren und erleben. Das Tor zum Geheimen kann sich öffnen – die Bilder entstehen von innen her. Bilder aus der Stille, aus der Tiefe Deines Herzens können entstehen und bringen Dich in Fühlung, sowohl mit Deinen Ängsten und alten seelischen Wunden, als auch mit deiner Freude, Lebenskraft, Kreativität und Liebe.</p>


');
INSERT INTO "refinery_page_part_translations" VALUES(204,204,'en','2014-10-30 22:51:11.643712','2014-10-30 23:06:48.366194',' <p>Bildprozess und Bildbesprechung<br />
Sich entfalten im schöpferischen Tun</p>

<p>Ein ganzes Wochenende mit viel Zeit für mehrere Maleinheiten (siehe oben) – der Malprozess hat Zeit sich zu entfalten und wird durch Morgen- und Abendmeditation und Naturerfahrungen unterstützt.</p>

<p>Wache Präsenz in stiller Arbeitsatmosphäre öffnet uns und kann zu einer Vertiefung des gesamten Erlebens führen.</p>

');
INSERT INTO "refinery_page_part_translations" VALUES(207,207,'en','2014-10-30 23:42:17.335869','2014-10-30 23:43:15.828054','<div>Lorem ipsum</div>');
INSERT INTO "refinery_page_part_translations" VALUES(208,208,'en','2014-10-30 23:54:52.791130','2014-10-30 23:54:52.791130','<h3>Verluste und Trauer</h3>');
INSERT INTO "refinery_page_part_translations" VALUES(209,209,'en','2014-10-30 23:54:52.795212','2014-10-30 23:54:52.795212','<div>Lorem ipsum</div>');
INSERT INTO "refinery_page_part_translations" VALUES(210,210,'en','2014-10-30 23:56:43.468978','2014-10-30 23:56:43.468978','<h3>Wer bin ich</h3>');
CREATE TABLE "refinery_page_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "refinery_page_id" integer, "locale" varchar(255) NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "title" varchar(255), "custom_slug" varchar(255), "menu_title" varchar(255), "slug" varchar(255));
INSERT INTO "refinery_page_translations" VALUES(1,1,'en','2014-09-29 23:11:41.539259','2014-09-30 21:17:10.926382','Home',NULL,'Home','home');
INSERT INTO "refinery_page_translations" VALUES(2,2,'en','2014-09-29 23:11:41.774053','2014-09-29 23:11:41.783327','Page not found',NULL,NULL,'page-not-found');
INSERT INTO "refinery_page_translations" VALUES(3,3,'en','2014-09-29 23:11:41.870406','2014-10-14 18:44:48.337903','Einzelarbeit',NULL,'','einzelarbeit-page');
INSERT INTO "refinery_page_translations" VALUES(4,4,'en','2014-09-29 23:31:20.744855','2014-09-29 23:31:20.755462','Gruppen',NULL,'','gruppen');
INSERT INTO "refinery_page_translations" VALUES(5,5,'en','2014-09-29 23:31:42.912869','2014-09-29 23:31:42.923260','Ausbildung',NULL,'','ausbildung');
INSERT INTO "refinery_page_translations" VALUES(7,7,'en','2014-09-29 23:33:58.212177','2014-09-29 23:33:58.217182','Biografie',NULL,'','biografie');
INSERT INTO "refinery_page_translations" VALUES(8,8,'en','2014-09-29 23:34:11.612776','2014-09-29 23:34:11.618848','Kontakt',NULL,'','kontakt');
INSERT INTO "refinery_page_translations" VALUES(9,9,'en','2014-09-29 23:36:01.809325','2014-09-29 23:36:01.817115','Initiatische Therapie',NULL,'','initiatische-therapie');
INSERT INTO "refinery_page_translations" VALUES(10,10,'en','2014-09-29 23:38:37.220279','2014-09-29 23:38:37.225643','Spirituelle Wegbegleitung',NULL,'','spirituelle-wegbegleitung');
INSERT INTO "refinery_page_translations" VALUES(12,12,'en','2014-10-14 18:46:03.687646','2014-10-14 20:00:38.843998','Seelenbilder ',NULL,'','seelenbilder');
INSERT INTO "refinery_page_translations" VALUES(13,13,'en','2014-10-14 18:46:21.876411','2014-10-14 18:46:21.883213','Wer bin ich',NULL,'','wer-bin-ich');
INSERT INTO "refinery_page_translations" VALUES(14,14,'en','2014-10-14 18:50:12.583217','2014-10-30 20:59:54.601008','Holotropes_Atmen',NULL,'','holotropes_atmen');
INSERT INTO "refinery_page_translations" VALUES(15,15,'en','2014-10-14 18:50:27.874004','2014-10-14 18:50:27.880670','Verluste und Trauer',NULL,'','verluste-und-trauer');
INSERT INTO "refinery_page_translations" VALUES(19,19,'en','2014-10-28 03:05:23.203830','2014-10-28 03:06:41.924068','Termine - Aktuelles',NULL,'','termine-aktuelles--2');
CREATE TABLE "refinery_images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "image_mime_type" varchar(255), "image_name" varchar(255), "image_size" integer, "image_width" integer, "image_height" integer, "image_uid" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "refinery_images" VALUES(3,'image/png','draft_banner.png',69240,828,205,'2014/09/29/18_22_40_207_draft_banner.png','2014-09-30 01:22:40.209323','2014-09-30 01:22:40.209323');
INSERT INTO "refinery_images" VALUES(12,'image/png','IT_1.png',304805,465,305,'2014/10/07/14_26_54_263_IT_1.png','2014-10-07 21:26:54.265689','2014-10-07 21:26:54.265689');
INSERT INTO "refinery_images" VALUES(13,'image/png','IT_2.png',266806,465,305,'2014/10/07/14_27_02_19_IT_2.png','2014-10-07 21:27:02.020827','2014-10-07 21:27:02.020827');
INSERT INTO "refinery_images" VALUES(15,'image/png','leibarbeit.png',134335,355,289,'2014/10/07/15_22_10_551_leibarbeit.png','2014-10-07 22:22:10.553525','2014-10-07 22:22:10.553525');
INSERT INTO "refinery_images" VALUES(16,'image/png','gespraech.png',123964,355,239,'2014/10/07/15_22_23_376_gespraech.png','2014-10-07 22:22:23.378324','2014-10-07 22:22:23.378324');
INSERT INTO "refinery_images" VALUES(17,'image/png','spiriWeg.png',215653,300,397,'2014/10/07/16_44_12_876_spiriWeg.png','2014-10-07 23:44:12.900799','2014-10-07 23:44:12.900799');
INSERT INTO "refinery_images" VALUES(18,'image/png','home_bambus.png',314020,335,456,'2014/10/07/17_04_44_757_home_bambus.png','2014-10-08 00:04:44.781682','2014-10-08 00:04:44.781682');
INSERT INTO "refinery_images" VALUES(19,'image/png','logo_hell.png',50398,475,338,'2014/10/08/12_28_52_23_logo_hell.png','2014-10-08 19:28:52.046590','2014-10-08 19:28:52.046590');
INSERT INTO "refinery_images" VALUES(20,'image/png','logo_dunkel.png',20025,237,169,'2014/10/08/12_29_01_639_logo_dunkel.png','2014-10-08 19:29:01.641551','2014-10-08 19:29:01.641551');
INSERT INTO "refinery_images" VALUES(21,'image/png','banner.png',160290,1507,375,'2014/10/08/12_37_42_141_banner.png','2014-10-08 19:37:42.143033','2014-10-08 19:37:42.143033');
INSERT INTO "refinery_images" VALUES(22,'image/png','seelenbilder.png',298595,465,305,'2014/10/14/12_03_35_279_seelenbilder.png','2014-10-14 19:03:35.335138','2014-10-14 19:03:35.335138');
INSERT INTO "refinery_images" VALUES(23,'image/png','holotrop1.png',180375,300,397,'2014/10/14/13_08_38_2_holotrop1.png','2014-10-14 20:08:38.003617','2014-10-14 20:08:38.003617');
INSERT INTO "refinery_images" VALUES(24,'image/png','holotrop2.png',105407,252,242,'2014/10/14/13_08_46_175_holotrop2.png','2014-10-14 20:08:46.176604','2014-10-14 20:08:46.176604');
INSERT INTO "refinery_images" VALUES(25,'image/png','mschemmer.png',174190,362,307,'2014/10/14/14_38_38_311_mschemmer.png','2014-10-14 21:38:38.312667','2014-10-14 21:38:38.312667');
INSERT INTO "refinery_images" VALUES(26,'image/png','kontact_schemmer.png',298771,300,397,'2014/10/14/14_39_03_319_kontact_schemmer.png','2014-10-14 21:39:03.320635','2014-10-14 21:39:03.320635');
CREATE TABLE "seo_meta" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "seo_meta_id" integer, "seo_meta_type" varchar(255), "browser_title" varchar(255), "meta_description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "seo_meta" VALUES(1,1,'Refinery::Page::Translation','','','2014-09-29 23:11:41.577252','2014-09-30 00:47:26.070448');
INSERT INTO "seo_meta" VALUES(2,2,'Refinery::Page::Translation',NULL,NULL,'2014-09-29 23:11:41.777529','2014-09-29 23:11:41.777529');
INSERT INTO "seo_meta" VALUES(3,3,'Refinery::Page::Translation','','','2014-09-29 23:11:41.872704','2014-09-29 23:30:45.641708');
INSERT INTO "seo_meta" VALUES(4,4,'Refinery::Page::Translation','','','2014-09-29 23:31:20.747538','2014-09-29 23:31:20.747538');
INSERT INTO "seo_meta" VALUES(5,5,'Refinery::Page::Translation','','','2014-09-29 23:31:42.915662','2014-09-29 23:31:42.915662');
INSERT INTO "seo_meta" VALUES(7,7,'Refinery::Page::Translation','','','2014-09-29 23:33:58.213729','2014-09-29 23:33:58.213729');
INSERT INTO "seo_meta" VALUES(8,8,'Refinery::Page::Translation','','','2014-09-29 23:34:11.614526','2014-09-29 23:34:11.614526');
INSERT INTO "seo_meta" VALUES(9,9,'Refinery::Page::Translation','','','2014-09-29 23:36:01.812084','2014-09-29 23:36:01.812084');
INSERT INTO "seo_meta" VALUES(10,10,'Refinery::Page::Translation','','','2014-09-29 23:38:37.221828','2014-09-29 23:38:37.221828');
INSERT INTO "seo_meta" VALUES(12,12,'Refinery::Page::Translation','','','2014-10-14 18:46:03.689255','2014-10-14 18:46:03.689255');
INSERT INTO "seo_meta" VALUES(13,13,'Refinery::Page::Translation','','','2014-10-14 18:46:21.877991','2014-10-14 18:46:21.877991');
INSERT INTO "seo_meta" VALUES(14,14,'Refinery::Page::Translation','','','2014-10-14 18:50:12.584764','2014-10-14 18:50:12.584764');
INSERT INTO "seo_meta" VALUES(15,15,'Refinery::Page::Translation','','','2014-10-14 18:50:27.875892','2014-10-14 18:50:27.875892');
INSERT INTO "seo_meta" VALUES(19,19,'Refinery::Page::Translation','','','2014-10-28 03:05:23.249080','2014-10-28 03:06:41.925070');
CREATE TABLE "refinery_termine_aktuelles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "subtitle" varchar(255), "location" varchar(255), "description" text, "start_date" date, "end_date" date, "start_time" time, "end_time" time, "position" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "refinery_termine_aktuelles" VALUES(1,'Jahreswechsel im Kloster ','ZEN – Meditation','Kloster Vinnenberg                                        ','','2014-12-29','2015-01-01','2000-01-01 18:00:00.000000','2000-01-01 18:00:00.000000',0,'2014-10-28 03:07:43.029917','2014-10-31 20:53:57.963344');
INSERT INTO "refinery_termine_aktuelles" VALUES(2,'Meditation im Stil des ZEN ','Sitzen in Stille und Gehmeditation','Benediktshof Münster','<p>Zazen – Kinhin – Zazen</p>','2015-01-07','2015-01-07','2014-10-28 20:00:00.000000','2014-10-28 21:00:00.000000',1,'2014-10-28 03:08:51.996083','2014-10-28 03:08:51.996083');
INSERT INTO "refinery_termine_aktuelles" VALUES(3,'Seelenbilder Ausdrucksmalen','Bildprozess und Bildbesprechung','Benediktshof Münster','<p>Bilder sind die Sprache der Seele und helfen uns einen vertiefenden und verständnisvollen Umgang mit uns selbst im Prozess der Selbstfindung und Selbstwerdung zu finden.</p>','2015-01-11','2015-01-11','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',2,'2014-10-28 03:31:29.028326','2014-10-28 23:26:26.520789');
INSERT INTO "refinery_termine_aktuelles" VALUES(6,'Ausbildung zum Trauerbegleiter','Große Basisqualifikation','LVHS Freckenhorst ','<p>geschlossene Gruppe</p>','2015-01-16','2015-01-18','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',3,'2014-10-28 19:51:28.058492','2014-10-28 23:27:15.715488');
INSERT INTO "refinery_termine_aktuelles" VALUES(7,'ZEN - Meditationstag ','Stille und Achtsamkeit ','Benediktshof Münster','<p>Einführung für Anfänger und vertiefend für Geübte  </p>','2015-01-31','2015-01-31','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',4,'2014-10-28 19:52:48.404069','2014-10-28 23:27:34.632269');
INSERT INTO "refinery_termine_aktuelles" VALUES(8,'Seelenbilder Ausdrucksmalen ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-02-01','2015-02-01','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',5,'2014-10-28 19:59:17.592545','2014-10-28 23:26:46.475277');
INSERT INTO "refinery_termine_aktuelles" VALUES(9,'Wer bin ich - Wo stehe ich - Was ist meine Aufgabe ','','Benediktshof Münster','<p>Vertiefende Arbeit zu diesen grundlegenden Fragen der <br />existentiellen Sinnsuche</p>','2015-02-06','2015-02-08','2014-10-28 18:00:00.000000','2014-10-28 18:00:00.000000',6,'2014-10-28 20:01:37.649315','2014-10-28 20:06:22.476670');
INSERT INTO "refinery_termine_aktuelles" VALUES(10,'Seelenbilder Ausdrucksmalen    ','Bildprozess und Bildbesprechung','Benediktshof Münster','<p>Wie Maltage, aber mit mehr Zeit des Nachspürens und des sich Entwickelns, Zeiten in der Natur und Zeiten der Meditation</p>','2015-02-13','2015-02-15','2014-10-28 18:00:00.000000','2014-10-28 18:00:00.000000',7,'2014-10-28 20:04:48.307776','2014-10-28 23:30:45.869189');
INSERT INTO "refinery_termine_aktuelles" VALUES(11,'Ausbildung zum Trauerbegleiter ','Große Basisqualifikation','LVHS Freckenhorst ','<p>geschlossene Gruppe</p>','2015-03-20','2015-03-22','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',8,'2014-10-28 20:09:27.183107','2014-10-28 23:28:54.610847');
INSERT INTO "refinery_termine_aktuelles" VALUES(12,'ZEN – Meditationstag ','Stille und Achtsamkeit ','Benediktshof Münster','<p>Einführung für Anfänger und vertiefend für Geübte  </p>','2015-03-28','2015-03-28','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',9,'2014-10-28 20:15:04.205239','2014-10-28 23:29:13.146384');
INSERT INTO "refinery_termine_aktuelles" VALUES(13,'Seelenbilder Ausdrucksmalen   ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-03-29','2015-03-29','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',10,'2014-10-28 20:16:14.157509','2014-10-28 23:29:38.835139');
INSERT INTO "refinery_termine_aktuelles" VALUES(14,'Seelenbilder Ausdrucksmalen     ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-04-26','2015-04-26','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',11,'2014-10-28 20:17:16.417833','2014-10-28 23:31:12.778673');
INSERT INTO "refinery_termine_aktuelles" VALUES(15,'Ausbildung zum Trauerbegleiter  ','Große Basisqualifikation','LVHS Freckenhorst','<p>geschlossene Gruppe</p>','2015-05-22','2015-05-24','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',12,'2014-10-28 20:19:58.024040','2014-10-28 23:30:05.961337');
INSERT INTO "refinery_termine_aktuelles" VALUES(16,'Seelenbilder Ausdrucksmalen  ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-05-31','2015-05-31','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',13,'2014-10-28 20:20:57.275462','2014-10-28 23:31:38.560879');
INSERT INTO "refinery_termine_aktuelles" VALUES(17,'Seelenbilder Ausdrucksmalen        ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-06-12','2015-06-12','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',14,'2014-10-28 20:21:50.942621','2014-10-28 23:32:09.355286');
INSERT INTO "refinery_termine_aktuelles" VALUES(18,'Seelenbilder Ausdrucksmalen         ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-07-19','2015-07-19','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',15,'2014-10-28 20:22:36.381125','2014-10-28 23:32:27.404648');
INSERT INTO "refinery_termine_aktuelles" VALUES(19,'Ausbildung zum Trauerbegleiter   ','Große Basisqualifikation','LVHS Freckenhorst ','<p>geschlossene Gruppe</p>','2015-07-31','2015-08-02','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',16,'2014-10-28 20:24:20.313983','2014-10-28 23:32:46.277327');
INSERT INTO "refinery_termine_aktuelles" VALUES(20,'Seelenbilder Ausdrucksmalen       ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-08-23','2015-08-23','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',17,'2014-10-28 20:26:23.951319','2014-10-28 23:37:20.385256');
INSERT INTO "refinery_termine_aktuelles" VALUES(21,'Ausbildung zum Trauerbegleiter    ','Große Basisqualifikation','LVHS Freckenhorst ','<p>geschlossene Gruppe</p>','2015-08-28','2015-08-30','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',18,'2014-10-28 20:27:20.270085','2014-10-28 23:33:24.739839');
INSERT INTO "refinery_termine_aktuelles" VALUES(22,'ZEN - Meditationstag  ','Stille und Achtsamkeit ','Benediktshof Münster','<p>Einführung für Anfänger und vertiefend für Geübte  </p>','2015-09-12','2015-09-12','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',19,'2014-10-28 20:28:38.088158','2014-10-28 23:34:15.587269');
INSERT INTO "refinery_termine_aktuelles" VALUES(23,'Seelenbilder Ausdrucksmalen                   ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-09-13','2015-09-13','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',20,'2014-10-28 20:29:29.566672','2014-10-28 23:38:03.707131');
INSERT INTO "refinery_termine_aktuelles" VALUES(24,'ZEN - Meditationswochenende','Stille – Achtsamkeit – Vertiefung','Benediktshof Münster','','2015-10-16','2015-10-18','2014-10-28 18:00:00.000000','2014-10-28 18:00:00.000000',21,'2014-10-28 20:32:20.094516','2014-10-28 20:32:20.094516');
INSERT INTO "refinery_termine_aktuelles" VALUES(25,'Seelenbilder Ausdrucksmalen                     ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-10-25','2015-10-25','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',22,'2014-10-28 20:33:21.505799','2014-10-28 23:38:22.529422');
INSERT INTO "refinery_termine_aktuelles" VALUES(26,'ZEN - Meditationstag   ','Stille und Achtsamkeit ','Benediktshof Münster','<p>Einführung für Anfänger und vertiefend für Geübte  </p>','2015-11-14','2015-11-14','2014-10-28 09:00:00.000000','2014-10-28 16:00:00.000000',23,'2014-10-28 20:34:37.330935','2014-10-28 23:38:40.341842');
INSERT INTO "refinery_termine_aktuelles" VALUES(27,'Seelenbilder Ausdrucksmalen      ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-11-15','2015-11-15','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',24,'2014-10-28 20:35:30.244244','2014-10-28 23:38:57.268555');
INSERT INTO "refinery_termine_aktuelles" VALUES(28,'Verluste und Trauer auf meinem Lebensweg ','Trauerbegleitung','Benediktshof Münster','<p>Für Menschen, die einen Ort suchen ihrer Trauer Raum zu geben </p>','2015-11-27','2015-11-29','2014-10-28 18:00:00.000000','2014-10-28 18:00:00.000000',25,'2014-10-28 20:37:02.918189','2014-10-29 00:28:26.588604');
INSERT INTO "refinery_termine_aktuelles" VALUES(29,'Seelenbilder Ausdrucksmalen               ','Bildprozess und Bildbesprechung','Benediktshof Münster','','2015-12-06','2015-12-06','2014-10-28 09:00:00.000000','2014-10-28 18:00:00.000000',26,'2014-10-28 20:37:51.681727','2014-10-28 23:39:17.152319');
INSERT INTO "refinery_termine_aktuelles" VALUES(30,'Jahreswechsel im Kloster','','Kloster Vinnenberg                                        ','','2015-12-29','2016-01-01','2014-10-28 16:30:00.000000','2014-10-28 16:30:00.000000',27,'2014-10-28 20:39:58.877239','2014-10-28 23:25:35.729037');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('refinery_page_translations',19);
INSERT INTO "sqlite_sequence" VALUES('seo_meta',19);
INSERT INTO "sqlite_sequence" VALUES('refinery_pages',19);
INSERT INTO "sqlite_sequence" VALUES('refinery_page_parts',211);
INSERT INTO "sqlite_sequence" VALUES('refinery_page_part_translations',211);
INSERT INTO "sqlite_sequence" VALUES('refinery_roles',2);
INSERT INTO "sqlite_sequence" VALUES('refinery_users',1);
INSERT INTO "sqlite_sequence" VALUES('refinery_user_plugins',15);
INSERT INTO "sqlite_sequence" VALUES('refinery_images',26);
INSERT INTO "sqlite_sequence" VALUES('refinery_termine_aktuelles',30);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_refinery_roles_users_on_role_id_and_user_id" ON "refinery_roles_users" ("role_id", "user_id");
CREATE INDEX "index_refinery_roles_users_on_user_id_and_role_id" ON "refinery_roles_users" ("user_id", "role_id");
CREATE INDEX "index_refinery_user_plugins_on_name" ON "refinery_user_plugins" ("name");
CREATE UNIQUE INDEX "index_refinery_user_plugins_on_user_id_and_name" ON "refinery_user_plugins" ("user_id", "name");
CREATE INDEX "index_refinery_users_on_id" ON "refinery_users" ("id");
CREATE INDEX "index_refinery_users_on_slug" ON "refinery_users" ("slug");
CREATE INDEX "index_refinery_page_parts_on_id" ON "refinery_page_parts" ("id");
CREATE INDEX "index_refinery_page_parts_on_refinery_page_id" ON "refinery_page_parts" ("refinery_page_id");
CREATE INDEX "index_refinery_pages_on_depth" ON "refinery_pages" ("depth");
CREATE INDEX "index_refinery_pages_on_id" ON "refinery_pages" ("id");
CREATE INDEX "index_refinery_pages_on_lft" ON "refinery_pages" ("lft");
CREATE INDEX "index_refinery_pages_on_parent_id" ON "refinery_pages" ("parent_id");
CREATE INDEX "index_refinery_pages_on_rgt" ON "refinery_pages" ("rgt");
CREATE INDEX "index_refinery_page_part_translations_on_refinery_page_part_id" ON "refinery_page_part_translations" ("refinery_page_part_id");
CREATE INDEX "index_refinery_page_part_translations_on_locale" ON "refinery_page_part_translations" ("locale");
CREATE INDEX "index_refinery_page_translations_on_refinery_page_id" ON "refinery_page_translations" ("refinery_page_id");
CREATE INDEX "index_refinery_page_translations_on_locale" ON "refinery_page_translations" ("locale");
CREATE INDEX "index_seo_meta_on_id" ON "seo_meta" ("id");
CREATE INDEX "id_type_index_on_seo_meta" ON "seo_meta" ("seo_meta_id", "seo_meta_type");
COMMIT;
