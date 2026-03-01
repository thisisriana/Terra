import { NextRequest, NextResponse } from "next/server";
import { getPlantsBySlug } from "@/lib/plants";

export async function POST(request: NextRequest) {
  const { slugs } = await request.json();
  const plants = await getPlantsBySlug(slugs);
  return NextResponse.json(plants);
}
