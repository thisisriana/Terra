import { NextRequest, NextResponse } from "next/server";
import { getPlantsBySlug } from "@/lib/plants";

const MAX_SLUGS = 20;
const SLUG_PATTERN = /^[a-z0-9-]+$/;

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body || !Array.isArray(body.slugs)) {
      return NextResponse.json({ error: "Invalid request" }, { status: 400 });
    }

    const slugs: string[] = body.slugs
      .filter((s: unknown) => typeof s === "string" && SLUG_PATTERN.test(s))
      .slice(0, MAX_SLUGS);

    const plants = await getPlantsBySlug(slugs);
    return NextResponse.json(plants);
  } catch (err) {
    console.error("plants/details error:", err);
    return NextResponse.json({ error: "Failed to load plant details" }, { status: 500 });
  }
}
