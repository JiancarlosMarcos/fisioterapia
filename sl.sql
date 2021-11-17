CREATE TABLE `actividad_diaria` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `actividad_diaria_pk` PRIMARY KEY (`id`)
);

-- Table: derivado
CREATE TABLE `derivado` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `derivado_pk` PRIMARY KEY (`id`)
);

-- Table: distrito
CREATE TABLE `distrito` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `distrito_pk` PRIMARY KEY (`id`)
);

-- Table: doctor
CREATE TABLE `doctor` (
    `id` int NOT NULL,
    `numero_cmp` int NOT NULL,
    `tipo_documento_id` int NOT NULL,
    `numero_documento` int NOT NULL,
    `nombres` int NOT NULL,
    `apellido_paterno` int NOT NULL,
    `apellido_materno` int NOT NULL,
    CONSTRAINT `doctor_pk` PRIMARY KEY (`id`)
);

-- Table: dolor
CREATE TABLE `dolor` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `dolor_pk` PRIMARY KEY (`id`)
);

-- Table: edema_inflamacion
CREATE TABLE `edema_inflamacion` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `edema_inflamacion_pk` PRIMARY KEY (`id`)
);

-- Table: estado_civil
CREATE TABLE `estado_civil` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `estado_civil_pk` PRIMARY KEY (`id`)
);

-- Table: fisioterapia
CREATE TABLE `fisioterapia` (
    `id` int NOT NULL,
    `fecha_atencion` date NOT NULL,
    `hora_atencion` time NOT NULL,
    `historial_clinico_id` int NOT NULL,
    CONSTRAINT `fisioterapia_pk` PRIMARY KEY (`id`)
);

-- Table: fisioterapia_adulto
CREATE TABLE `fisioterapia_adulto` (
    `fisioterapia_id` int NOT NULL,
    `antecedentes` varchar(200) NOT NULL,
    `referido_id` int NOT NULL,
    `derivado_id` int NOT NULL,
    `diagnostico_medico` varchar(200) NOT NULL,
    `dolor_id` int NOT NULL,
    `sensibilidad_id` int NOT NULL,
    `edema_inflamacion_id` int NOT NULL,
    `actividad_diaria_id` int NOT NULL,
    `test_funcional_id` int NOT NULL,
    `test_muscular_id` int NOT NULL,
    `test_articular_id` int NOT NULL,
    `descripcion` varchar(200) NOT NULL,
    `compresas_calientes` bool NOT NULL,
    `infrarrojo` bool NOT NULL,
    `parafina` bool NOT NULL,
    `compresas_frias` bool NOT NULL,
    `electro_terapia` bool NOT NULL,
    `camilla_traccion` bool NOT NULL,
    `terapia_combina` bool NOT NULL,
    `magneto_terapia` bool NOT NULL,
    `ultrasonido` bool NOT NULL,
    `masoterapia` bool NOT NULL,
    `digito_presion` bool NOT NULL,
    `ejercicios_resistidos` bool NOT NULL,
    `ejercicios_libres` bool NOT NULL,
    `ejercicios_asistidos` bool NOT NULL,
    `ejercicios_respiratorios` bool NOT NULL,
    `gimnasio` bool NOT NULL,
    `sugerencia_informe` varchar(200) NOT NULL,
    CONSTRAINT `fisioterapia_adulto_pk` PRIMARY KEY (`fisioterapia_id`)
);

-- Table: fisioterapia_child
CREATE TABLE `fisioterapia_child` (
    `fisioterapia_id` int NOT NULL,
    `pre_natal` varchar(200) NOT NULL,
    `post_natal` varchar(200) NOT NULL,
    `madre` varchar(200) NOT NULL,
    `padre` varchar(200) NOT NULL,
    `hermanos` varchar(200) NOT NULL,
    `apgar_num1` varchar(200) NOT NULL,
    `apgar_num5` varchar(200) NOT NULL,
    `referido_id` int NOT NULL,
    `derivado_id` int NOT NULL,
    `diagnostico_medico` varchar(200) NOT NULL,
    `retardo_psicomotor_id` int NOT NULL,
    `paralisis_cerebral_id` int NOT NULL,
    `fracturas_id` int NOT NULL,
    `test_funcional_id` int NOT NULL,
    `test_muscular_id` int NOT NULL,
    `tono_muscular_id` int NOT NULL,
    `test_articular_id` int NOT NULL,
    `sindrome_down` bool NOT NULL,
    `test_milani` bool NOT NULL,
    `test_conaii` bool NOT NULL,
    `descripcion` varchar(200) NOT NULL,
    `compresas_calientes` bool NOT NULL,
    `electro_terapia` bool NOT NULL,
    `compresas_frias` bool NOT NULL,
    `parafina` bool NOT NULL,
    `masoterapia` bool NOT NULL,
    `ejercicios_asistidos` bool NOT NULL,
    `ejercicios_libres` bool NOT NULL,
    `ejercicios_resistidos` bool NOT NULL,
    `ejercicios_respiratorios` bool NOT NULL,
    `digito_presion` bool NOT NULL,
    `gimnasio` bool NOT NULL,
    `metodo` varchar(100) NOT NULL,
    `sugerencia_informe` varchar(200) NOT NULL,
    CONSTRAINT `fisioterapia_child_pk` PRIMARY KEY (`fisioterapia_id`)
);

