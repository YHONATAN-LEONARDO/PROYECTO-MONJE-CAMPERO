'use client';
import './styles.css';

import Link from 'next/link';

export default function AdminDashboard() {
  return (
    <div className="admin-dashboard">
      <h1 className="admin-dashboard-title">Bienvenido al Panel de Administración</h1>

      <div className="image-wrapper">
        <img src="/monje.png" alt="Imagen del Monje" className="admin-dashboard-img" />
      </div>

      <p className="admin-dashboard-text">Desde aquí puedes gestionar el contenido del cine.</p>

      <Link href="/admin/pelicula" className="admin-dashboard-btn">
        ➕ Añadir nueva película
      </Link>

      <div className="admin-stats">
        <div className="stat-card">🎞 <span>Películas: <strong>12</strong></span></div>
        <div className="stat-card">🧃 <span>Snacks: <strong>7</strong></span></div>
        <div className="stat-card">💸 <span>Ofertas: <strong>3</strong></span></div>
      </div>
    </div>
  );
}
