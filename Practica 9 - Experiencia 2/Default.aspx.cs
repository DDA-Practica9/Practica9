using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;

namespace Practica_9___Experiencia_2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from m in XElement.Load(MapPath("Movies.xml")).Element("Movie") select m;


            this.GridView1.DataSource = query;
            this.GridView1.DataBind();
        }

        public class Genre
        {
            public int ID { get; set; }
            public string Name { get; set; }
        }

        public List<Genre> GetGenres()
        {
            return new List<Genre> { 
                new Genre { ID=0, Name="Comedy" } , 
                new Genre { ID=1, Name="Drama" } , 
                new Genre { ID=2, Name="Action" }
            };
        }

        public class LastNameComparer : IComparer<string>
        {
            public int Compare(string x, string y)
            {
                var director1LastName = x.Substring(x.LastIndexOf(' '));
                var director2LastName = y.Substring(y.LastIndexOf(' ')); 
                return director1LastName.CompareTo(director2LastName);
            }
        }

        public class Grouping
        {
            public int Genre { get; set; }
            public int MovieCount { get; set; }
        }

        
       

        public List<Movie> GetMovies()
        {
            return new List<Movie> 
            {
                new Movie { Title="Shrek", Director="Andrew Adamson", Genre=0, ReleaseDate=DateTime.Parse("16/5/2001"), RunTime=89 },
                new Movie { Title="Fletch", Director="Michael Ritchie", Genre=0,ReleaseDate=DateTime.Parse("31/5/1985"), RunTime=96 },
                new Movie { Title="Casablanca", Director="Michael Curtiz", Genre=1,ReleaseDate=DateTime.Parse("1/1/1942"), RunTime=102 },
                new Movie { Title="Batman", Director="Tim Burton", Genre=1,ReleaseDate=DateTime.Parse("23/6/1989"), RunTime=126 },
                new Movie { Title="Batman 2", Director="Tim Burton", Genre=0,ReleaseDate=DateTime.Parse("23/6/1989"), RunTime=129 }
            };
        }

        public class Movie
        {
            public string Title { get; set; }
            public string Director { get; set; }
            public int Genre { get; set; }
            public int RunTime { get; set; }
            public DateTime ReleaseDate { get; set; }
        }

    }

    internal class MoviesDataContext
    {
    }
}