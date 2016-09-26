
CREATE TABLE public.curso (
                codigo_curso NUMERIC(5) NOT NULL,
                nome_curso VARCHAR(100) NOT NULL,
                nome_unidade VARCHAR(100) NOT NULL,
                CONSTRAINT curso_pk PRIMARY KEY (codigo_curso)
);


CREATE TABLE public.aluno (
                codigo_aluno NUMERIC(5) NOT NULL,
                numero_usp NUMERIC(7) NOT NULL,
                codigo_curso NUMERIC(5) NOT NULL,
                CONSTRAINT aluno_pk PRIMARY KEY (codigo_aluno)
);


CREATE UNIQUE INDEX aluno_idx
 ON public.aluno
 ( numero_usp );

CREATE TABLE public.disciplina (
                codigo_disciplina NUMERIC(5) NOT NULL,
                sigla_disciplina_jupiter VARCHAR(10) NOT NULL,
                nome_disciplina VARCHAR(100) NOT NULL,
                codigo_curso NUMERIC(5) NOT NULL,
                CONSTRAINT disciplina_pk PRIMARY KEY (codigo_disciplina)
);


CREATE TABLE public.aluno_disciplina (
                codigo_disciplina NUMERIC(5) NOT NULL,
                codigo_aluno NUMERIC(5) NOT NULL,
                ano_cursado NUMERIC(4) NOT NULL,
                semestre_cursado NUMERIC(1) NOT NULL,
                CONSTRAINT aluno_disciplina_pk PRIMARY KEY (codigo_disciplina, codigo_aluno)
);


ALTER TABLE public.disciplina ADD CONSTRAINT curso_disciplina_fk
FOREIGN KEY (codigo_curso)
REFERENCES public.curso (codigo_curso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.aluno ADD CONSTRAINT curso_aluno_fk
FOREIGN KEY (codigo_curso)
REFERENCES public.curso (codigo_curso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.aluno_disciplina ADD CONSTRAINT aluno_aluno_disciplina_fk
FOREIGN KEY (codigo_aluno)
REFERENCES public.aluno (codigo_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.aluno_disciplina ADD CONSTRAINT disciplina_aluno_disciplina_fk
FOREIGN KEY (codigo_disciplina)
REFERENCES public.disciplina (codigo_disciplina)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
