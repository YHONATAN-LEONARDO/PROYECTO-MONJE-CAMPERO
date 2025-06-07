import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const data = await request.json();

    // Guardar o validar datos
    console.log("Snack recibido:", data);

    return NextResponse.json({ message: "Snack guardado", data });
  } catch (error) {
    return NextResponse.json(
      { error: "Error al procesar el snack" },
      { status: 500 }
    );
  }
}
