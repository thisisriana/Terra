import { NextRequest, NextResponse } from "next/server";

const MAX_PROMPT_LENGTH = 2000;

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body || typeof body.prompt !== "string") {
      return NextResponse.json({ error: "Invalid request" }, { status: 400 });
    }

    const prompt = body.prompt.slice(0, MAX_PROMPT_LENGTH);

    const response = await fetch("https://api.anthropic.com/v1/messages", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "x-api-key": process.env.ANTHROPIC_API_KEY!,
        "anthropic-version": "2023-06-01",
      },
      body: JSON.stringify({
        model: "claude-sonnet-4-6",
        max_tokens: 300,
        messages: [{ role: "user", content: prompt }],
      }),
    });

    if (!response.ok) {
      console.error("Anthropic API error:", response.status);
      return NextResponse.json({ text: "" }, { status: 200 });
    }

    const data = await response.json();
    const text = data.content?.find((b: { type: string; text?: string }) => b.type === "text")?.text ?? "";

    return NextResponse.json({ text });
  } catch (err) {
    console.error("garden-insight error:", err);
    return NextResponse.json({ text: "" }, { status: 200 });
  }
}
