using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kendo_UI_Bootstrap_Integration.Models
{
    public class Swatch
    {
         public Swatch(string swatchName, string swatchValue, string themeValue)
         {
             SwatchName = swatchName;
             SwatchValue = swatchValue;
             ThemeValue = themeValue;
         }

         public string SwatchName { get; set; }

         public string SwatchValue { get; set; }

         public string ThemeValue { get; set; }
    }
}
