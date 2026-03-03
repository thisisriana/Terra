"use client";

import { useState, useEffect } from "react";

const STYLES = `
  @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,700;0,900;1,400;1,700&family=DM+Sans:wght@300;400;500&family=DM+Serif+Display:ital@0;1&display=swap');

  * { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --cream: #F5F0E8;
    --dark: #1A1A14;
    --green: #2D5016;
    --green-mid: #4A7C2F;
    --green-light: #7FB069;
    --terra: #C4622D;
    --gold: #D4A843;
    --warm-white: #FDFAF4;
    --ink: #2C2C20;
  }

  body { font-family: 'DM Sans', sans-serif; background: var(--cream); color: var(--ink); overflow-x: hidden; }

  .page { min-height: 100vh; }

  .hero {
    position: relative; height: 100vh; background: var(--dark);
    overflow: hidden; display: flex; flex-direction: column;
  }
  .hero-bg {
    position: absolute; inset: 0;
    background:
      radial-gradient(ellipse at 20% 50%, rgba(45,80,22,0.6) 0%, transparent 60%),
      radial-gradient(ellipse at 80% 20%, rgba(127,176,105,0.3) 0%, transparent 50%),
      radial-gradient(ellipse at 60% 80%, rgba(196,98,45,0.2) 0%, transparent 40%);
    z-index: 0;
  }
  .hero-grid {
    position: absolute; inset: 0;
    background-image:
      linear-gradient(rgba(127,176,105,0.08) 1px, transparent 1px),
      linear-gradient(90deg, rgba(127,176,105,0.08) 1px, transparent 1px);
    background-size: 60px 60px; z-index: 0;
  }
  .nav {
    position: relative; z-index: 10;
    display: flex; align-items: center; justify-content: space-between;
    padding: 28px 48px;
  }
  .nav-logo { font-family: 'Playfair Display', serif; font-size: 22px; font-weight: 900; color: var(--cream); letter-spacing: -0.5px; }
  .nav-logo span { color: var(--green-light); }
  .nav-links { display: flex; gap: 32px; }
  .nav-links a { color: rgba(245,240,232,0.6); text-decoration: none; font-size: 13px; letter-spacing: 1.5px; text-transform: uppercase; font-weight: 500; transition: color 0.2s; cursor: pointer; }
  .nav-links a:hover { color: var(--cream); }
  .hero-content { position: relative; z-index: 10; flex: 1; display: flex; flex-direction: column; justify-content: center; padding: 0 48px; max-width: 780px; }
  .hero-eyebrow { font-size: 11px; letter-spacing: 3px; text-transform: uppercase; color: var(--green-light); font-weight: 500; margin-bottom: 20px; display: flex; align-items: center; gap: 12px; }
  .hero-eyebrow::before { content: ''; display: block; width: 32px; height: 1px; background: var(--green-light); }
  .hero-title { font-family: 'Playfair Display', serif; font-size: clamp(52px, 8vw, 96px); font-weight: 900; line-height: 0.92; color: var(--cream); margin-bottom: 28px; }
  .hero-title em { font-style: italic; color: var(--green-light); }
  .hero-sub { font-size: 16px; line-height: 1.7; color: rgba(245,240,232,0.65); max-width: 480px; margin-bottom: 44px; font-weight: 300; }
  .hero-cta { display: flex; gap: 16px; align-items: center; }
  .btn-primary { background: var(--green-light); color: var(--dark); border: none; padding: 16px 36px; font-size: 14px; font-weight: 600; letter-spacing: 0.5px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-primary:hover { background: var(--gold); transform: translateY(-1px); }
  .btn-ghost { background: transparent; border: 1px solid rgba(245,240,232,0.3); color: rgba(245,240,232,0.7); padding: 16px 28px; font-size: 14px; font-weight: 400; letter-spacing: 0.5px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-ghost:hover { border-color: var(--cream); color: var(--cream); }
  .hero-bottom { position: relative; z-index: 10; padding: 0 48px 36px; display: flex; gap: 48px; }
  .stat-num { font-family: 'Playfair Display', serif; font-size: 32px; font-weight: 700; color: var(--cream); }
  .stat-label { font-size: 11px; letter-spacing: 1.5px; text-transform: uppercase; color: rgba(245,240,232,0.4); margin-top: 2px; }
  .hero-image-col { position: absolute; right: 0; top: 0; bottom: 0; width: 42%; z-index: 5; display: flex; flex-direction: column; }
  .hero-img-panel { flex: 1; background: linear-gradient(135deg, #2D5016 0%, #4A7C2F 40%, #7FB069 100%); position: relative; overflow: hidden; }
  .hero-img-panel::after { content: '🌿'; position: absolute; inset: 0; display: flex; align-items: center; justify-content: center; font-size: 120px; opacity: 0.15; }
  .img-caption { padding: 16px 24px; background: var(--terra); font-size: 11px; letter-spacing: 2px; text-transform: uppercase; color: var(--cream); font-weight: 500; }

  .features-strip { background: var(--warm-white); padding: 80px 48px; border-top: 1px solid rgba(45,80,22,0.1); }
  .section-label { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--green); margin-bottom: 48px; font-weight: 600; }
  .features-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1px; background: rgba(45,80,22,0.1); }
  .feature-card { background: var(--warm-white); padding: 40px 32px; transition: background 0.2s; }
  .feature-card:hover { background: var(--cream); }
  .feature-icon { font-size: 28px; margin-bottom: 20px; }
  .feature-title { font-family: 'Playfair Display', serif; font-size: 20px; font-weight: 700; margin-bottom: 12px; color: var(--dark); }
  .feature-desc { font-size: 14px; line-height: 1.7; color: #666; font-weight: 300; }

  .wizard-page { min-height: 100vh; background: var(--cream); display: flex; }
  .wizard-sidebar { width: 340px; min-height: 100vh; background: var(--dark); padding: 48px 40px; position: sticky; top: 0; height: 100vh; display: flex; flex-direction: column; flex-shrink: 0; }
  .wizard-logo { font-family: 'Playfair Display', serif; font-size: 18px; font-weight: 900; color: var(--cream); margin-bottom: 48px; cursor: pointer; }
  .wizard-logo span { color: var(--green-light); }
  .wizard-steps { flex: 1; }
  .wizard-step-item { display: flex; gap: 16px; align-items: flex-start; padding: 16px 0; border-bottom: 1px solid rgba(255,255,255,0.05); opacity: 0.35; transition: opacity 0.3s; }
  .wizard-step-item.active { opacity: 1; }
  .wizard-step-item.done { opacity: 0.6; }
  .step-num { width: 24px; height: 24px; border-radius: 50%; border: 1px solid rgba(127,176,105,0.4); display: flex; align-items: center; justify-content: center; font-size: 11px; color: var(--green-light); flex-shrink: 0; margin-top: 2px; }
  .wizard-step-item.active .step-num { background: var(--green-light); color: var(--dark); border-color: var(--green-light); font-weight: 700; }
  .wizard-step-item.done .step-num { background: var(--green); color: var(--cream); border-color: var(--green); }
  .step-title { font-size: 13px; font-weight: 500; color: var(--cream); }
  .step-subtitle { font-size: 11px; color: rgba(245,240,232,0.4); margin-top: 3px; }
  .wizard-tip { background: rgba(127,176,105,0.1); border-left: 2px solid var(--green-light); padding: 16px; font-size: 12px; line-height: 1.6; color: rgba(245,240,232,0.6); font-style: italic; }
  .wizard-main { flex: 1; padding: 64px 72px; max-width: 800px; }
  .wizard-progress { height: 2px; background: rgba(45,80,22,0.1); margin-bottom: 56px; position: relative; }
  .wizard-progress-fill { height: 100%; background: var(--green-light); transition: width 0.4s ease; }
  .wizard-step-label { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--green); margin-bottom: 16px; font-weight: 600; }
  .wizard-question { font-family: 'Playfair Display', serif; font-size: clamp(28px, 4vw, 42px); font-weight: 700; line-height: 1.15; color: var(--dark); margin-bottom: 12px; }
  .wizard-question em { font-style: italic; color: var(--green); }
  .wizard-desc { font-size: 15px; color: #888; font-weight: 300; line-height: 1.6; margin-bottom: 44px; }

  .options-grid { display: grid; gap: 12px; margin-bottom: 44px; }
  .options-grid.cols-2 { grid-template-columns: 1fr 1fr; }
  .options-grid.cols-3 { grid-template-columns: repeat(3, 1fr); }
  .option-card { border: 1.5px solid rgba(45,80,22,0.12); padding: 20px 24px; cursor: pointer; transition: all 0.2s; background: var(--warm-white); position: relative; }
  .option-card:hover { border-color: var(--green-light); background: white; }
  .option-card.selected { border-color: var(--green); background: rgba(45,80,22,0.04); }
  .option-card.selected::after { content: '✓'; position: absolute; top: 14px; right: 16px; color: var(--green); font-size: 13px; font-weight: 700; }
  .option-icon { font-size: 22px; margin-bottom: 10px; }
  .option-title { font-size: 15px; font-weight: 600; color: var(--dark); }
  .option-sub { font-size: 12px; color: #888; margin-top: 4px; font-weight: 300; }

  .plant-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px; margin-bottom: 44px; }
  .plant-chip { border: 1.5px solid rgba(45,80,22,0.12); padding: 14px 12px; cursor: pointer; text-align: center; background: var(--warm-white); transition: all 0.2s; }
  .plant-chip:hover { border-color: var(--green-light); }
  .plant-chip.selected { border-color: var(--green); background: rgba(45,80,22,0.05); }
  .plant-chip .plant-emoji { font-size: 24px; display: block; margin-bottom: 6px; }
  .plant-chip .plant-name { font-size: 11px; font-weight: 500; color: var(--dark); }
  .plant-chip.selected .plant-name { color: var(--green); }

  .wizard-nav { display: flex; gap: 12px; align-items: center; }
  .btn-next { background: var(--dark); color: var(--cream); border: none; padding: 14px 36px; font-size: 14px; font-weight: 500; cursor: pointer; font-family: 'DM Sans', sans-serif; letter-spacing: 0.5px; transition: all 0.2s; }
  .btn-next:hover { background: var(--green); }
  .btn-next:disabled { opacity: 0.4; cursor: not-allowed; }
  .btn-back { background: transparent; border: 1.5px solid rgba(45,80,22,0.2); color: #888; padding: 14px 24px; font-size: 14px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-back:hover { border-color: var(--ink); color: var(--ink); }

  .results-page { min-height: 100vh; background: var(--cream); }
  .results-hero { background: var(--dark); padding: 48px; position: relative; overflow: hidden; }
  .results-hero-bg { position: absolute; inset: 0; background: radial-gradient(ellipse at 70% 50%, rgba(45,80,22,0.5) 0%, transparent 70%); }
  .results-nav { position: relative; z-index: 2; display: flex; align-items: center; justify-content: space-between; margin-bottom: 48px; }
  .results-eyebrow { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--green-light); font-weight: 600; margin-bottom: 16px; display: flex; align-items: center; gap: 10px; }
  .results-eyebrow::before { content: ''; width: 24px; height: 1px; background: var(--green-light); display: block; }
  .results-title { font-family: 'Playfair Display', serif; font-size: clamp(32px, 5vw, 56px); font-weight: 900; color: var(--cream); line-height: 1.05; margin-bottom: 20px; }
  .results-title em { color: var(--green-light); font-style: italic; }
  .results-meta { display: flex; gap: 24px; flex-wrap: wrap; }
  .meta-pill { background: rgba(127,176,105,0.15); border: 1px solid rgba(127,176,105,0.3); padding: 6px 14px; font-size: 12px; color: var(--green-light); font-weight: 500; }
  .results-body { padding: 64px 48px; }
  .overview-strip { display: grid; grid-template-columns: repeat(4, 1fr); gap: 1px; background: rgba(45,80,22,0.1); margin-bottom: 64px; }
  .overview-card { background: var(--warm-white); padding: 28px 24px; }
  .overview-label { font-size: 10px; letter-spacing: 2px; text-transform: uppercase; color: var(--green); margin-bottom: 8px; font-weight: 600; }
  .overview-value { font-family: 'Playfair Display', serif; font-size: 18px; font-weight: 700; color: var(--dark); line-height: 1.3; }
  .section-header { display: flex; align-items: baseline; justify-content: space-between; margin-bottom: 32px; }
  .section-title { font-family: 'Playfair Display', serif; font-size: 28px; font-weight: 700; color: var(--dark); }
  .section-count { font-size: 13px; color: #999; font-weight: 300; }
  .plants-list { display: flex; flex-direction: column; gap: 2px; margin-bottom: 64px; }

  .plant-row { background: var(--warm-white); border-left: 3px solid transparent; transition: all 0.2s; overflow: hidden; }
  .plant-row.expanded { border-left-color: var(--green); }
  .plant-row-header { padding: 24px 28px; cursor: pointer; display: flex; align-items: center; gap: 20px; transition: background 0.2s; }
  .plant-row-header:hover { background: rgba(45,80,22,0.03); }
  .plant-row-emoji { font-size: 28px; flex-shrink: 0; }
  .plant-row-info { flex: 1; }
  .plant-row-name { font-family: 'Playfair Display', serif; font-size: 20px; font-weight: 700; color: var(--dark); }
  .plant-row-tagline { font-size: 12px; color: #999; margin-top: 3px; font-weight: 300; }
  .plant-row-badges { display: flex; gap: 8px; margin-left: auto; flex-shrink: 0; }
  .badge { padding: 4px 10px; font-size: 10px; letter-spacing: 1px; text-transform: uppercase; font-weight: 600; }
  .badge-easy { background: rgba(127,176,105,0.15); color: var(--green); }
  .badge-moderate { background: rgba(212,168,67,0.15); color: #B8860B; }
  .badge-sun { background: rgba(212,168,67,0.1); color: #C4862D; }
  .badge-part { background: rgba(127,176,105,0.1); color: var(--green-mid); }
  .plant-chevron { font-size: 18px; color: #ccc; transition: transform 0.3s; flex-shrink: 0; }
  .plant-row.expanded .plant-chevron { transform: rotate(180deg); color: var(--green); }
  .plant-details { padding: 0 28px 28px; display: none; grid-template-columns: repeat(2, 1fr); gap: 16px; }
  .plant-row.expanded .plant-details { display: grid; }
  .detail-block { background: var(--cream); padding: 20px 22px; }
  .detail-block.full-width { grid-column: 1 / -1; }
  .detail-block-label { font-size: 10px; letter-spacing: 2px; text-transform: uppercase; color: var(--green); font-weight: 600; margin-bottom: 10px; }
  .detail-block-content { font-size: 13px; line-height: 1.7; color: #555; font-weight: 300; }
  .detail-block-content ul { list-style: none; }
  .detail-block-content ul li { padding: 4px 0; display: flex; gap: 8px; align-items: flex-start; }
  .detail-block-content ul li::before { content: '→'; color: var(--green-light); flex-shrink: 0; }

  .companions-section { background: var(--dark); padding: 48px; margin-bottom: 64px; }
  .companions-title { font-family: 'Playfair Display', serif; font-size: 24px; font-weight: 700; color: var(--cream); margin-bottom: 8px; }
  .companions-sub { font-size: 13px; color: rgba(245,240,232,0.4); margin-bottom: 32px; font-weight: 300; }
  .companions-grid { display: flex; flex-wrap: wrap; gap: 10px; }
  .companion-item { background: rgba(127,176,105,0.12); border: 1px solid rgba(127,176,105,0.2); padding: 12px 18px; }
  .companion-plants { font-size: 13px; font-weight: 500; color: var(--cream); }
  .companion-note { font-size: 11px; color: rgba(245,240,232,0.5); margin-top: 2px; }

  .soil-section { background: var(--warm-white); padding: 48px; margin-bottom: 64px; border-left: 3px solid var(--terra); }
  .start-over { text-align: center; padding: 48px; border-top: 1px solid rgba(45,80,22,0.1); }
  .start-over p { font-size: 14px; color: #999; margin-bottom: 20px; font-weight: 300; }

  .calendar-section { background: var(--warm-white); padding: 48px; margin-bottom: 64px; border-left: 3px solid var(--green); overflow-x: auto; }
  .calendar-legend { display: flex; gap: 24px; margin-bottom: 28px; flex-wrap: wrap; }
  .legend-item { display: flex; align-items: center; gap: 8px; font-size: 12px; color: #666; font-weight: 400; }
  .legend-swatch { width: 16px; height: 16px; border-radius: 2px; flex-shrink: 0; }
  .calendar-grid { min-width: 640px; }
  .calendar-header-row { display: grid; grid-template-columns: 130px repeat(12, 1fr); gap: 2px; margin-bottom: 4px; }
  .calendar-month-label { text-align: center; font-size: 9px; letter-spacing: 1px; text-transform: uppercase; color: #aaa; font-weight: 600; padding: 4px 0; }
  .calendar-month-label.current { color: var(--green); font-weight: 700; }
  .calendar-plant-row { display: grid; grid-template-columns: 130px repeat(12, 1fr); gap: 2px; margin-bottom: 2px; }
  .calendar-plant-name { font-size: 11px; font-weight: 500; color: var(--dark); display: flex; align-items: center; gap: 5px; padding-right: 8px; overflow: hidden; white-space: nowrap; }
  .calendar-cell { height: 26px; border-radius: 2px; }
  .calendar-cell.empty { background: rgba(45,80,22,0.04); }
  .calendar-cell.indoor { background: #D4A843; }
  .calendar-cell.outdoor { background: #7FB069; }
  .calendar-cell.harvest { background: rgba(74,124,47,0.25); border: 1px solid rgba(74,124,47,0.3); }
  .calendar-cell.current-month { outline: 2px solid rgba(45,80,22,0.3); outline-offset: -2px; }
  .calendar-notes { font-size: 12px; color: #777; line-height: 1.6; margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(45,80,22,0.1); font-weight: 300; }

  .ai-loading { display: flex; flex-direction: column; align-items: center; justify-content: center; min-height: 400px; gap: 20px; }
  .ai-spinner { width: 48px; height: 48px; border: 2px solid rgba(45,80,22,0.1); border-top-color: var(--green); border-radius: 50%; animation: spin 0.8s linear infinite; }
  @keyframes spin { to { transform: rotate(360deg); } }
  .ai-loading-text { font-family: 'Playfair Display', serif; font-size: 22px; color: var(--dark); font-style: italic; }
  .ai-loading-sub { font-size: 13px; color: #999; font-weight: 300; }

  @media (max-width: 900px) {
    .wizard-sidebar { display: none; }
    .wizard-main { padding: 40px 32px; }
    .plant-grid { grid-template-columns: repeat(3, 1fr); }
    .options-grid.cols-3 { grid-template-columns: 1fr 1fr; }
    .overview-strip { grid-template-columns: repeat(2, 1fr); }
    .hero-image-col { display: none; }
    .nav { padding: 24px; }
    .hero-content { padding: 0 24px; }
    .hero-bottom { padding: 0 24px 32px; gap: 32px; }
    .results-body, .results-hero, .companions-section, .soil-section { padding: 32px 24px; }
    .features-strip { padding: 60px 24px; }
    .features-grid { grid-template-columns: 1fr; }
    .plant-details { grid-template-columns: 1fr; }
  }
`;

