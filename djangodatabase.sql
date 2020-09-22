-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2020 a las 23:58:15
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `djangodatabase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add dias', 7, 'add_dias'),
(26, 'Can change dias', 7, 'change_dias'),
(27, 'Can delete dias', 7, 'delete_dias'),
(28, 'Can view dias', 7, 'view_dias'),
(29, 'Can add especialidad', 8, 'add_especialidad'),
(30, 'Can change especialidad', 8, 'change_especialidad'),
(31, 'Can delete especialidad', 8, 'delete_especialidad'),
(32, 'Can view especialidad', 8, 'view_especialidad'),
(33, 'Can add medico', 9, 'add_medico'),
(34, 'Can change medico', 9, 'change_medico'),
(35, 'Can delete medico', 9, 'delete_medico'),
(36, 'Can view medico', 9, 'view_medico'),
(37, 'Can add obra social', 10, 'add_obrasocial'),
(38, 'Can change obra social', 10, 'change_obrasocial'),
(39, 'Can delete obra social', 10, 'delete_obrasocial'),
(40, 'Can view obra social', 10, 'view_obrasocial'),
(41, 'Can add turno', 11, 'add_turno'),
(42, 'Can change turno', 11, 'change_turno'),
(43, 'Can delete turno', 11, 'delete_turno'),
(44, 'Can view turno', 11, 'view_turno'),
(45, 'Can add especialidad medico', 12, 'add_especialidadmedico'),
(46, 'Can change especialidad medico', 12, 'change_especialidadmedico'),
(47, 'Can delete especialidad medico', 12, 'delete_especialidadmedico'),
(48, 'Can view especialidad medico', 12, 'view_especialidadmedico'),
(49, 'Can add registro', 13, 'add_registro'),
(50, 'Can change registro', 13, 'change_registro'),
(51, 'Can delete registro', 13, 'delete_registro'),
(52, 'Can view registro', 13, 'view_registro'),
(53, 'Can add reserva medico', 14, 'add_reservamedico'),
(54, 'Can change reserva medico', 14, 'change_reservamedico'),
(55, 'Can delete reserva medico', 14, 'delete_reservamedico'),
(56, 'Can view reserva medico', 14, 'view_reservamedico'),
(57, 'Can add configuracion horaria', 14, 'add_configuracionhoraria'),
(58, 'Can change configuracion horaria', 14, 'change_configuracionhoraria'),
(59, 'Can delete configuracion horaria', 14, 'delete_configuracionhoraria'),
(60, 'Can view configuracion horaria', 14, 'view_configuracionhoraria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(14, 'turnos', 'configuracionhoraria'),
(7, 'turnos', 'dias'),
(8, 'turnos', 'especialidad'),
(12, 'turnos', 'especialidadmedico'),
(9, 'turnos', 'medico'),
(10, 'turnos', 'obrasocial'),
(11, 'turnos', 'turno'),
(13, 'users', 'registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-17 17:10:04.919381'),
(2, 'auth', '0001_initial', '2020-09-17 17:10:07.099869'),
(3, 'admin', '0001_initial', '2020-09-17 17:10:17.134263'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-17 17:10:19.589522'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-17 17:10:19.660680'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-17 17:10:20.755367'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-17 17:10:21.963899'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-17 17:10:22.586097'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-17 17:10:22.684868'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-17 17:10:23.590437'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-17 17:10:23.605995'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-17 17:10:23.790019'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-17 17:10:23.911053'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-17 17:10:24.128753'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-17 17:10:24.285777'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-17 17:10:24.332209'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-17 17:10:24.433571'),
(18, 'sessions', '0001_initial', '2020-09-17 17:10:24.893751'),
(19, 'turnos', '0001_initial', '2020-09-17 17:10:28.953340'),
(20, 'turnos', '0002_auto_20200917_1428', '2020-09-17 17:28:11.713679'),
(21, 'turnos', '0003_auto_20200917_1430', '2020-09-17 17:30:51.823813'),
(22, 'users', '0001_initial', '2020-09-21 19:33:07.935142'),
(23, 'users', '0002_auto_20200916_1713', '2020-09-21 19:33:08.394796'),
(24, 'users', '0003_auto_20200917_1356', '2020-09-21 19:33:09.597847'),
(25, 'users', '0004_auto_20200917_1357', '2020-09-21 19:33:10.634202'),
(26, 'users', '0005_registro_user', '2020-09-21 19:33:12.019350'),
(27, 'users', '0006_auto_20200917_1453', '2020-09-21 19:33:13.180844'),
(28, 'users', '0007_auto_20200917_1459', '2020-09-21 19:33:14.563263'),
(29, 'turnos', '0002_remove_turno_usuario', '2020-09-22 00:27:49.417772'),
(30, 'turnos', '0003_turno_idusuario', '2020-09-22 00:28:39.753403'),
(31, 'turnos', '0004_auto_20200921_2129', '2020-09-22 00:29:29.347389'),
(32, 'turnos', '0005_reservamedico', '2020-09-22 12:08:22.456348'),
(33, 'turnos', '0006_delete_dias', '2020-09-22 12:18:20.154905'),
(34, 'turnos', '0007_turno_dias', '2020-09-22 14:59:34.289118'),
(35, 'turnos', '0008_auto_20200922_1428', '2020-09-22 17:28:39.112465');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('d1s47gttbiease0am1iwmk0c0msdoqal', '.eJxVjDsOwjAQBe_iGlmOf-tQ0nMGa71e4wBypDipEHeHSCmgfTPzXiLitta4dV7ilMVZaHH63RLSg9sO8h3bbZY0t3WZktwVedAur3Pm5-Vw_w4q9vqtPTIEIoW2eMsEGAzBCJxGMl6ZUEoKJqgyONLOO69AD-wUphKsAkji_QHwPTex:1kKo3e:StgxxYya9h-9i69Cv2jIp4sFe4jlVp-L4PRBdutGWng', '2020-10-06 19:34:34.836091');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestionturnos_especialidad`
--

