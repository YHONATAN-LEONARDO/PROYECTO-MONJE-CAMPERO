'use client';
import '../styles.css';

import { useState } from 'react';

export default function OfertasAdmin() {
  const [title, setTitle] = useState('');
  const [imageUrl, setImageUrl] = useState('');
  const [imageFile, setImageFile] = useState<File | null>(null);
  const [loading, setLoading] = useState(false);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      setImageFile(e.target.files[0]);
      setImageUrl(''); // Limpia URL si se sube archivo
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);

    // Prepara datos para enviar
    const offerData = {
      title,
      image: imageFile ? imageFile.name : imageUrl,
    };

    try {
      const res = await fetch('/api/oferta', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(offerData),
      });

      if (res.ok) {
        alert('Oferta añadida correctamente');
        setTitle('');
        setImageUrl('');
        setImageFile(null);
      } else {
        alert('Error al añadir la oferta');
      }
    } catch (error) {
      alert('Error de conexión');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="p-4 max-w-md mx-auto">
      <h1 className="text-2xl font-semibold mb-4">Gestión de Ofertas</h1>
      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <label className="flex flex-col">
          Título de la oferta:
          <input
            type="text"
            value={title}
            onChange={e => setTitle(e.target.value)}
            required
            className="input"
          />
        </label>

        <label className="flex flex-col">
          URL de la imagen (opcional):
          <input
            type="url"
            value={imageUrl}
            onChange={e => {
              setImageUrl(e.target.value);
              if (imageFile) setImageFile(null);
            }}
            placeholder="https://ejemplo.com/imagen.jpg"
            className="input"
          />
        </label>

        <label className="flex flex-col">
          O subir imagen desde dispositivo:
          <input
            type="file"
            accept="image/*"
            onChange={handleFileChange}
            className="input"
          />
          {imageFile && (
            <p className="mt-1 text-sm text-gray-600">Archivo seleccionado: {imageFile.name}</p>
          )}
        </label>

        <button
          type="submit"
          disabled={loading}
          className="bg-blue-600 text-white py-2 rounded hover:bg-blue-700 transition disabled:opacity-50"
        >
          {loading ? 'Guardando...' : 'Añadir Oferta'}
        </button>
      </form>
    </div>
  );
}
