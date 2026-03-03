import { NextRequest, NextResponse } from "next/server";
import { getPlantingSchedule } from "@/lib/plants";

export async function POST(request: NextRequest) {
  const { slugs, zone } = await request.json();
  const schedule = await getPlantingSchedule(slugs, zone);
  return NextResponse.json(schedule);
}
