import { NextRequest, NextResponse } from "next/server";
import { getPlantingSchedule } from "@/lib/plants";

const MAX_SLUGS = 20;
const SLUG_PATTERN = /^[a-z0-9-]+$/;
const VALID_ZONES = new Set(["cold", "temperate", "warm", "hot"]);

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body || !Array.isArray(body.slugs) || typeof body.zone !== "string") {
      return NextResponse.json({ error: "Invalid request" }, { status: 400 });
    }

    if (!VALID_ZONES.has(body.zone)) {
      return NextResponse.json({ error: "Invalid zone" }, { status: 400 });
    }

    const slugs: string[] = body.slugs
      .filter((s: unknown) => typeof s === "string" && SLUG_PATTERN.test(s))
      .slice(0, MAX_SLUGS);

    const schedule = await getPlantingSchedule(slugs, body.zone);
    return NextResponse.json(schedule);
  } catch (err) {
    console.error("plants/schedule error:", err);
    return NextResponse.json({ error: "Failed to load schedule" }, { status: 500 });
  }
}
