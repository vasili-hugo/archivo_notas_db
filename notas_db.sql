/*SQL*/;

DROP DATABASE IF EXISTS archivo_notas_db;
CREATE DATABASE archivo_notas_db;
USE archivo_notas_db;

CREATE TABLE archivo_notas_db.usuarios (
	usuario_id int unsigned NOT NULL AUTO_INCREMENT,
	nombre_usuario varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	PRIMARY KEY (usuario_id)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES archivo_notas_db.usuarios WRITE;
INSERT archivo_notas_db.usuarios (nombre_usuario, email) VALUES ('Usuario01', 'usu01@email.com'),
('Usuario02', 'usu02@email.com'),('Usuario03', 'usu03@email.com'),
('Usuario04', 'usu04@email.com'),('Usuario05', 'usu05@email.com'),
('Usuario06', 'usu06@email.com'),('Usuario07', 'usu07@email.com'),
('Usuario08', 'usu08@email.com'),('Usuario09', 'usu09@email.com'),
('Usuario10', 'usu10@email.com');
UNLOCK TABLES;

CREATE TABLE archivo_notas_db.notas (
	nota_id int unsigned NOT NULL AUTO_INCREMENT,
	titulo varchar(100) NOT NULL,
	cuerpo_nota text NOT NULL,
	fecha_creacion date NOT NULL,
	fecha_modificacion date NOT NULL,
	delete_lock int unsigned NOT NULL, /*boolean*/
	usuario_id int unsigned,
	PRIMARY KEY (nota_id),
	FOREIGN KEY (usuario_id) REFERENCES archivo_notas_db.usuarios (usuario_id)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES archivo_notas_db.notas WRITE;
INSERT archivo_notas_db.notas (usuario_id, titulo, cuerpo_nota,fecha_creacion, fecha_modificacion, delete_lock) VALUES (100, 'Anna Karenina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(101, 'Don Quijote', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(102, 'El gran Gatsby', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(103, '100 años de soledad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(104, 'Un pasaje a la India', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(105, 'El hombre invisible', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',0),
(106, 'Los juegos del hambre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(107, 'El fin de la eternidad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(108, 'Harry Potter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',0),
(109, 'Fundación', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1),
(100, 'El nombre de la rosa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ut congue lectus, vitae convallis est. Sed interdum, arcu et scelerisque eleifend, massa ipsum egestas nunc, vel dignissim mauris arcu et metus. Donec efficitur elit nisl, sed ultricies risus luctus sed. Integer dignissim est et dolor pretium, ut convallis sem rhoncus. Praesent blandit diam eu mi dapibus, a vulputate sapien tempor. Sed non elit vel sem bibendum convallis. Pellentesque feugiat est in convallis molestie. Nullam leo felis, tincidunt nec tincidunt eget, condimentum et ligula. Maecenas mollis dictum velit, in congue purus. Vestibulum rutrum felis nibh, ac consectetur dui vehicula ut. Etiam mi risus, maximus sit amet sagittis ac, tempor volutpat elit. Ut pretium elementum ipsum non ornare. Suspendisse pellentesque, est a vestibulum venenatis, enim sapien ultricies enim, nec lobortis erat sapien a ex. Nulla a sapien lacus. Maecenas ullamcorper urna sit amet iaculis sagittis. ','2021-09-15','2021-09-15',1);
UNLOCK TABLES;

CREATE TABLE archivo_notas_db.categorias (
	categoria_id int unsigned NOT NULL AUTO_INCREMENT,
	categoria varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (categoria_id)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLE archivo_notas_db.categorias WRITE;
INSERT archivo_notas_db.categorias (categoria) VALUES ('Novela histórica'),
('Literatura clásica en español'),('Policial'),
('Literatura clasica en inglés'),('Novela'),
('Ficción'),('Ciencia ficción'),
('Adolescentes'),('Ucronias'),
('Clásicos');
UNLOCK TABLES;

CREATE TABLE archivo_notas_db.notas_categorias (
	categoria_id int unsigned ,
	nota_id int unsigned ,
	PRIMARY KEY (categoria_id,nota_id),
	FOREIGN KEY (categoria_id) REFERENCES archivo_notas_db.categorias (categoria_id),
	FOREIGN KEY (nota_id) REFERENCES archivo_notas_db.notas (nota_id)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLE archivo_notas_db.notas_categorias WRITE;
INSERT archivo_notas_db.notas_categorias (nota_id,categoria_id) VALUES (100,100),
(101,101),(102,102),
(103,103),(104,104),
(105,105),(106,106),
(107,107),(108,108),
(109,109);
UNLOCK TABLES;


