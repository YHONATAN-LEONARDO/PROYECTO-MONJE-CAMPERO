"use client";

import React, { useState } from "react";

const API_KEY = "aqui la clave";

const Buscador = () => {
  const [busqueda, setBusqueda] = useState("");
  const [resultados, setResultados] = useState([]);
  const [mostrarResultados, setMostrarResultados] = useState(false);

  const manejarBusqueda = (e: React.ChangeEvent<HTMLInputElement>) => {
    setBusqueda(e.target.value);
  };

  const manejarEnvio = async (e: React.FormEvent) => {
    e.preventDefault();
    if (busqueda.trim() === "") return;

    try {
      const res = await fetch(
        `https://api.themoviedb.org/3/search/movie?api_key=${API_KEY}&query=${encodeURIComponent(
          busqueda
        )}&language=es-ES`
      );
      const data = await res.json();
      setResultados(data.results || []);
      setMostrarResultados(true);
    } catch (error) {
      console.error("Error al buscar películas:", error);
    }
  };

  const volverAlBuscador = () => {
    setBusqueda("");
    setResultados([]);
    setMostrarResultados(false);
  };

  return (
    <div className="buscador-contenedor">
      {!mostrarResultados ? (
        <form onSubmit={manejarEnvio} className="buscador-form">
          <input
            type="text"
            placeholder="Buscar películas..."
            value={busqueda}
            onChange={manejarBusqueda}
            // className="buscador-input"
            autoFocus
          />
          <button type="submit" className="buscador-boton">
            Buscar
          </button>
        </form>
      ) : (
        <div className="resultados-panel">
          <button onClick={volverAlBuscador} className="boton-volver" aria-label="Volver a búsqueda">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={2}
              stroke="currentColor"
              className="icon-flecha"
            >
              <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
            </svg>
            Volver
          </button>

          <div className="resultados">
            {resultados.length === 0 ? (
              <p className="no-resultados">No se encontraron películas.</p>
            ) : (
              resultados.map((pelicula) => (
                <div key={pelicula.id} className="resultado-card">
                  <h4>{pelicula.title}</h4>
                  <p>
                    <strong>Fecha:</strong> {pelicula.release_date || "No disponible"}
                  </p>
                  {pelicula.poster_path && (
                    <img
                      src={`https://image.tmdb.org/t/p/w200${pelicula.poster_path}`}
                      alt={pelicula.title}
                    />
                  )}
                  <p>{pelicula.overview || "Sinopsis no disponible."}</p>
                </div>
              ))
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default Buscador;
