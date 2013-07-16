using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLToolkit.Mapping;
using System.ComponentModel.DataAnnotations;

namespace MyEnergyWS.Models
{
    public class User
    {
        public UInt64 user_id { get; set; }
        public String first_name { get; set; }

        public DateTime birthdate { get; set; }
        public DateTime creation_date { get; set; }

        
        public String gender { get; set; }
       
       
    }
}