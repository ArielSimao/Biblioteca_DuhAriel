namespace Biblioteca_DuhAriel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BD : DbContext
    {
        public BD()
            : base("name=BD")
        {
        }

        public virtual DbSet<Genero> Genero { get; set; }
        public virtual DbSet<Livros> Livros { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Genero>()
                .Property(e => e.NomeGenero)
                .IsUnicode(false);

            modelBuilder.Entity<Genero>()
                .HasOptional(e => e.Genero1)
                .WithRequired(e => e.Genero2);

            modelBuilder.Entity<Livros>()
                .Property(e => e.Nome)
                .IsUnicode(false);

            modelBuilder.Entity<Livros>()
                .Property(e => e.Escritor)
                .IsUnicode(false);
        }
    }
}
