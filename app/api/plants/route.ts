import { NextResponse } from "next/server";
import { getAllPlants } from "@/lib/plants";

export async function GET() {
  const plants = await getAllPlants();
  return NextResponse.json(plants);
}
