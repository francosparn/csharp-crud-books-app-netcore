using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace BooksApp.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }
        
        [Required(ErrorMessage = "El campo Título es obligatorio")]
        [StringLength(100)]
        [Display(Name ="Título")]
        public string Title { get; set; }

        [Required(ErrorMessage = "El campo Autor es obligatorio")]
        [StringLength(100)]
        [Display(Name = "Autor")]
        public string Author { get; set; }

        [Required(ErrorMessage = "El campo Páginas es obligatorio")]
        [Display(Name = "Páginas")]
        public int Pages { get; set; }

        [Required(ErrorMessage = "El campo Idioma es obligatorio")]
        [StringLength(50)]
        [Display(Name = "Idioma")]
        public string Language { get; set; }

        [Required(ErrorMessage = "El campo Precio es obligatorio")]
        [Display(Name = "Precio")]
        public int Price { get; set; }
    }
}
