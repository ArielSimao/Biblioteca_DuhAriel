namespace Biblioteca_DuhAriel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Genero")]
    public partial class Genero
    {
        [Key]
        public int IdGenero { get; set; }

        [Required]
        [StringLength(50)]
        public string NomeGenero { get; set; }

        public virtual Genero Genero1 { get; set; }

        public virtual Genero Genero2 { get; set; }
    }
}
