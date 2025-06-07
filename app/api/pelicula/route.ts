import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const data = await request.json();

    // Aquí puedes agregar validaciones o guardar en DB
    console.log("Película recibida:", data);

    return NextResponse.json({ message: "Película guardada", data });
  } catch (error) {
    return NextResponse.json(
      { error: "Error al procesar la película" },
      { status: 500 }
    );
  }
}
