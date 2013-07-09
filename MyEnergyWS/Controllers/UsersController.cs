using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BLToolkit.Data;
using MyEnergyWS.Models;

namespace MyEnergyWS.Controllers
{
    public class UsersController : ApiController
    {
        // GET api/values
        public IEnumerable<User> Get(int index, int count = 50)
        {
            List<User> result = new List<User>();

            using (DbManager db = new DbManager("MyEnergy"))
            {

                result = db.SetSpCommand("GetUsers",
                    db.Parameter("@index", index),
                    db.Parameter("@count", count)
                   ).ExecuteList<User>();
                    

            }

            return result;
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
