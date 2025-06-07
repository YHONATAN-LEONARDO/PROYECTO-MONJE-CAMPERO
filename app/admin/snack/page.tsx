"use client";
import '../styles.css';

import { useState } from "react";

export default function ConfiteriaAdmin() {
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");
  const [quantity, setQuantity] = useState("");
  const [imageUrl, setImageUrl] = useState("");
  const [imageFile, setImageFile] = useState<File | null>(null);
  const [loading, setLoading] = useState(false);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      setImageFile(e.target.files[0]);
      setImageUrl("");
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);

    const snackData = {
      name,
      description,
      price: parseFloat(price),
      quantity: parseInt(quantity),
      image: imageFile ? imageFile.name : imageUrl,
    };

    try {
      const res = await fetch("/api/snack", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(snackData),
      });

      if (res.ok) {
        alert("Snack añadido correctamente");
        setName("");
        setDescription("");
        setPrice("");
        setQuantity("");
        setImageUrl("");
        setImageFile(null);
      } else {
        alert("Error al añadir el snack");
      }
    } catch (error) {
      alert("Error de conexión");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="p-4 max-w-md mx-auto">
      <h1 className="text-2xl font-semibold mb-4">Gestión de Snacks</h1>

      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <label>
          Nombre del snack:
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
            className="input"
          />
        </label>

        <label>
          Descripción:
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            required
            className="input"
            rows={3}
          />
        </label>

        <label>
          Precio (Bs):
          <input
            type="number"
            min="0"
            step="0.01"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
            required
            className="input"
          />
        </label>

        <label>
          Cantidad inicial:
          <input
            type="number"
            min="0"
            step="1"
            value={quantity}
            onChange={(e) => setQuantity(e.target.value)}
            required
            className="input"
          />
        </label>

        <label>
          URL de la imagen (opcional):
          <input
            type="url"
            value={imageUrl}
            onChange={(e) => {
              setImageUrl(e.target.value);
              if (imageFile) setImageFile(null);
            }}
            placeholder="https://ejemplo.com/imagen.jpg"
            className="input"
          />
        </label>

        <label>
          O subir imagen desde dispositivo:
          <input
            type="file"
            accept="image/*"
            onChange={handleFileChange}
            className="input"
          />
        </label>

        <button
          type="submit"
          disabled={loading}
          className="bg-green-600 text-white py-2 rounded hover:bg-green-700 transition disabled:opacity-50"
        >
          {loading ? "Guardando..." : "Añadir Snack"}
        </button>
      </form>
    </div>
  );
}
