"use client";
import '../styles.css';

import { useState } from "react";

export default function AnadirPelicula() {
  const [title, setTitle] = useState("");
  const [poster, setPoster] = useState("");
  const [releaseDate, setReleaseDate] = useState("");
  const [genres, setGenres] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);

    const genresArray = genres
      .split(",")
      .map((g) => g.trim())
      .filter(Boolean);

    const newMovie = {
      title,
      poster,
      releaseDate,
      genres: genresArray,
    };

    try {
      const res = await fetch("/api/pelicula", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(newMovie),
      });

      if (res.ok) {
        alert("Película añadida correctamente");
        setTitle("");
        setPoster("");
        setReleaseDate("");
        setGenres("");
      } else {
        alert("Error al añadir la película");
      }
    } catch (error) {
      alert("Error de conexión");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="p-4 max-w-md mx-auto">
      <h1 className="text-2xl font-semibold mb-4">Añadir Película</h1>
      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <label>
          Título:
          <input
            type="text"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            required
            className="input"
          />
        </label>

        <label>
          URL del póster:
          <input
            type="url"
            value={poster}
            onChange={(e) => setPoster(e.target.value)}
            required
            placeholder="https://ejemplo.com/poster.jpg"
            className="input"
          />
        </label>

        <label>
          Fecha de estreno:
          <input
            type="date"
            value={releaseDate}
            onChange={(e) => setReleaseDate(e.target.value)}
            required
            className="input"
          />
        </label>

        <label>
          Géneros (separados por coma):
          <input
            type="text"
            value={genres}
            onChange={(e) => setGenres(e.target.value)}
            placeholder="Acción, Drama, Comedia"
            required
            className="input"
          />
        </label>

        <button
          type="submit"
          disabled={loading}
          className="bg-blue-600 text-white py-2 rounded hover:bg-blue-700 transition disabled:opacity-50"
        >
          {loading ? "Guardando..." : "Añadir Película"}
        </button>
      </form>
    </div>
  );
}
