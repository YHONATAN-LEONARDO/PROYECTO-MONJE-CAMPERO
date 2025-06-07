import Footer from "@/componentes/moleculas/Footer";
import Header from "@/componentes/moleculas/Header";
import ListaPeliculas from "@/componentes/organismos/ListaPeliculas";
import Prueba from "@/componentes/organismos/Prueba";
import Link from "next/link";
import React from "react";

const Lista: React.FC = () => {
  const movies = [
    {
      id: "1",
      imdbId: "tt3915174",
      title: "Puss in Boots: The Last Wish",
      releaseDate: "2022-12-21",
      trailerLink: "https://www.youtube.com/watch?v=tHb7WlgyaUc",
      movieLink:
        "https://attackertv.so/watch-movie/puss-in-boots-the-last-wish-91342.9221629",
      poster: "https://image.tmdb.org/t/p/w500/1NqwE6LP9IEdOZ57NCT51ftHtWT.jpg",
      genres: ["Animation", "Action", "Adventure", "Comedy", "Family"],
    },
    {
      id: "2",
      imdbId: "tt1630029",
      title: "Avatar: The Way of Water",
      releaseDate: "2022-12-16",
      trailerLink: "https://www.youtube.com/watch?v=d9MyW72ELq0",
      movieLink:
        "https://attackertv.so/watch-movie/avatar-the-way-of-water-79936.9224431",
      poster: "https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
      genres: ["Science Fiction", "Action", "Adventure"],
    },
    {
      id: "3",
      imdbId: "tt8760708",
      title: "M3GAN",
      releaseDate: "2023-01-06",
      trailerLink: "https://www.youtube.com/watch?v=BRb4U99OU80",
      movieLink: "https://attackertv.so/watch-movie/m3gan-91330.9252829",
      poster: "https://image.tmdb.org/t/p/w500/xBl5AGw7HXZcv1nNXPlzGgO4Cfo.jpg",
      genres: ["Science Fiction", "Horror", "Comedy"],
    },
    {
      id: "4",
      imdbId: "tt11116912",
      title: "Troll",
      releaseDate: "2022-12-01",
      trailerLink: "https://www.youtube.com/watch?v=AiohkY_XQYQ",
      movieLink: "https://attackertv.so/watch-movie/troll-89830.9190984",
      poster: "https://image.tmdb.org/t/p/w500/9z4jRr43JdtU66P0iy8h18OyLql.jpg",
      genres: ["Fantasy", "Action", "Adventure"],
    },
    {
      id: "5",
      imdbId: "tt6443346",
      title: "Black Adam",
      releaseDate: "2022-10-19",
      trailerLink: "https://www.youtube.com/watch?v=JaV7mmc9HGw",
      movieLink: "https://attackertv.so/watch-movie/black-adam-82087.9064972",
      poster: "https://image.tmdb.org/t/p/w500/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
      genres: ["Fantasy", "Action", "Science Fiction"],
    },
    {
      id: "6",
      imdbId: "tt0499549",
      title: "Avatar",
      releaseDate: "2009-12-15",
      trailerLink: "https://www.youtube.com/watch?v=5PSNL1qE6VY",
      movieLink: "https://attackertv.so/watch-movie/avatar-19690",
      poster: "https://image.tmdb.org/t/p/w500/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
      genres: ["Fantasy", "Action", "Science Fiction", "Adventure"],
    },
    {
      id: "7",
      imdbId: "tt3447590",
      title: "Roald Dahl's Matilda the Musical",
      releaseDate: "2022-11-25",
      trailerLink: "https://www.youtube.com/watch?v=lroAhsDr2vI",
      movieLink:
        "https://attackertv.so/watch-movie/roald-dahls-matilda-the-musical-91756.9246883",
      poster: "https://image.tmdb.org/t/p/w500/ga8R3OiOMMgSvZ4cOj8x7prUNYZ.jpg",
      genres: ["Fantasy", "Family", "Comedy"],
    },
    {
      id: "8",
      imdbId: "tt9114286",
      title: "Black Panther: Wakanda Forever",
      releaseDate: "2022-11-11",
      trailerLink: "https://www.youtube.com/watch?v=_Z3QKkl1WyM",
      movieLink:
        "https://attackertv.so/watch-movie/black-panther-ii-66672.9148009",
      poster: "https://image.tmdb.org/t/p/w500/cryEN3sWlgB2wTzcUNVtDGI8bkM.jpg",
      genres: ["Action", "Adventure", "Science Fiction"],
    },
  ];
  return (
    <div className="cambio">
      <Header />
      <ListaPeliculas movies={movies} />

      <Footer />
    </div>
  );
};

export default Lista;
