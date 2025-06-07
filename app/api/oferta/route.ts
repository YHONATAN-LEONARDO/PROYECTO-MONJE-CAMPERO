import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const data = await request.json();

    // Validaciones o guardado en DB
    console.log("Oferta recibida:", data);

    return NextResponse.json({ message: "Oferta guardada", data });
  } catch (error) {
    return NextResponse.json(
      { error: "Error al procesar la oferta" },
      { status: 500 }
    );
  }
}



