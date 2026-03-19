import { NextRequest, NextResponse } from "next/server";
import { getPlantsBySlug } from "@/lib/plants";

const MAX_SLUGS = 20;
const SLUG_PATTERN = /^[a-z0-9-]+$/;
const VALID_SPACES = new Set(["balcony", "raised_bed", "small_yard", "large_yard"]);

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body || !Array.isArray(body.slugs)) {
      return NextResponse.json({ error: "Invalid request" }, { status: 400 });
    }

    const slugs: string[] = body.slugs
      .filter((s: unknown) => typeof s === "string" && SLUG_PATTERN.test(s))
      .slice(0, MAX_SLUGS);

    const space = typeof body.space === "string" && VALID_SPACES.has(body.space)
      ? body.space
      : undefined;

    const plants = await getPlantsBySlug(slugs, space);
    return NextResponse.json(plants);
  } catch (err) {
    console.error("plants/details error:", err);
    return NextResponse.json({ error: "Failed to load plant details" }, { status: 500 });
  }
}