-- Table: fracturas
CREATE TABLE `fracturas` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `fracturas_pk` PRIMARY KEY (`id`)
);

-- Table: grado_instruccion
CREATE TABLE `grado_instruccion` (
    `id` int NOT NULL,
    `nombre` varchar(100) NOT NULL,
    CONSTRAINT `grado_instruccion_pk` PRIMARY KEY (`id`)
);

-- Table: historial_clinico
CREATE TABLE `historial_clinico` (
    `id` int NOT NULL,
    `numero_hc` int NOT NULL,
    `paciente_id` int NOT NULL,
    CONSTRAINT `historial_clinico_pk` PRIMARY KEY (`id`)
);

-- Table: otras_atenciones
CREATE TABLE `otras_atenciones` (
    `id` int NOT NULL,
    `embarazo` varchar(200) NOT NULL,
    `parto` varchar(200) NOT NULL,
    `post_parto` varchar(200) NOT NULL,
    `enfermedades` varchar(200) NOT NULL,
    `escolaridad` varchar(200) NOT NULL,
    `desarrollo_motor` varchar(200) NOT NULL,
    `desarrollo_lenguaje` varchar(200) NOT NULL,
    `desarrollo_social` varchar(200) NOT NULL,
    `control_esfinter` varchar(200) NOT NULL,
    `juego` varchar(200) NOT NULL,
    `dream` varchar(200) NOT NULL,
    `apetito` varchar(200) NOT NULL,
    `lactancia` varchar(200) NOT NULL,
    `historial_clinico_id` int NOT NULL,
    CONSTRAINT `otras_atenciones_pk` PRIMARY KEY (`id`)
);

-- Table: paciente
CREATE TABLE `paciente` (
    `id` int NOT NULL,
    `tipo_documento_id` int NOT NULL,
    `numero_documento` int NOT NULL,
    `nombres` varchar(100) NOT NULL,
    `apellido_paterno` varchar(50) NOT NULL,
    `apellido_materno` varchar(50) NOT NULL,
    `sexo_id` int NOT NULL,
    `fecha_nacimiento` date NOT NULL,
    `estado_civil_id` int NOT NULL,
    `distrito_id` int NOT NULL,
    `direccion_actual` varchar(100) NOT NULL,
    `telefono` int NULL,
    `celular` int NULL,
    `correo_electronico` varchar(100) NOT NULL,
    `grado_instruccion_id` int NOT NULL,
    `grado` varchar(100) NOT NULL,
    `centro_educativo` varchar(100) NOT NULL,
    `repite` varchar(100) NOT NULL,
    `numero_hermanos` int NOT NULL,
    `orden_hermanos` int NOT NULL,
    CONSTRAINT `paciente_pk` PRIMARY KEY (`id`)
);

-- Table: paralisis_cerebral
CREATE TABLE `paralisis_cerebral` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `paralisis_cerebral_pk` PRIMARY KEY (`id`)
);

-- Table: psicologia
CREATE TABLE `psicologia` (
    `id` int NOT NULL,
    `pre_natal` varchar(200) NOT NULL,
    `post_natal` varchar(200) NOT NULL,
    `dm_levantar` varchar(200) NOT NULL,
    `dm_parar` varchar(200) NOT NULL,
    `dm_caminar_solo` varchar(200) NOT NULL,
    `dm_sentar` varchar(200) NOT NULL,
    `dm_caminar_ayuda` varchar(200) NOT NULL,
    `control_esfinter` varchar(200) NOT NULL,
    `desarrollo_lenguaje` varchar(200) NOT NULL,
    `enfermedades` varchar(200) NOT NULL,
    `desarrollo_social` varchar(200) NOT NULL,
    `historia_escolar` varchar(200) NOT NULL,
    `historia_familiar` varchar(200) NOT NULL,
    `historial_clinico_id` int NOT NULL,
    CONSTRAINT `psicologia_pk` PRIMARY KEY (`id`)
);

-- Table: referido
CREATE TABLE `referido` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `referido_pk` PRIMARY KEY (`id`)
);

