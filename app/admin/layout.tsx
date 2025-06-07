import './styles.css';
import Link from 'next/link';
import { ReactNode } from 'react';

export default function AdminLayout({ children }: { children: ReactNode }) {
  return (
    <div className="admin-mobile-container">
      <header className="admin-mobile-header">
        <h1 className="admin-mobile-title">AdminCine</h1>
        <nav className="admin-mobile-nav">
          <Link href="/admin">Inicio</Link>
          <Link href="/admin/pelicula">Películas</Link>
          <Link href="/admin/oferta">Ofertas</Link>
          <Link href="/admin/snack">Snacks</Link>
        </nav>
      </header>
      <main className="admin-mobile-main">
        {children}
      </main>
    </div>
  );
}