CREATE TABLE `gestionturnos_especialidad` (
  `especialidadId` int(11) NOT NULL,
  `descripcion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gestionturnos_especialidad`
--

INSERT INTO `gestionturnos_especialidad` (`especialidadId`, `descripcion`) VALUES
(1, 'Ginecologia'),
(2, 'Pediatria'),
(3, 'Clínica'),
(4, 'Oncólogo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_configuracionhoraria`
--

CREATE TABLE `turnos_configuracionhoraria` (
  `id` int(11) NOT NULL,
  `nombredia` varchar(70) NOT NULL,
  `hora_desde` time(6) NOT NULL,
  `hora_hasta` time(6) NOT NULL,
  `duracion` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos_configuracionhoraria`
--

INSERT INTO `turnos_configuracionhoraria` (`id`, `nombredia`, `hora_desde`, `hora_hasta`, `duracion`, `medico_id`) VALUES
(1, 'Lunes|Martes|Miercoles', '08:00:00.000000', '12:00:00.000000', 30, 1),
(2, 'Lunes|Martes|Miercoles|Jueves|Viernes', '16:30:00.000000', '20:00:00.000000', 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_especialidadmedico`
--

CREATE TABLE `turnos_especialidadmedico` (
  `id` int(11) NOT NULL,
  `especialidad_id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos_especialidadmedico`
--

INSERT INTO `turnos_especialidadmedico` (`id`, `especialidad_id`, `medico_id`) VALUES
(1, 2, 2),
(2, 3, 2),
(3, 4, 1),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_medico`
--

CREATE TABLE `turnos_medico` (
  `medicoId` int(11) NOT NULL,
  `matriculaId` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `obrasocial_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos_medico`
--

INSERT INTO `turnos_medico` (`medicoId`, `matriculaId`, `nombre`, `dni`, `email`, `telefono`, `obrasocial_id`) VALUES
(1, 23455, 'Gonzalez Esteban', 32675987, 'esteban@gmail.com', '3794142927', 1),
(2, 98765, 'Aquino Pamela ', 34876987, 'pamela@gmail.com', '3624567654', 3),
(3, 54678, 'Morales Angeles', 31365432, 'angeles@gmail', '3624009876', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_obrasocial`
--

CREATE TABLE `turnos_obrasocial` (
  `ObraSocialId` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos_obrasocial`
--

INSERT INTO `turnos_obrasocial` (`ObraSocialId`, `descripcion`) VALUES
(1, 'Insssep'),
(2, 'Sancor Salud'),
(3, 'Medifé');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_turno`
--

CREATE TABLE `turnos_turno` (
  `TurnoId` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `fecha_turno` date NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` smallint(5) UNSIGNED DEFAULT NULL CHECK (`edad` >= 0),
  `telefono` varchar(13) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `especialidad_id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `obrasocial_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `dias` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos_turno`
--

INSERT INTO `turnos_turno` (`TurnoId`, `fecha_registro`, `fecha_turno`, `dni`, `nombre`, `edad`, `telefono`, `sexo`, `mail`, `especialidad_id`, `medico_id`, `obrasocial_id`, `usuario_id`, `dias`) VALUES
(3, '2020-09-21', '2020-09-15', 34352965, 'Juana', 43, '34355432', 'F', 'lauraferreyra@gmail.com', 1, 1, 1, 3, NULL),
(4, '2020-09-22', '2020-09-25', 34352965, 'Laura', 22, '3794142927', 'F', 'laura@gmail.com', 1, 3, 1, 2, NULL),
(5, '2020-09-22', '2020-09-25', 34352960, 'Laura', 22, '3794142927', 'F', 'laura@gmail.com', 1, 3, 1, 2, NULL),
(6, '2020-09-22', '2020-09-24', 12323434, 'Juana', 66, '3624123243', 'F', 'juana@gmail.com', 1, 3, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_registro`
--

CREATE TABLE `users_registro` (
  `idUsuario` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` bigint(20) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `fechaDeNacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `date_joined` datetime(6),
  `last_login` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_registro`
--

INSERT INTO `users_registro` (`idUsuario`, `email`, `password`, `nombre`, `apellido`, `dni`, `telefono`, `fechaDeNacimiento`, `sexo`, `date_joined`, `last_login`) VALUES
(2, 'laurytas_6@hotmail.com', 'pbkdf2_sha256$216000$USM7j4awM0Cw$gRJEeyrbmRmJw0e8RYHk0Dnb890pSSd995TfiFSC6co=', 'pablo', 'sosa', 31746542, 32323234, '2020-09-01', 'M', '2020-09-21 21:36:23.073799', '2020-09-22 19:34:34.724899'),
(3, 'pablo@hotmail.com', 'pbkdf2_sha256$216000$vvUnJ5lqT2ao$4hOJOhora9NSF/ymG/9aYUNA6rG1p8I1GC8hFVLaRZc=', 'pablo', 'sosa', 23232332, 4343434, '2020-09-17', 'M', '2020-09-22 00:07:58.610628', '2020-09-22 00:07:58.919058');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `gestionturnos_especialidad`
--
ALTER TABLE `gestionturnos_especialidad`
  ADD PRIMARY KEY (`especialidadId`);

--
-- Indices de la tabla `turnos_configuracionhoraria`
--
ALTER TABLE `turnos_configuracionhoraria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `turnos_reservamedico_medico_id_cdde25cf_fk_turnos_me` (`medico_id`);

--
-- Indices de la tabla `turnos_especialidadmedico`
--
ALTER TABLE `turnos_especialidadmedico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `turnos_especialidadm_especialidad_id_50ac2710_fk_gestiontu` (`especialidad_id`),
  ADD KEY `turnos_especialidadm_medico_id_388cb56b_fk_turnos_me` (`medico_id`);

--
-- Indices de la tabla `turnos_medico`
--
ALTER TABLE `turnos_medico`
  ADD PRIMARY KEY (`medicoId`),
  ADD KEY `turnos_medico_obrasocial_id_7c83a0ce_fk_turnos_ob` (`obrasocial_id`);

--
-- Indices de la tabla `turnos_obrasocial`
--
ALTER TABLE `turnos_obrasocial`
  ADD PRIMARY KEY (`ObraSocialId`);

--
-- Indices de la tabla `turnos_turno`
--
ALTER TABLE `turnos_turno`
  ADD PRIMARY KEY (`TurnoId`),
  ADD KEY `turnos_turno_especialidad_id_771b1917_fk_gestiontu` (`especialidad_id`),
  ADD KEY `turnos_turno_medico_id_abaa945a_fk_turnos_medico_medicoId` (`medico_id`),
  ADD KEY `turnos_turno_obrasocial_id_55d3cd72_fk_turnos_ob` (`obrasocial_id`),
  ADD KEY `turnos_turno_usuario_id_08d847b4_fk_users_registro_idUsuario` (`usuario_id`);

--
-- Indices de la tabla `users_registro`
--
ALTER TABLE `users_registro`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `gestionturnos_especialidad`
--
ALTER TABLE `gestionturnos_especialidad`
  MODIFY `especialidadId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `turnos_configuracionhoraria`
--
ALTER TABLE `turnos_configuracionhoraria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `turnos_especialidadmedico`
--
ALTER TABLE `turnos_especialidadmedico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `turnos_medico`
--
ALTER TABLE `turnos_medico`
  MODIFY `medicoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `turnos_obrasocial`
--
ALTER TABLE `turnos_obrasocial`
  MODIFY `ObraSocialId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `turnos_turno`
--
ALTER TABLE `turnos_turno`
  MODIFY `TurnoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users_registro`
--
ALTER TABLE `users_registro`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `turnos_configuracionhoraria`
--
ALTER TABLE `turnos_configuracionhoraria`
  ADD CONSTRAINT `turnos_reservamedico_medico_id_cdde25cf_fk_turnos_me` FOREIGN KEY (`medico_id`) REFERENCES `turnos_medico` (`medicoId`);

--
-- Filtros para la tabla `turnos_especialidadmedico`
--
ALTER TABLE `turnos_especialidadmedico`
  ADD CONSTRAINT `turnos_especialidadm_especialidad_id_50ac2710_fk_gestiontu` FOREIGN KEY (`especialidad_id`) REFERENCES `gestionturnos_especialidad` (`especialidadId`),
  ADD CONSTRAINT `turnos_especialidadm_medico_id_388cb56b_fk_turnos_me` FOREIGN KEY (`medico_id`) REFERENCES `turnos_medico` (`medicoId`);

--
-- Filtros para la tabla `turnos_medico`
--
ALTER TABLE `turnos_medico`
  ADD CONSTRAINT `turnos_medico_obrasocial_id_7c83a0ce_fk_turnos_ob` FOREIGN KEY (`obrasocial_id`) REFERENCES `turnos_obrasocial` (`ObraSocialId`);

--
-- Filtros para la tabla `turnos_turno`
--
ALTER TABLE `turnos_turno`
  ADD CONSTRAINT `turnos_turno_especialidad_id_771b1917_fk_gestiontu` FOREIGN KEY (`especialidad_id`) REFERENCES `gestionturnos_especialidad` (`especialidadId`),
  ADD CONSTRAINT `turnos_turno_medico_id_abaa945a_fk_turnos_medico_medicoId` FOREIGN KEY (`medico_id`) REFERENCES `turnos_medico` (`medicoId`),
  ADD CONSTRAINT `turnos_turno_obrasocial_id_55d3cd72_fk_turnos_ob` FOREIGN KEY (`obrasocial_id`) REFERENCES `turnos_obrasocial` (`ObraSocialId`),
  ADD CONSTRAINT `turnos_turno_usuario_id_08d847b4_fk_users_registro_idUsuario` FOREIGN KEY (`usuario_id`) REFERENCES `users_registro` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