-- Table: registro_basico
CREATE TABLE `registro_basico` (
    `id` int NOT NULL,
    `fecha_atencion` date NOT NULL,
    `hora_atencion` time NOT NULL,
    `enfermedad_actual` varchar(200) NOT NULL,
    `ram` varchar(200) NOT NULL,
    `alergias` varchar(200) NOT NULL,
    `antecedentes_generales` varchar(200) NOT NULL,
    `historial_clinico_id` int NOT NULL,
    CONSTRAINT `registro_basico_pk` PRIMARY KEY (`id`)
);

-- Table: retardo_psicomotor
CREATE TABLE `retardo_psicomotor` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `retardo_psicomotor_pk` PRIMARY KEY (`id`)
);

-- Table: sensibilidad
CREATE TABLE `sensibilidad` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `sensibilidad_pk` PRIMARY KEY (`id`)
);

-- Table: sexo
CREATE TABLE `sexo` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `sexo_pk` PRIMARY KEY (`id`)
);

-- Table: test_articular
CREATE TABLE `test_articular` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `test_articular_pk` PRIMARY KEY (`id`)
);

-- Table: test_funcional
CREATE TABLE `test_funcional` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `test_funcional_pk` PRIMARY KEY (`id`)
);

-- Table: test_muscular
CREATE TABLE `test_muscular` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `test_muscular_pk` PRIMARY KEY (`id`)
);

-- Table: tipo_documento
CREATE TABLE `tipo_documento` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `tipo_documento_pk` PRIMARY KEY (`id`)
);

-- Table: tono_muscular
CREATE TABLE `tono_muscular` (
    `id` int NOT NULL,
    `nombre` varchar(50) NOT NULL,
    CONSTRAINT `tono_muscular_pk` PRIMARY KEY (`id`)
);

-- foreign keys
-- Reference: doctor_tipo_documento (table: doctor)
ALTER TABLE `doctor` ADD CONSTRAINT `doctor_tipo_documento` FOREIGN KEY `doctor_tipo_documento` (`tipo_documento_id`)
    REFERENCES `tipo_documento` (`id`);