// ── Types ────────────────────────────────────────────────────────────────────

interface PlantItem {
  slug: string;
  name: string;
  emoji: string;
  category: string;
}

interface CompanionEntry {
  relationship: string;
  note: string;
  companion: { slug: string; name: string } | null;
}

interface TipEntry {
  tip: string;
  category: string;
  sort_order: number;
}

interface PlantDetail {
  slug: string;
  name: string;
  emoji: string;
  tagline: string;
  difficulty: string;
  sun_requirement: string;
  light_description: string;
  water_description: string;
  soil_description: string;
  ph_min: number;
  ph_max: number;
  drainage: string;
  plant_tips: TipEntry[];
  companion_planting: CompanionEntry[];
}

interface Answers {
  space: string | null;
  experience: string | null;
  zone: string | null;
  plants: string[];
  goals: string[];
}

interface PlantSchedule {
  slug: string;
  name: string;
  emoji: string;
  indoor_start_months: number[] | null;
  outdoor_plant_months: number[] | null;
  harvest_months: number[] | null;
  notes: string | null;
}

// ── UI Config (not plant data) ───────────────────────────────────────────────

const WIZARD_STEPS = [
  { id: "space",      title: "Your Space",      subtitle: "What are you working with?" },
  { id: "experience", title: "Your Experience",  subtitle: "How green is your thumb?" },
  { id: "zone",       title: "Your Climate",     subtitle: "Where in the world are you?" },
  { id: "plants",     title: "Plant Selection",  subtitle: "What do you want to grow?" },
  { id: "goals",      title: "Your Goals",       subtitle: "What matters most?" },
];

