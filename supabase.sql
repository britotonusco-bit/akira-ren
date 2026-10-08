-- WEB LIBRARY — AKIRA REN
-- Base de datos compartida para conservar enlaces, imágenes y ficha.

create table if not exists public.akira_ren_library (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

insert into public.akira_ren_library (id, data)
values ('akira-ren-main-library', '{}'::jsonb)
on conflict (id) do nothing;

alter table public.akira_ren_library enable row level security;

-- La página publicada puede LEER la biblioteca para que cualquier visitante
-- vea los mismos enlaces e imágenes guardados en la base de datos.
drop policy if exists "public read akira ren library" on public.akira_ren_library;
create policy "public read akira ren library"
on public.akira_ren_library
for select
using (true);

-- IMPORTANTE: esta política permite guardar desde una página sin login.
-- Si quieres que solo tú puedas editar, NO actives esta política y usaremos
-- Supabase Auth para proteger los cambios.
drop policy if exists "public write akira ren library" on public.akira_ren_library;
create policy "public write akira ren library"
on public.akira_ren_library
for all
using (true)
with check (true);

-- Si más adelante quieres almacenar archivos físicos en Supabase Storage,
-- crea un bucket llamado: akira-ren-media
-- y protégelo con políticas RLS. La versión actual también conserva imágenes
-- como datos embebidos, por lo que no depende de servidores externos.