-- Reference: fisioterapia_adulto_actividad_diaria (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_actividad_diaria` FOREIGN KEY `fisioterapia_adulto_actividad_diaria` (`actividad_diaria_id`)
    REFERENCES `actividad_diaria` (`id`);

-- Reference: fisioterapia_adulto_derivado (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_derivado` FOREIGN KEY `fisioterapia_adulto_derivado` (`derivado_id`)
    REFERENCES `derivado` (`id`);

-- Reference: fisioterapia_adulto_dolor (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_dolor` FOREIGN KEY `fisioterapia_adulto_dolor` (`dolor_id`)
    REFERENCES `dolor` (`id`);

-- Reference: fisioterapia_adulto_edema_inflamacion (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_edema_inflamacion` FOREIGN KEY `fisioterapia_adulto_edema_inflamacion` (`edema_inflamacion_id`)
    REFERENCES `edema_inflamacion` (`id`);

-- Reference: fisioterapia_adulto_fisioterapia (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_fisioterapia` FOREIGN KEY `fisioterapia_adulto_fisioterapia` (`fisioterapia_id`)
    REFERENCES `fisioterapia` (`id`);

-- Reference: fisioterapia_adulto_referido (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_referido` FOREIGN KEY `fisioterapia_adulto_referido` (`referido_id`)
    REFERENCES `referido` (`id`);

-- Reference: fisioterapia_adulto_sensibilidad (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_sensibilidad` FOREIGN KEY `fisioterapia_adulto_sensibilidad` (`sensibilidad_id`)
    REFERENCES `sensibilidad` (`id`);

-- Reference: fisioterapia_adulto_test_articular (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_test_articular` FOREIGN KEY `fisioterapia_adulto_test_articular` (`test_articular_id`)
    REFERENCES `test_articular` (`id`);

-- Reference: fisioterapia_adulto_test_funcional (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_test_funcional` FOREIGN KEY `fisioterapia_adulto_test_funcional` (`test_funcional_id`)
    REFERENCES `test_funcional` (`id`);

-- Reference: fisioterapia_adulto_test_muscular (table: fisioterapia_adulto)
ALTER TABLE `fisioterapia_adulto` ADD CONSTRAINT `fisioterapia_adulto_test_muscular` FOREIGN KEY `fisioterapia_adulto_test_muscular` (`test_muscular_id`)
    REFERENCES `test_muscular` (`id`);

-- Reference: fisioterapia_child_derivado (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_derivado` FOREIGN KEY `fisioterapia_child_derivado` (`derivado_id`)
    REFERENCES `derivado` (`id`);

-- Reference: fisioterapia_child_fisioterapia (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_fisioterapia` FOREIGN KEY `fisioterapia_child_fisioterapia` (`fisioterapia_id`)
    REFERENCES `fisioterapia` (`id`);

-- Reference: fisioterapia_child_fracturas (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_fracturas` FOREIGN KEY `fisioterapia_child_fracturas` (`fracturas_id`)
    REFERENCES `fracturas` (`id`);

-- Reference: fisioterapia_child_paralisis_cerebral (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_paralisis_cerebral` FOREIGN KEY `fisioterapia_child_paralisis_cerebral` (`paralisis_cerebral_id`)
    REFERENCES `paralisis_cerebral` (`id`);

-- Reference: fisioterapia_child_referido (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_referido` FOREIGN KEY `fisioterapia_child_referido` (`referido_id`)
    REFERENCES `referido` (`id`);

-- Reference: fisioterapia_child_retardo_psicomotor (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_retardo_psicomotor` FOREIGN KEY `fisioterapia_child_retardo_psicomotor` (`retardo_psicomotor_id`)
    REFERENCES `retardo_psicomotor` (`id`);

-- Reference: fisioterapia_child_test_articular (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_test_articular` FOREIGN KEY `fisioterapia_child_test_articular` (`test_articular_id`)
    REFERENCES `test_articular` (`id`);

-- Reference: fisioterapia_child_test_funcional (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_test_funcional` FOREIGN KEY `fisioterapia_child_test_funcional` (`test_funcional_id`)
    REFERENCES `test_funcional` (`id`);

-- Reference: fisioterapia_child_test_muscular (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_test_muscular` FOREIGN KEY `fisioterapia_child_test_muscular` (`test_muscular_id`)
    REFERENCES `test_muscular` (`id`);

-- Reference: fisioterapia_child_tono_muscular (table: fisioterapia_child)
ALTER TABLE `fisioterapia_child` ADD CONSTRAINT `fisioterapia_child_tono_muscular` FOREIGN KEY `fisioterapia_child_tono_muscular` (`tono_muscular_id`)
    REFERENCES `tono_muscular` (`id`);

-- Reference: fisioterapia_historial_clinico (table: fisioterapia)
ALTER TABLE `fisioterapia` ADD CONSTRAINT `fisioterapia_historial_clinico` FOREIGN KEY `fisioterapia_historial_clinico` (`historial_clinico_id`)
    REFERENCES `historial_clinico` (`id`);

-- Reference: historial_clinico_paciente (table: historial_clinico)
ALTER TABLE `historial_clinico` ADD CONSTRAINT `historial_clinico_paciente` FOREIGN KEY `historial_clinico_paciente` (`paciente_id`)
    REFERENCES `paciente` (`id`);

-- Reference: otras_atenciones_historial_clinico (table: otras_atenciones)
ALTER TABLE `otras_atenciones` ADD CONSTRAINT `otras_atenciones_historial_clinico` FOREIGN KEY `otras_atenciones_historial_clinico` (`historial_clinico_id`)
    REFERENCES `historial_clinico` (`id`);

-- Reference: paciente_distrito (table: paciente)
ALTER TABLE `paciente` ADD CONSTRAINT `paciente_distrito` FOREIGN KEY `paciente_distrito` (`distrito_id`)
    REFERENCES `distrito` (`id`);

-- Reference: paciente_estado_civil (table: paciente)
ALTER TABLE `paciente` ADD CONSTRAINT `paciente_estado_civil` FOREIGN KEY `paciente_estado_civil` (`estado_civil_id`)
    REFERENCES `estado_civil` (`id`);

-- Reference: paciente_grado_instruccion (table: paciente)
ALTER TABLE `paciente` ADD CONSTRAINT `paciente_grado_instruccion` FOREIGN KEY `paciente_grado_instruccion` (`grado_instruccion_id`)
    REFERENCES `grado_instruccion` (`id`);

-- Reference: paciente_sexo (table: paciente)
ALTER TABLE `paciente` ADD CONSTRAINT `paciente_sexo` FOREIGN KEY `paciente_sexo` (`sexo_id`)
    REFERENCES `sexo` (`id`);

-- Reference: paciente_tipo_documento (table: paciente)
ALTER TABLE `paciente` ADD CONSTRAINT `paciente_tipo_documento` FOREIGN KEY `paciente_tipo_documento` (`tipo_documento_id`)
    REFERENCES `tipo_documento` (`id`);

-- Reference: psicologia_historial_clinico (table: psicologia)
ALTER TABLE `psicologia` ADD CONSTRAINT `psicologia_historial_clinico` FOREIGN KEY `psicologia_historial_clinico` (`historial_clinico_id`)
    REFERENCES `historial_clinico` (`id`);

-- Reference: registro_basico_historial_clinico (table: registro_basico)
ALTER TABLE `registro_basico` ADD CONSTRAINT `registro_basico_historial_clinico` FOREIGN KEY `registro_basico_historial_clinico` (`historial_clinico_id`)
    REFERENCES `historial_clinico` (`id`);

-- End of file.