const ZONE_OPTIONS = [
  { id: "cold",      icon: "❄️",  title: "Cold Winters",      sub: "Zones 3–5 · Minnesota, Maine, Montana, Wisconsin" },
  { id: "temperate", icon: "🌤️",  title: "Temperate Climate", sub: "Zones 6–7 · Virginia, Missouri, Pacific NW, New England" },
  { id: "warm",      icon: "☀️",  title: "Mild & Warm",       sub: "Zones 8–9 · Georgia, Southern CA, Gulf Coast, Texas" },
  { id: "hot",       icon: "🌴",  title: "Hot & Frost-Free",  sub: "Zones 10–11 · South Florida, Hawaii, Southern CA desert" },
];

const SPACE_OPTIONS = [
  { id: "balcony",    icon: "🏙️", title: "Balcony / Patio",    sub: "Container gardening, limited sq footage" },
  { id: "raised_bed", icon: "🪴", title: "Raised Beds",         sub: "Dedicated beds, more control" },
  { id: "small_yard", icon: "🌱", title: "Small Yard",          sub: "Up to 1,000 sq ft of growing space" },
  { id: "large_yard", icon: "🌳", title: "Large Yard / Plot",   sub: "1/4 acre or more" },
];

const EXPERIENCE_OPTIONS = [
  { id: "new",       icon: "🌱", title: "Complete Beginner",  sub: "Never grown anything" },
  { id: "some",      icon: "🌿", title: "Some Experience",    sub: "A few seasons under my belt" },
  { id: "confident", icon: "🌳", title: "Confident Gardener", sub: "Know my way around a garden" },
];

const GOAL_OPTIONS = [
  { id: "eat",       icon: "🍽️", title: "Grow food to eat" },
  { id: "beauty",    icon: "🌸", title: "Beautiful outdoor space" },
  { id: "learn",     icon: "📚", title: "Learn & experiment" },
  { id: "wellness",  icon: "🧘", title: "Therapeutic & mindful" },
];

function getSpaceLabel(id: string | null): string {
  return SPACE_OPTIONS.find(s => s.id === id)?.title ?? id ?? "";
}

function getZoneLabel(id: string | null): string {
  return ZONE_OPTIONS.find(z => z.id === id)?.title ?? id ?? "";
}

const MONTH_NAMES = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];

function PlantingCalendar({ schedule }: { schedule: PlantSchedule[] }) {
  const currentMonth = new Date().getMonth() + 1;

  return (
    <div className="calendar-section">
      <div className="section-title" style={{ fontFamily: "'Playfair Display', serif", fontSize: 24, marginBottom: 8 }}>Planting Calendar</div>
      <p style={{ color: "#999", fontSize: 13, marginBottom: 28, fontWeight: 300 }}>When to start seeds, plant outdoors, and harvest — specific to your growing zone</p>

      <div className="calendar-legend">
        <div className="legend-item">
          <div className="legend-swatch" style={{ background: "#D4A843" }} />
          Start seeds indoors
        </div>
        <div className="legend-item">
          <div className="legend-swatch" style={{ background: "#7FB069" }} />
          Plant / transplant outdoors
        </div>
        <div className="legend-item">
          <div className="legend-swatch" style={{ background: "rgba(74,124,47,0.25)", border: "1px solid rgba(74,124,47,0.3)" }} />
          Harvest window
        </div>
      </div>

      <div className="calendar-grid">
        <div className="calendar-header-row">
          <div />
          {MONTH_NAMES.map((m, i) => (
            <div key={m} className={`calendar-month-label${i + 1 === currentMonth ? " current" : ""}`}>{m}</div>
          ))}
        </div>

        {schedule.map(plant => (
          <div key={plant.slug} className="calendar-plant-row">
            <div className="calendar-plant-name">
              <span>{plant.emoji}</span>
              <span>{plant.name}</span>
            </div>
            {MONTH_NAMES.map((_, i) => {
              const m = i + 1;
              const isIndoor  = plant.indoor_start_months?.includes(m);
              const isOutdoor = plant.outdoor_plant_months?.includes(m);
              const isHarvest = plant.harvest_months?.includes(m);
              const isCurrent = m === currentMonth;

              let cls = "calendar-cell";
              if (isIndoor)       cls += " indoor";
              else if (isOutdoor) cls += " outdoor";
              else if (isHarvest) cls += " harvest";
              else                cls += " empty";
              if (isCurrent)      cls += " current-month";

              const tip = isIndoor ? "Start indoors" : isOutdoor ? "Plant / transplant outdoors" : isHarvest ? "Harvest window" : "";
              return <div key={m} className={cls} title={tip} />;
            })}
          </div>
        ))}
      </div>

      {schedule.some(s => s.notes) && (
        <div className="calendar-notes">
          {schedule.filter(s => s.notes).map(s => (
            <div key={s.slug} style={{ marginBottom: 8 }}>
              <strong>{s.emoji} {s.name}:</strong> {s.notes}
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

// ── Sub-components ───────────────────────────────────────────────────────────

function SunBadge({ type }: { type: string }) {
  return type === "full"
    ? <span className="badge badge-sun">☀ Full Sun</span>
    : <span className="badge badge-part">⛅ Part Sun</span>;
}

function DiffBadge({ level }: { level: string }) {
  return level === "easy"
    ? <span className="badge badge-easy">Easy</span>
    : <span className="badge badge-moderate">Moderate</span>;
}

function PlantRow({ plant }: { plant: PlantDetail }) {
  const [open, setOpen] = useState(false);

  const beneficial = plant.companion_planting
    .filter(c => c.relationship === "beneficial" && c.companion)
    .map(c => c.companion!.name);

  const harmful = plant.companion_planting
    .filter(c => c.relationship === "harmful" && c.companion)
    .map(c => c.companion!.name);

  return (
    <div className={`plant-row ${open ? "expanded" : ""}`}>
      <div className="plant-row-header" onClick={() => setOpen(!open)}>
        <span className="plant-row-emoji">{plant.emoji}</span>
        <div className="plant-row-info">
          <div className="plant-row-name">{plant.name}</div>
          <div className="plant-row-tagline">{plant.tagline}</div>
        </div>
        <div className="plant-row-badges">
          <SunBadge type={plant.sun_requirement} />
          <DiffBadge level={plant.difficulty} />
        </div>
        <span className="plant-chevron">⌄</span>
      </div>

      <div className="plant-details">
        <div className="detail-block">
          <div className="detail-block-label">☀ Light Requirements</div>
          <div className="detail-block-content">{plant.light_description}</div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">💧 Watering</div>
          <div className="detail-block-content">{plant.water_description}</div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">🌍 Soil Composition</div>
          <div className="detail-block-content">
            {plant.soil_description}
            {plant.ph_min && plant.ph_max && (
              <> pH {plant.ph_min}–{plant.ph_max}.</>
            )}
          </div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">🤝 Companion Plants</div>
          <div className="detail-block-content">
            {beneficial.length > 0 && <><strong>Grows well with: </strong>{beneficial.join(", ")}<br /></>}
            {harmful.length > 0 && <><strong>Keep away from: </strong>{harmful.join(", ")}</>}
            {beneficial.length === 0 && harmful.length === 0 && "No companion data yet."}
          </div>
        </div>
        <div className="detail-block full-width">
          <div className="detail-block-label">💡 Pro Tips</div>
          <div className="detail-block-content">
            <ul>
              {plant.plant_tips.map((t, i) => <li key={i}>{t.tip}</li>)}
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
}

// ── Pages ────────────────────────────────────────────────────────────────────

function HomePage({ onStart }: { onStart: () => void }) {
  return (
    <div className="page">
      <div className="hero">
        <div className="hero-bg" />
        <div className="hero-grid" />
        <nav className="nav">
          <div className="nav-logo">Terra<span>.</span></div>
          <div className="nav-links">
            <a>Guides</a>
            <a>Community</a>
            <a onClick={onStart}>Plan My Garden</a>
          </div>
        </nav>
        <div className="hero-content">
          <div className="hero-eyebrow">The Garden Planning Tool</div>
          <h1 className="hero-title">Grow <em>anything.</em><br />Anywhere.</h1>
          <p className="hero-sub">From a single herb pot on your balcony to a quarter-acre backyard — personalized guidance for every gardener, every space.</p>
          <div className="hero-cta">
            <button className="btn-primary" onClick={onStart}>Plan My Garden →</button>
            <button className="btn-ghost">See How It Works</button>
          </div>
        </div>
        <div className="hero-bottom">
          <div><div className="stat-num">200+</div><div className="stat-label">Plant Profiles</div></div>
          <div><div className="stat-num">12</div><div className="stat-label">Climate Zones</div></div>
          <div><div className="stat-num">Any</div><div className="stat-label">Space Size</div></div>
        </div>
        <div className="hero-image-col">
          <div className="hero-img-panel" />
          <div className="img-caption">Balcony Herb Collection — Summer Edition</div>
        </div>
      </div>
      <div className="features-strip">
        <div className="section-label">Why Terra</div>
        <div className="features-grid">
          <div className="feature-card">
            <div className="feature-icon">🧭</div>
            <div className="feature-title">Guided Planning</div>
            <div className="feature-desc">Answer a few questions about your space, experience, and goals. We&apos;ll build a personalized garden plan around you.</div>
          </div>
          <div className="feature-card">
            <div className="feature-icon">🌱</div>
            <div className="feature-title">Deep Plant Knowledge</div>
            <div className="feature-desc">Light, water, soil composition, companion planting, seasonal tips — every detail you need, curated for real gardeners.</div>
          </div>
          <div className="feature-card">
            <div className="feature-icon">🏙️</div>
            <div className="feature-title">Any Space Works</div>
            <div className="feature-desc">Balcony with 4 pots or a half-acre backyard. Container gardening to in-ground beds. We cover it all, at every level.</div>
          </div>
        </div>
      </div>
    </div>
  );
}

function WizardPage({
  allPlants, onComplete, onBack,
}: {
  allPlants: PlantItem[];
  onComplete: (answers: Answers) => void;
  onBack: () => void;
}) {
  const [step, setStep] = useState(0);
  const [answers, setAnswers] = useState<Answers>({ space: null, experience: null, zone: null, plants: [], goals: [] });

  function canProceed() {
    if (step === 0) return !!answers.space;
    if (step === 1) return !!answers.experience;
    if (step === 2) return !!answers.zone;
    if (step === 3) return answers.plants.length > 0;
    if (step === 4) return answers.goals.length > 0;
    return false;
  }

  function next() {
    if (step < WIZARD_STEPS.length - 1) setStep(step + 1);
    else onComplete(answers);
  }

  function togglePlant(slug: string) {
    setAnswers(a => ({
      ...a,
      plants: a.plants.includes(slug) ? a.plants.filter(p => p !== slug) : [...a.plants, slug],
    }));
  }

  function toggleGoal(id: string) {
    setAnswers(a => ({
      ...a,
      goals: a.goals.includes(id) ? a.goals.filter(g => g !== id) : [...a.goals, id],
    }));
  }

  const tips = [
    "Balcony gardens shine with container-friendly herbs like basil, mint, and thyme.",
    "Even a few hours of sun on a north-facing balcony can support lettuce and herbs.",
    "Your growing zone determines planting windows — timing is everything.",
    "Mix plants thoughtfully — companion planting reduces pests naturally.",
    "Most herb gardens can sustain a household from just 4–6 plants.",
  ];

  return (
    <div className="wizard-page">
      <div className="wizard-sidebar">
        <div className="wizard-logo" onClick={onBack}>Terra<span>.</span></div>
        <div className="wizard-steps">
          {WIZARD_STEPS.map((s, i) => (
            <div key={s.id} className={`wizard-step-item ${i === step ? "active" : ""} ${i < step ? "done" : ""}`}>
              <div className="step-num">{i < step ? "✓" : i + 1}</div>
              <div>
                <div className="step-title">{s.title}</div>
                <div className="step-subtitle">{s.subtitle}</div>
              </div>
            </div>
          ))}
        </div>
        <div className="wizard-tip">{tips[step]}</div>
      </div>

      <div className="wizard-main">
        <div className="wizard-progress">
          <div className="wizard-progress-fill" style={{ width: `${(step / WIZARD_STEPS.length) * 100}%` }} />
        </div>

        {step === 0 && (
          <>
            <div className="wizard-step-label">Step 1 of 5</div>
            <h2 className="wizard-question">What kind of <em>space</em> are you working with?</h2>
            <p className="wizard-desc">This shapes everything — container sizes, plant density, watering frequency, and more.</p>
            <div className="options-grid cols-2">
              {SPACE_OPTIONS.map(opt => (
                <div key={opt.id} className={`option-card ${answers.space === opt.id ? "selected" : ""}`}
                  onClick={() => { setAnswers(a => ({ ...a, space: opt.id })); setTimeout(next, 150); }}>
                  <div className="option-icon">{opt.icon}</div>
                  <div className="option-title">{opt.title}</div>
                  <div className="option-sub">{opt.sub}</div>
                </div>
              ))}
            </div>
          </>
        )}

        {step === 1 && (
          <>
            <div className="wizard-step-label">Step 2 of 5</div>
            <h2 className="wizard-question">How would you describe your <em>experience</em>?</h2>
            <p className="wizard-desc">No judgment — we tailor the advice to where you&apos;re at right now.</p>
            <div className="options-grid cols-3">
              {EXPERIENCE_OPTIONS.map(opt => (
                <div key={opt.id} className={`option-card ${answers.experience === opt.id ? "selected" : ""}`}
                  onClick={() => { setAnswers(a => ({ ...a, experience: opt.id })); setTimeout(next, 150); }}>
                  <div className="option-icon">{opt.icon}</div>
                  <div className="option-title">{opt.title}</div>
                  <div className="option-sub">{opt.sub}</div>
                </div>
              ))}
            </div>
          </>
        )}

        {step === 2 && (
          <>
            <div className="wizard-step-label">Step 3 of 5</div>
            <h2 className="wizard-question">What&apos;s your <em>climate?</em></h2>
            <p className="wizard-desc">This shapes your planting calendar — when to start seeds, plant outdoors, and harvest.</p>
            <div className="options-grid cols-2">
              {ZONE_OPTIONS.map(opt => (
                <div key={opt.id} className={`option-card ${answers.zone === opt.id ? "selected" : ""}`}
                  onClick={() => { setAnswers(a => ({ ...a, zone: opt.id })); setTimeout(next, 150); }}>
                  <div className="option-icon">{opt.icon}</div>
                  <div className="option-title">{opt.title}</div>
                  <div className="option-sub">{opt.sub}</div>
                </div>
              ))}
            </div>
          </>
        )}

        {step === 3 && (
          <>
            <div className="wizard-step-label">Step 4 of 5</div>
            <h2 className="wizard-question">What do you want to <em>grow?</em></h2>
            <p className="wizard-desc">Pick everything you&apos;re interested in — we&apos;ll check compatibility and give tips for each.</p>
            <div className="plant-grid">
              {allPlants.map(p => (
                <div key={p.slug} className={`plant-chip ${answers.plants.includes(p.slug) ? "selected" : ""}`}
                  onClick={() => togglePlant(p.slug)}>
                  <span className="plant-emoji">{p.emoji}</span>
                  <span className="plant-name">{p.name}</span>
                </div>
              ))}
            </div>
          </>
        )}

        {step === 4 && (
          <>
            <div className="wizard-step-label">Step 5 of 5</div>
            <h2 className="wizard-question">What are your <em>goals?</em></h2>
            <p className="wizard-desc">Select all that apply — this helps us prioritize what matters to you.</p>
            <div className="options-grid cols-2">
              {GOAL_OPTIONS.map(opt => (
                <div key={opt.id} className={`option-card ${answers.goals.includes(opt.id) ? "selected" : ""}`}
                  onClick={() => toggleGoal(opt.id)}>
                  <div className="option-icon">{opt.icon}</div>
                  <div className="option-title">{opt.title}</div>
                </div>
              ))}
            </div>
          </>
        )}

        <div className="wizard-nav">
          {step > 0 && <button className="btn-back" onClick={() => setStep(step - 1)}>← Back</button>}
          <button className="btn-next" onClick={next} disabled={!canProceed()}>
            {step === WIZARD_STEPS.length - 1 ? "Generate My Garden Guide →" : "Continue →"}
          </button>
        </div>
      </div>
    </div>
  );
}

function ResultsPage({ answers, onRestart }: { answers: Answers; onRestart: () => void }) {
  const [loading, setLoading] = useState(true);
  const [aiInsight, setAiInsight] = useState("");
  const [plantDetails, setPlantDetails] = useState<PlantDetail[]>([]);
  const [schedule, setSchedule] = useState<PlantSchedule[]>([]);

  useEffect(() => {
    const fetchAll = async () => {
      try {
        const [detailsRes, insightRes, scheduleRes] = await Promise.all([
          fetch("/api/plants/details", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ slugs: answers.plants }),
          }),
          fetch("/api/garden-insight", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              prompt: `A ${answers.experience === "new" ? "beginner" : answers.experience === "some" ? "intermediate" : "experienced"} gardener with a ${getSpaceLabel(answers.space).toLowerCase()} wants to grow: ${answers.plants.join(", ")}. Write a 2-3 sentence personalized garden insight — enthusiastic, specific, actionable. Mention 1-2 of their specific plants. No markdown, no bullet points, pure prose. Keep it warm and encouraging.`,
            }),
          }),
          fetch("/api/plants/schedule", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ slugs: answers.plants, zone: answers.zone }),
          }),
        ]);

        const [details, insight, sched] = await Promise.all([detailsRes.json(), insightRes.json(), scheduleRes.json()]);
        setPlantDetails(details);
        setAiInsight(insight.text ?? "");
        setSchedule(sched);
      } catch {
        setAiInsight("Your plant selection is beautifully curated. Follow the guides below and you'll have a thriving garden in no time!");
      } finally {
        setLoading(false);
      }
    };
    fetchAll();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  if (loading) {
    return (
      <div className="results-page">
        <div className="ai-loading">
          <div className="ai-spinner" />
          <div className="ai-loading-text">Building your garden guide…</div>
          <div className="ai-loading-sub">Fetching data for {answers.plants.length} plants</div>
        </div>
      </div>
    );
  }

  const sunNeeds = plantDetails.filter(p => p.sun_requirement === "full").map(p => p.name);
  const shadeOk  = plantDetails.filter(p => p.sun_requirement === "partial").map(p => p.name);

  // Group compatible plants using union-find on beneficial relationships
  const selectedSlugs = new Set(plantDetails.map(p => p.slug));
  const parent: Record<string, string> = {};
  plantDetails.forEach(p => { parent[p.slug] = p.slug; });
  const find = (x: string): string => { if (parent[x] !== x) parent[x] = find(parent[x]); return parent[x]; };
  const union = (x: string, y: string) => { parent[find(x)] = find(y); };

  // Track harmful pairs to warn about
  const harmfulPairs: { key: string; names: string[] }[] = [];
  const seenHarmful = new Set<string>();

  plantDetails.forEach(plant => {
    plant.companion_planting.forEach(c => {
      if (!c.companion || !selectedSlugs.has(c.companion.slug)) return;
      if (c.relationship === "beneficial") {
        union(plant.slug, c.companion.slug);
      } else if (c.relationship === "harmful") {
        const key = [plant.slug, c.companion.slug].sort().join("-");
        if (!seenHarmful.has(key)) {
          seenHarmful.add(key);
          harmfulPairs.push({ key, names: [plant.name, c.companion.name] });
        }
      }
    });
  });

  // Build groups from union-find roots
  const groupMap: Record<string, string[]> = {};
  plantDetails.forEach(p => {
    const root = find(p.slug);
    if (!groupMap[root]) groupMap[root] = [];
    groupMap[root].push(p.name);
  });
  const compatibleGroups = Object.values(groupMap).filter(g => g.length >= 2);

  return (
    <div className="results-page">
      <div className="results-hero">
        <div className="results-hero-bg" />
        <div className="results-nav">
          <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 20, fontWeight: 900, color: "var(--cream)", cursor: "pointer" }} onClick={onRestart}>
            Terra<span style={{ color: "var(--green-light)" }}>.</span>
          </div>
          <button className="btn-ghost" onClick={onRestart} style={{ fontSize: 12 }}>← Start Over</button>
        </div>
        <div>
          <div className="results-eyebrow">Your Personal Garden Guide</div>
          <h1 className="results-title">
            <em>{plantDetails.length} plants</em> for your<br />{getSpaceLabel(answers.space)}
          </h1>
          <div className="results-meta">
            <span className="meta-pill">🏡 {getSpaceLabel(answers.space)}</span>
            <span className="meta-pill">🌱 {answers.experience === "new" ? "Beginner" : answers.experience === "some" ? "Intermediate" : "Experienced"}</span>
            {answers.zone && <span className="meta-pill">🌍 {getZoneLabel(answers.zone)}</span>}
            {answers.goals.map(g => {
              const gl = GOAL_OPTIONS.find(o => o.id === g);
              return gl ? <span key={g} className="meta-pill">{gl.icon} {gl.title}</span> : null;
            })}
          </div>
        </div>
      </div>

      <div className="results-body">
        {aiInsight && (
          <div style={{ background: "rgba(45,80,22,0.06)", borderLeft: "3px solid var(--green-light)", padding: "24px 28px", marginBottom: 48, fontFamily: "'Playfair Display', serif", fontSize: 18, fontStyle: "italic", color: "var(--dark)", lineHeight: 1.7 }}>
            ✦ {aiInsight}
          </div>
        )}

        <div className="overview-strip">
          <div className="overview-card">
            <div className="overview-label">Full Sun Plants</div>
            <div className="overview-value">{sunNeeds.join(", ") || "—"}</div>
          </div>
          <div className="overview-card">
            <div className="overview-label">Partial Sun OK</div>
            <div className="overview-value">{shadeOk.join(", ") || "—"}</div>
          </div>
          <div className="overview-card">
            <div className="overview-label">Compatible Groups</div>
            <div className="overview-value">{compatibleGroups.length > 0 ? `${compatibleGroups.length} group${compatibleGroups.length > 1 ? "s" : ""} found` : "None in selection"}</div>
          </div>
          <div className="overview-card">
            <div className="overview-label">Difficulty Range</div>
            <div className="overview-value">{plantDetails.some(p => p.difficulty === "moderate") ? "Easy to Moderate" : "All Easy"}</div>
          </div>
        </div>

        {schedule.length > 0 && <PlantingCalendar schedule={schedule} />}

        <div className="section-header">
          <div className="section-title">Plant-by-Plant Guide</div>
          <div className="section-count">{plantDetails.length} plants — click to expand</div>
        </div>
        <div className="plants-list">
          {plantDetails.map(p => <PlantRow key={p.slug} plant={p} />)}
        </div>

        {(compatibleGroups.length > 0 || harmfulPairs.length > 0) && (
          <div className="companions-section">
            <div className="companions-title">Companion Planting Guide</div>
            <div className="companions-sub">Based on your specific plant selection</div>

            {compatibleGroups.length > 0 && (
              <>
                <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--green-light)", fontWeight: 600, marginBottom: 12 }}>✓ Grow Together</div>
                <div style={{ display: "flex", flexDirection: "column", gap: 10, marginBottom: harmfulPairs.length > 0 ? 32 : 0 }}>
                  {compatibleGroups.map((group, i) => (
                    <div key={i} className="companion-item" style={{ display: "block" }}>
                      <div className="companion-plants">{group.join(", ")}</div>
                      <div className="companion-note">These plants grow well together — place them in the same bed or nearby containers</div>
                    </div>
                  ))}
                </div>
              </>
            )}

            {harmfulPairs.length > 0 && (
              <>
                <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "#C4622D", fontWeight: 600, marginBottom: 12 }}>✗ Keep Separate</div>
                <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
                  {harmfulPairs.map(pair => (
                    <div key={pair.key} style={{ background: "rgba(196,98,45,0.08)", border: "1px solid rgba(196,98,45,0.2)", padding: "12px 18px" }}>
                      <div className="companion-plants" style={{ color: "#C4622D" }}>{pair.names.join(" and ")}</div>
                      <div className="companion-note">Incompatible — grow in separate containers or opposite ends of the garden</div>
                    </div>
                  ))}
                </div>
              </>
            )}
          </div>
        )}

        <div className="soil-section">
          <div className="section-title" style={{ fontFamily: "'Playfair Display', serif", fontSize: 24, marginBottom: 8 }}>Soil Guide</div>
          <p style={{ color: "#999", fontSize: 13, marginBottom: 32, fontWeight: 300 }}>Specific soil and pH requirements for each plant in your selection</p>
          <div style={{ display: "flex", flexDirection: "column", gap: 2 }}>
            {plantDetails.map(plant => (
              <div key={plant.slug} style={{ background: "var(--cream)", padding: "24px 28px", display: "grid", gridTemplateColumns: "200px 1fr 120px 120px", gap: 24, alignItems: "start" }}>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--green)", fontWeight: 600, marginBottom: 6 }}>Plant</div>
                  <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 16, fontWeight: 700, color: "var(--dark)" }}>{plant.emoji} {plant.name}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--green)", fontWeight: 600, marginBottom: 6 }}>Soil Composition</div>
                  <div style={{ fontSize: 13, color: "#555", lineHeight: 1.6, fontWeight: 300 }}>{plant.soil_description}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--green)", fontWeight: 600, marginBottom: 6 }}>pH Range</div>
                  <div style={{ fontSize: 15, fontWeight: 600, color: "var(--dark)" }}>{plant.ph_min}–{plant.ph_max}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--green)", fontWeight: 600, marginBottom: 6 }}>Drainage</div>
                  <div style={{ fontSize: 13, fontWeight: 500, color: "var(--ink)", textTransform: "capitalize" }}>{plant.drainage}</div>
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="start-over">
          <p>Want to plan a different garden or try new plants?</p>
          <button className="btn-next" onClick={onRestart}>Plan Another Garden →</button>
        </div>
      </div>
    </div>
  );
}

// ── Root App ─────────────────────────────────────────────────────────────────

export default function App() {
  const [view, setView] = useState("home");
  const [answers, setAnswers] = useState<Answers | null>(null);
  const [allPlants, setAllPlants] = useState<PlantItem[]>([]);

  useEffect(() => {
    fetch("/api/plants")
      .then(r => r.json())
      .then(setAllPlants)
      .catch(() => {});
  }, []);

  return (
    <>
      <style>{STYLES}</style>
      {view === "home" && <HomePage onStart={() => setView("wizard")} />}
      {view === "wizard" && (
        <WizardPage
          allPlants={allPlants}
          onComplete={a => { setAnswers(a); setView("results"); }}
          onBack={() => setView("home")}
        />
      )}
      {view === "results" && answers && (
        <ResultsPage answers={answers} onRestart={() => { setAnswers(null); setView("home"); }} />
      )}
    </>
  );
}
