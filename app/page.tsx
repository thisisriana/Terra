"use client";

import { useState, useEffect } from "react";

const STYLES = `
  @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,700;0,900;1,400;1,700&family=DM+Sans:wght@300;400;500&family=DM+Serif+Display:ital@0;1&display=swap');

  * { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --cream: #F5EAE0;
    --dark: #1C1008;
    --terra-dark: #7A3628;
    --terra-mid: #C46442;
    --terra-light: #D4876A;
    --terra: #C4622D;
    --gold: #D4A843;
    --warm-white: #FDF6EF;
    --ink: #2C1810;
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
      radial-gradient(ellipse at 20% 50%, rgba(122,54,40,0.6) 0%, transparent 60%),
      radial-gradient(ellipse at 80% 20%, rgba(212,135,106,0.3) 0%, transparent 50%),
      radial-gradient(ellipse at 60% 80%, rgba(196,98,45,0.2) 0%, transparent 40%);
    z-index: 0;
  }
  .hero-grid {
    position: absolute; inset: 0;
    background-image:
      linear-gradient(rgba(212,135,106,0.08) 1px, transparent 1px),
      linear-gradient(90deg, rgba(212,135,106,0.08) 1px, transparent 1px);
    background-size: 60px 60px; z-index: 0;
  }
  .nav {
    position: relative; z-index: 10;
    display: flex; align-items: center; justify-content: space-between;
    padding: 28px 48px;
  }
  .nav-logo { font-family: 'Playfair Display', serif; font-size: 22px; font-weight: 900; color: var(--cream); letter-spacing: -0.5px; }
  .nav-logo span { color: var(--terra-light); }
  .nav-links { display: flex; gap: 32px; }
  .nav-links a { color: rgba(245,240,232,0.6); text-decoration: none; font-size: 13px; letter-spacing: 1.5px; text-transform: uppercase; font-weight: 500; transition: color 0.2s; cursor: pointer; }
  .nav-links a:hover { color: var(--cream); }
  .hero-content { position: relative; z-index: 10; flex: 1; display: flex; flex-direction: column; justify-content: center; padding: 0 48px; max-width: 780px; }
  .hero-eyebrow { font-size: 11px; letter-spacing: 3px; text-transform: uppercase; color: var(--terra-light); font-weight: 500; margin-bottom: 20px; display: flex; align-items: center; gap: 12px; }
  .hero-eyebrow::before { content: ''; display: block; width: 32px; height: 1px; background: var(--terra-light); }
  .hero-title { font-family: 'Playfair Display', serif; font-size: clamp(52px, 8vw, 96px); font-weight: 900; line-height: 0.92; color: var(--cream); margin-bottom: 28px; }
  .hero-title em { font-style: italic; color: var(--terra-light); }
  .hero-sub { font-size: 16px; line-height: 1.7; color: rgba(245,240,232,0.65); max-width: 480px; margin-bottom: 44px; font-weight: 300; }
  .hero-cta { display: flex; gap: 16px; align-items: center; }
  .btn-primary { background: var(--terra-light); color: var(--dark); border: none; padding: 16px 36px; font-size: 14px; font-weight: 600; letter-spacing: 0.5px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-primary:hover { background: var(--gold); transform: translateY(-1px); }
  .btn-ghost { background: transparent; border: 1px solid rgba(245,240,232,0.3); color: rgba(245,240,232,0.7); padding: 16px 28px; font-size: 14px; font-weight: 400; letter-spacing: 0.5px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-ghost:hover { border-color: var(--cream); color: var(--cream); }
  .hero-bottom { position: relative; z-index: 10; padding: 0 48px 36px; display: flex; gap: 48px; }
  .stat-num { font-family: 'Playfair Display', serif; font-size: 32px; font-weight: 700; color: var(--cream); }
  .stat-label { font-size: 11px; letter-spacing: 1.5px; text-transform: uppercase; color: rgba(245,240,232,0.4); margin-top: 2px; }
  .hero-image-col { position: absolute; right: 0; top: 0; bottom: 0; width: 42%; z-index: 5; display: flex; flex-direction: column; }
  .hero-img-panel { flex: 1; background: linear-gradient(135deg, #7A3628 0%, #C46442 40%, #D4876A 100%); position: relative; overflow: hidden; }
  .hero-img-panel::after { content: ''; position: absolute; inset: 0; }
  .img-caption { padding: 16px 24px; background: var(--terra); font-size: 11px; letter-spacing: 2px; text-transform: uppercase; color: var(--cream); font-weight: 500; }

  .features-strip { background: var(--warm-white); padding: 80px 48px; border-top: 1px solid rgba(122,54,40,0.1); }
  .section-label { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--terra-dark); margin-bottom: 48px; font-weight: 600; }
  .features-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1px; background: rgba(122,54,40,0.1); }
  .feature-card { background: var(--warm-white); padding: 40px 32px; transition: background 0.2s; }
  .feature-card:hover { background: var(--cream); }
  .feature-icon { font-size: 28px; margin-bottom: 20px; }
  .feature-title { font-family: 'Playfair Display', serif; font-size: 20px; font-weight: 700; margin-bottom: 12px; color: var(--dark); }
  .feature-desc { font-size: 14px; line-height: 1.7; color: #666; font-weight: 300; }

  .wizard-page { min-height: 100vh; background: var(--cream); display: flex; }
  .wizard-sidebar { width: 340px; min-height: 100vh; background: var(--dark); padding: 48px 40px; position: sticky; top: 0; height: 100vh; display: flex; flex-direction: column; flex-shrink: 0; }
  .wizard-logo { font-family: 'Playfair Display', serif; font-size: 18px; font-weight: 900; color: var(--cream); margin-bottom: 48px; cursor: pointer; }
  .wizard-logo span { color: var(--terra-light); }
  .wizard-steps { flex: 1; }
  .wizard-step-item { display: flex; gap: 16px; align-items: flex-start; padding: 16px 0; border-bottom: 1px solid rgba(255,255,255,0.05); opacity: 0.35; transition: opacity 0.3s; }
  .wizard-step-item.active { opacity: 1; }
  .wizard-step-item.done { opacity: 0.6; }
  .step-num { width: 24px; height: 24px; border-radius: 50%; border: 1px solid rgba(212,135,106,0.4); display: flex; align-items: center; justify-content: center; font-size: 11px; color: var(--terra-light); flex-shrink: 0; margin-top: 2px; }
  .wizard-step-item.active .step-num { background: var(--terra-light); color: var(--dark); border-color: var(--terra-light); font-weight: 700; }
  .wizard-step-item.done .step-num { background: var(--terra-dark); color: var(--cream); border-color: var(--terra-dark); }
  .step-title { font-size: 13px; font-weight: 500; color: var(--cream); }
  .step-subtitle { font-size: 11px; color: rgba(245,240,232,0.4); margin-top: 3px; }
  .wizard-tip { background: rgba(212,135,106,0.1); border-left: 2px solid var(--terra-light); padding: 16px; font-size: 12px; line-height: 1.6; color: rgba(245,240,232,0.6); font-style: italic; }
  .wizard-main { flex: 1; padding: 64px 72px; max-width: 800px; }
  .wizard-progress { height: 2px; background: rgba(122,54,40,0.1); margin-bottom: 56px; position: relative; }
  .wizard-progress-fill { height: 100%; background: var(--terra-light); transition: width 0.4s ease; }
  .wizard-step-label { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--terra-dark); margin-bottom: 16px; font-weight: 600; }
  .wizard-question { font-family: 'Playfair Display', serif; font-size: clamp(28px, 4vw, 42px); font-weight: 700; line-height: 1.15; color: var(--dark); margin-bottom: 12px; }
  .wizard-question em { font-style: italic; color: var(--terra-dark); }
  .wizard-desc { font-size: 15px; color: #888; font-weight: 300; line-height: 1.6; margin-bottom: 44px; }

  .options-grid { display: grid; gap: 12px; margin-bottom: 44px; }
  .options-grid.cols-2 { grid-template-columns: 1fr 1fr; }
  .options-grid.cols-3 { grid-template-columns: repeat(3, 1fr); }
  .option-card { border: 1.5px solid rgba(122,54,40,0.12); padding: 20px 24px; cursor: pointer; transition: all 0.2s; background: var(--warm-white); position: relative; }
  .option-card:hover { border-color: var(--terra-light); background: white; }
  .option-card.selected { border-color: var(--terra-dark); background: rgba(122,54,40,0.04); }
  .option-card.selected::after { content: '✓'; position: absolute; top: 14px; right: 16px; color: var(--terra-dark); font-size: 13px; font-weight: 700; }
  .option-icon { font-size: 22px; margin-bottom: 10px; }
  .option-title { font-size: 15px; font-weight: 600; color: var(--dark); }
  .option-sub { font-size: 12px; color: #888; margin-top: 4px; font-weight: 300; }

  .plant-search-wrapper { margin-bottom: 44px; }
  .plant-search-box { position: relative; }
  .plant-search-input { width: 100%; padding: 14px 18px; font-size: 15px; border: 1.5px solid rgba(122,54,40,0.2); background: var(--warm-white); color: var(--dark); outline: none; font-family: inherit; box-sizing: border-box; }
  .plant-search-input:focus { border-color: var(--terra-dark); }
  .plant-dropdown { position: absolute; top: 100%; left: 0; right: 0; background: var(--warm-white); border: 1.5px solid rgba(122,54,40,0.2); border-top: none; max-height: 220px; overflow-y: auto; z-index: 100; }
  .plant-dropdown-item { padding: 12px 18px; font-size: 14px; color: var(--dark); cursor: pointer; }
  .plant-dropdown-item:hover { background: rgba(122,54,40,0.06); color: var(--terra-dark); }
  .plant-dropdown-empty { padding: 12px 18px; font-size: 14px; color: #999; }
  .plant-selected-tags { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 16px; }
  .plant-tag { display: inline-flex; align-items: center; gap: 6px; padding: 6px 12px; background: rgba(122,54,40,0.08); border: 1.5px solid rgba(122,54,40,0.2); font-size: 13px; color: var(--terra-dark); font-weight: 500; }
  .plant-tag-remove { background: none; border: none; cursor: pointer; font-size: 16px; line-height: 1; color: var(--terra-light); padding: 0; }

  .wizard-nav { display: flex; gap: 12px; align-items: center; }
  .btn-next { background: var(--dark); color: var(--cream); border: none; padding: 14px 36px; font-size: 14px; font-weight: 500; cursor: pointer; font-family: 'DM Sans', sans-serif; letter-spacing: 0.5px; transition: all 0.2s; }
  .btn-next:hover { background: var(--terra-dark); }
  .btn-next:disabled { opacity: 0.4; cursor: not-allowed; }
  .btn-back { background: transparent; border: 1.5px solid rgba(122,54,40,0.2); color: #888; padding: 14px 24px; font-size: 14px; cursor: pointer; font-family: 'DM Sans', sans-serif; transition: all 0.2s; }
  .btn-back:hover { border-color: var(--ink); color: var(--ink); }

  .results-page { min-height: 100vh; background: var(--cream); }
  .results-hero { background: var(--dark); padding: 48px; position: relative; overflow: hidden; }
  .results-hero-bg { position: absolute; inset: 0; background: radial-gradient(ellipse at 70% 50%, rgba(122,54,40,0.5) 0%, transparent 70%); }
  .results-nav { position: relative; z-index: 2; display: flex; align-items: center; justify-content: space-between; margin-bottom: 48px; }
  .results-eyebrow { font-size: 10px; letter-spacing: 3px; text-transform: uppercase; color: var(--terra-light); font-weight: 600; margin-bottom: 16px; display: flex; align-items: center; gap: 10px; }
  .results-eyebrow::before { content: ''; width: 24px; height: 1px; background: var(--terra-light); display: block; }
  .results-title { font-family: 'Playfair Display', serif; font-size: clamp(32px, 5vw, 56px); font-weight: 900; color: var(--cream); line-height: 1.05; margin-bottom: 20px; }
  .results-title em { color: var(--terra-light); font-style: italic; }
  .results-meta { display: flex; gap: 24px; flex-wrap: wrap; }
  .meta-pill { background: rgba(212,135,106,0.15); border: 1px solid rgba(212,135,106,0.3); padding: 6px 14px; font-size: 12px; color: var(--terra-light); font-weight: 500; }
  .results-body { padding: 64px 48px; }
  .overview-strip { display: grid; grid-template-columns: repeat(4, 1fr); gap: 1px; background: rgba(122,54,40,0.1); margin-bottom: 64px; }
  .overview-card { background: var(--warm-white); padding: 28px 24px; }
  .overview-label { font-size: 10px; letter-spacing: 2px; text-transform: uppercase; color: var(--terra-dark); margin-bottom: 8px; font-weight: 600; }
  .overview-value { font-family: 'Playfair Display', serif; font-size: 18px; font-weight: 700; color: var(--dark); line-height: 1.3; }
  .section-header { display: flex; align-items: baseline; justify-content: space-between; margin-bottom: 32px; }
  .section-title { font-family: 'Playfair Display', serif; font-size: 28px; font-weight: 700; color: var(--dark); }
  .section-count { font-size: 13px; color: #999; font-weight: 300; }
  .plants-list { display: flex; flex-direction: column; gap: 2px; margin-bottom: 64px; }

  .plant-row { background: var(--warm-white); border-left: 3px solid transparent; transition: all 0.2s; overflow: hidden; }
  .plant-row.expanded { border-left-color: var(--terra-dark); }
  .plant-row-header { padding: 24px 28px; cursor: pointer; display: flex; align-items: center; gap: 20px; transition: background 0.2s; }
  .plant-row-header:hover { background: rgba(122,54,40,0.03); }
  .plant-row-emoji { font-size: 28px; flex-shrink: 0; }
  .plant-row-info { flex: 1; }
  .plant-row-name { font-family: 'Playfair Display', serif; font-size: 20px; font-weight: 700; color: var(--dark); }
  .plant-row-tagline { font-size: 12px; color: #999; margin-top: 3px; font-weight: 300; }
  .plant-row-badges { display: flex; gap: 8px; margin-left: auto; flex-shrink: 0; }
  .badge { padding: 4px 10px; font-size: 10px; letter-spacing: 1px; text-transform: uppercase; font-weight: 600; }
  .badge-easy { background: rgba(212,135,106,0.15); color: var(--terra-dark); }
  .badge-moderate { background: rgba(212,168,67,0.15); color: #B8860B; }
  .badge-sun { background: rgba(212,168,67,0.1); color: #C4862D; }
  .badge-part { background: rgba(212,135,106,0.1); color: var(--terra-mid); }
  .plant-chevron { font-size: 18px; color: #ccc; transition: transform 0.3s; flex-shrink: 0; }
  .plant-row.expanded .plant-chevron { transform: rotate(180deg); color: var(--terra-dark); }
  .plant-details { padding: 0 28px 28px; display: none; grid-template-columns: repeat(2, 1fr); gap: 16px; }
  .plant-row.expanded .plant-details { display: grid; }
  .detail-block { background: var(--cream); padding: 20px 22px; }
  .detail-block.full-width { grid-column: 1 / -1; }
  .detail-block-label { font-size: 10px; letter-spacing: 2px; text-transform: uppercase; color: var(--terra-dark); font-weight: 600; margin-bottom: 10px; }
  .detail-block-content { font-size: 13px; line-height: 1.7; color: #555; font-weight: 300; }
  .detail-block-content ul { list-style: none; }
  .detail-block-content ul li { padding: 4px 0; display: flex; gap: 8px; align-items: flex-start; }
  .detail-block-content ul li::before { content: '→'; color: var(--terra-light); flex-shrink: 0; }

  .companions-section { background: var(--dark); padding: 48px; margin-bottom: 64px; }
  .companions-title { font-family: 'Playfair Display', serif; font-size: 24px; font-weight: 700; color: var(--cream); margin-bottom: 8px; }
  .companions-sub { font-size: 13px; color: rgba(245,240,232,0.4); margin-bottom: 32px; font-weight: 300; }
  .companions-grid { display: flex; flex-wrap: wrap; gap: 10px; }
  .companion-item { background: rgba(212,135,106,0.12); border: 1px solid rgba(212,135,106,0.2); padding: 12px 18px; }
  .companion-plants { font-size: 13px; font-weight: 500; color: var(--cream); }
  .companion-note { font-size: 11px; color: rgba(245,240,232,0.5); margin-top: 2px; }

  .soil-section { background: var(--warm-white); padding: 48px; margin-bottom: 64px; border-left: 3px solid var(--terra); }
  .start-over { text-align: center; padding: 48px; border-top: 1px solid rgba(122,54,40,0.1); }
  .start-over p { font-size: 14px; color: #999; margin-bottom: 20px; font-weight: 300; }

  .calendar-section { background: var(--warm-white); padding: 48px; margin-bottom: 64px; border-left: 3px solid var(--terra-dark); overflow-x: auto; }
  .calendar-legend { display: flex; gap: 24px; margin-bottom: 28px; flex-wrap: wrap; }
  .legend-item { display: flex; align-items: center; gap: 8px; font-size: 12px; color: #666; font-weight: 400; }
  .legend-swatch { width: 16px; height: 16px; border-radius: 2px; flex-shrink: 0; }
  .calendar-grid { min-width: 640px; }
  .calendar-header-row { display: grid; grid-template-columns: 130px repeat(12, 1fr); gap: 2px; margin-bottom: 4px; }
  .calendar-month-label { text-align: center; font-size: 9px; letter-spacing: 1px; text-transform: uppercase; color: #aaa; font-weight: 600; padding: 4px 0; }
  .calendar-month-label.current { color: var(--terra-dark); font-weight: 700; }
  .calendar-plant-row { display: grid; grid-template-columns: 130px repeat(12, 1fr); gap: 2px; margin-bottom: 2px; }
  .calendar-plant-name { font-size: 11px; font-weight: 500; color: var(--dark); display: flex; align-items: center; gap: 5px; padding-right: 8px; overflow: hidden; white-space: nowrap; }
  .calendar-cell { height: 26px; border-radius: 2px; }
  .calendar-cell.empty { background: rgba(122,54,40,0.04); }
  .calendar-cell.indoor { background: #D4A843; }
  .calendar-cell.outdoor { background: #82A67A; }
  .calendar-cell.harvest { background: rgba(196,98,45,0.25); border: 1px solid rgba(196,98,45,0.3); }
  .calendar-cell.current-month { outline: 2px solid rgba(122,54,40,0.3); outline-offset: -2px; }
  .calendar-notes { font-size: 12px; color: #777; line-height: 1.6; margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(122,54,40,0.1); font-weight: 300; }

  .ai-loading { display: flex; flex-direction: column; align-items: center; justify-content: center; min-height: 400px; gap: 20px; }
  .ai-spinner { width: 48px; height: 48px; border: 2px solid rgba(122,54,40,0.1); border-top-color: var(--terra-dark); border-radius: 50%; animation: spin 0.8s linear infinite; }
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

interface SpaceRecommendation {
  recommended: boolean;
  notes: string;
  recommended_container_size: string | null;
}

interface PlantDetail {
  slug: string;
  name: string;
  emoji: string;
  category: string;
  tagline: string;
  difficulty: string;
  sun_requirement: string;
  light_description: string;
  water_description: string;
  soil_description: string;
  ph_min: number;
  ph_max: number;
  drainage: string;
  days_to_harvest_min: number | null;
  days_to_harvest_max: number | null;
  days_to_germinate_min: number | null;
  container_friendly: boolean;
  container_size_min_gallons: number | null;
  container_depth_min_inches: number | null;
  space_recommendation: SpaceRecommendation | null;
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
  { id: "cold",      icon: null, title: "Cold Winters",      sub: "Zones 3–5 · Minnesota, Maine, Montana, Wisconsin" },
  { id: "temperate", icon: null, title: "Temperate Climate", sub: "Zones 6–7 · Virginia, Missouri, Pacific NW, New England" },
  { id: "warm",      icon: null, title: "Mild & Warm",       sub: "Zones 8–9 · Georgia, Southern CA, Gulf Coast, Texas" },
  { id: "hot",       icon: null, title: "Hot & Frost-Free",  sub: "Zones 10–11 · South Florida, Hawaii, Southern CA desert" },
];

const SPACE_OPTIONS = [
  { id: "balcony",    icon: null, title: "Balcony / Patio",    sub: "Container gardening, limited sq footage" },
  { id: "raised_bed", icon: null, title: "Raised Beds",         sub: "Dedicated beds, more control" },
  { id: "small_yard", icon: null, title: "Small Yard",          sub: "Up to 1,000 sq ft of growing space" },
  { id: "large_yard", icon: null, title: "Large Yard / Plot",   sub: "1/4 acre or more" },
];

const EXPERIENCE_OPTIONS = [
  { id: "new",       icon: null, title: "Complete Beginner",  sub: "Never grown anything" },
  { id: "some",      icon: null, title: "Some Experience",    sub: "A few seasons under my belt" },
  { id: "confident", icon: null, title: "Confident Gardener", sub: "Know my way around a garden" },
];

const GOAL_OPTIONS = [
  { id: "eat",       icon: null, title: "Grow food to eat" },
  { id: "beauty",    icon: null, title: "Beautiful outdoor space" },
  { id: "learn",     icon: null, title: "Learn & experiment" },
  { id: "wellness",  icon: null, title: "Therapeutic & mindful" },
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
          <div className="legend-swatch" style={{ background: "#82A67A" }} />
          Plant / transplant outdoors
        </div>
        <div className="legend-item">
          <div className="legend-swatch" style={{ background: "rgba(196,98,45,0.25)", border: "1px solid rgba(196,98,45,0.3)" }} />
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
    ? <span className="badge badge-sun">Full Sun</span>
    : <span className="badge badge-part">Part Sun</span>;
}

function DiffBadge({ level }: { level: string }) {
  return level === "easy"
    ? <span className="badge badge-easy">Easy</span>
    : <span className="badge badge-moderate">Moderate</span>;
}

function HarvestTimeline({ plants, schedule }: { plants: PlantDetail[]; schedule: PlantSchedule[] }) {
  const today = new Date();
  const currentMonth = today.getMonth() + 1; // 1-based

  const estimates = plants
    .map(plant => {
      const sched = schedule.find(s => s.slug === plant.slug);
      let plantMonth: number | null = null;

      if (sched?.outdoor_plant_months && sched.outdoor_plant_months.length > 0) {
        const upcoming = sched.outdoor_plant_months.find(m => m >= currentMonth);
        plantMonth = upcoming ?? sched.outdoor_plant_months[0];
      }

      if (!plant.days_to_harvest_min) return null;

      const daysFromPlantToHarvest = plant.days_to_harvest_min + (plant.days_to_germinate_min ?? 0);

      // plantDate = start of the next recommended outdoor planting window
      const plantDate = new Date(today);
      if (plantMonth !== null) {
        const monthsUntilPlant = plantMonth >= currentMonth
          ? plantMonth - currentMonth
          : 12 - currentMonth + plantMonth;
        plantDate.setMonth(plantDate.getMonth() + monthsUntilPlant);
        plantDate.setDate(1); // start of that month
      }

      const harvestDate = new Date(plantDate);
      harvestDate.setDate(harvestDate.getDate() + daysFromPlantToHarvest);

      return {
        slug: plant.slug,
        name: plant.name,
        emoji: plant.emoji,
        plantDate,
        harvestDate,
        daysTotal: daysFromPlantToHarvest,
        plantLabel: plantDate.toLocaleString("default", { month: "short" }),
        harvestLabel: harvestDate.toLocaleString("default", { month: "long", year: "numeric" }),
        hasSchedule: plantMonth !== null,
      };
    })
    .filter((e): e is NonNullable<typeof e> => e !== null)
    .sort((a, b) => a.harvestDate.getTime() - b.harvestDate.getTime());

  if (estimates.length === 0) return null;

  const maxDays = Math.max(...estimates.map(e => e.daysTotal));

  return (
    <div style={{ marginBottom: 48 }}>
      <div className="section-header">
        <div className="section-title">First Harvest Timeline</div>
        <div className="section-count">If planted at the start of your next recommended outdoor window</div>
      </div>
      <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
        {estimates.map(est => {
          const barPct = Math.round((est.daysTotal / maxDays) * 100);
          return (
            <div key={est.slug} style={{ display: "grid", gridTemplateColumns: "180px 1fr 220px", gap: 16, alignItems: "center" }}>
              <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 14, fontWeight: 700, color: "var(--dark)" }}>
                {est.emoji} {est.name}
              </div>
              <div style={{ background: "rgba(196,98,45,0.1)", borderRadius: 4, height: 8, overflow: "hidden" }}>
                <div style={{ width: `${barPct}%`, height: "100%", background: "var(--terra-light)", borderRadius: 4 }} />
              </div>
              <div style={{ fontSize: 12, color: "var(--terra-dark)", fontWeight: 500 }}>
                {est.hasSchedule
                  ? <>Plant <strong>{est.plantLabel}</strong> → harvest by <strong>{est.harvestLabel}</strong></>
                  : <>~{est.daysTotal} days → <strong>{est.harvestLabel}</strong></>
                }
              </div>
            </div>
          );
        })}
      </div>
      <div style={{ fontSize: 11, color: "#aaa", marginTop: 12, fontWeight: 300 }}>
        Dates assume outdoor planting at the start of the recommended window for your zone. Bar length = relative days to harvest.
      </div>
    </div>
  );
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
          <div className="detail-block-label">Light Requirements</div>
          <div className="detail-block-content">{plant.light_description}</div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">Watering</div>
          <div className="detail-block-content">{plant.water_description}</div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">Soil Composition</div>
          <div className="detail-block-content">
            {plant.soil_description}
            {plant.ph_min && plant.ph_max && (
              <> pH {plant.ph_min}–{plant.ph_max}.</>
            )}
          </div>
        </div>
        <div className="detail-block">
          <div className="detail-block-label">Companion Plants</div>
          <div className="detail-block-content">
            {beneficial.length > 0 && <><strong>Grows well with: </strong>{beneficial.join(", ")}<br /></>}
            {harmful.length > 0 && <><strong>Keep away from: </strong>{harmful.join(", ")}</>}
            {beneficial.length === 0 && harmful.length === 0 && "No companion data yet."}
          </div>
        </div>
        <div className="detail-block full-width">
          <div className="detail-block-label">Pro Tips</div>
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

function HomePage({ onStart, onGuides }: { onStart: () => void; onGuides: () => void }) {
  return (
    <div className="page">
      <div className="hero">
        <div className="hero-bg" />
        <div className="hero-grid" />
        <nav className="nav">
          <div className="nav-logo">Terra<span>.</span></div>
          <div className="nav-links">
            <a style={{ cursor: "pointer" }} onClick={onGuides}>Guides</a>
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
            <div className="feature-title">Guided Planning</div>
            <div className="feature-desc">Answer a few questions about your space, experience, and goals. We&apos;ll build a personalized garden plan around you.</div>
          </div>
          <div className="feature-card">
            <div className="feature-title">Deep Plant Knowledge</div>
            <div className="feature-desc">Light, water, soil composition, companion planting, seasonal tips — every detail you need, curated for real gardeners.</div>
          </div>
          <div className="feature-card">
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
  const [plantSearch, setPlantSearch] = useState("");
  const [plantDropdownOpen, setPlantDropdownOpen] = useState(false);

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
                  onClick={() => { setAnswers(a => ({ ...a, space: opt.id })); setStep(s => s + 1); }}>

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
                  onClick={() => { setAnswers(a => ({ ...a, experience: opt.id })); setStep(s => s + 1); }}>

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
                  onClick={() => { setAnswers(a => ({ ...a, zone: opt.id })); setStep(s => s + 1); }}>

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
            <p className="wizard-desc">Search and select everything you&apos;re interested in — we&apos;ll check compatibility and give tips for each.</p>
            <div className="plant-search-wrapper">
              <div className="plant-search-box">
                <input
                  className="plant-search-input"
                  type="text"
                  placeholder="Search plants..."
                  value={plantSearch}
                  onChange={e => { setPlantSearch(e.target.value); setPlantDropdownOpen(true); }}
                  onFocus={() => setPlantDropdownOpen(true)}
                  onBlur={() => setTimeout(() => setPlantDropdownOpen(false), 150)}
                  autoComplete="off"
                />
                {plantDropdownOpen && (
                  <div className="plant-dropdown">
                    {allPlants
                      .filter(p => p.name.toLowerCase().includes(plantSearch.toLowerCase()) && !answers.plants.includes(p.slug))
                      .map(p => (
                        <div key={p.slug} className="plant-dropdown-item" onMouseDown={() => { togglePlant(p.slug); setPlantSearch(""); }}>
                          {p.name}
                        </div>
                      ))}
                    {allPlants.filter(p => p.name.toLowerCase().includes(plantSearch.toLowerCase()) && !answers.plants.includes(p.slug)).length === 0 && (
                      <div className="plant-dropdown-empty">No plants found</div>
                    )}
                  </div>
                )}
              </div>
              {answers.plants.length > 0 && (
                <div className="plant-selected-tags">
                  {answers.plants.map(slug => {
                    const p = allPlants.find(x => x.slug === slug);
                    return p ? (
                      <span key={slug} className="plant-tag">
                        {p.name}
                        <button className="plant-tag-remove" onClick={() => togglePlant(slug)}>×</button>
                      </span>
                    ) : null;
                  })}
                </div>
              )}
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
  const [shareOpen, setShareOpen] = useState(false);
  const [shareCopied, setShareCopied] = useState(false);

  useEffect(() => {
    const fetchAll = async () => {
      try {
        const [detailsRes, insightRes, scheduleRes] = await Promise.all([
          fetch("/api/plants/details", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ slugs: answers.plants, space: answers.space }),
          }),
          fetch("/api/garden-insight", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              prompt: (() => {
                const goalCtx = answers.goals.length > 0
                  ? ` Their goals are: ${answers.goals.map(g => GOAL_OPTIONS.find(o => o.id === g)?.title ?? g).join(", ")}.`
                  : "";
                const plants = answers.plants.join(", ");
                const space = getSpaceLabel(answers.space).toLowerCase();
                if (answers.experience === "new") {
                  return `A complete beginner gardener with a ${space} is starting their first garden with: ${plants}.${goalCtx} Write 2-3 sentences of warm, encouraging advice tailored to a first-timer. Weave in their goals naturally. Focus on: one simple thing to start with, what to watch for as a beginner, and a reassuring note that they can do this. Be specific to 1-2 of their plants. No markdown, no bullet points, pure prose.`;
                } else if (answers.experience === "some") {
                  return `A gardener with a few seasons of experience has a ${space} and wants to grow: ${plants}.${goalCtx} Write 2-3 sentences of practical, intermediate-level advice that connects to their goals. Focus on: how to get better results than last season, an optimization tip specific to their plant mix and goals, and what to pay attention to this time around. Mention 1-2 of their specific plants. No markdown, no bullet points, pure prose.`;
                } else {
                  return `An experienced, confident gardener with a ${space} is planning to grow: ${plants}.${goalCtx} Write 2-3 sentences of concise, advanced gardening insight aligned to their goals. Focus on: maximizing yield or aesthetics, a nuanced technique for their plant combination, or a pro-level consideration for their space and goals. Skip the basics — they know them. Mention 1-2 of their plants specifically. No markdown, no bullet points, pure prose.`;
                }
              })(),
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

  // Goal-aware sorting: each goal shapes what rises to the top
  const goalSort = (a: PlantDetail, b: PlantDetail): number => {
    if (answers.goals.includes("eat")) {
      const aD = a.days_to_harvest_min ?? 9999;
      const bD = b.days_to_harvest_min ?? 9999;
      if (aD !== bD) return aD - bD;
    }
    if (answers.goals.includes("beauty")) {
      const order = ["flower", "herb"];
      const aR = order.indexOf(a.category);
      const bR = order.indexOf(b.category);
      if (aR !== bR) return (aR === -1 ? 99 : aR) - (bR === -1 ? 99 : bR);
    }
    if (answers.goals.includes("wellness")) {
      const aH = a.category === "herb" ? 0 : 1;
      const bH = b.category === "herb" ? 0 : 1;
      if (aH !== bH) return aH - bH;
    }
    // Beginners always get easy plants first as a baseline
    if (answers.experience === "new") {
      if (a.difficulty !== b.difficulty) return a.difficulty === "easy" ? -1 : 1;
    }
    return 0;
  };
  const sortedPlants = [...plantDetails].sort(goalSort);

  // Challenge framing: for "learn" goal, moderate plants are badges of honor not warnings
  const isLearnGoal = answers.goals.includes("learn");
  const moderatePlants = plantDetails.filter(p => p.difficulty === "moderate").map(p => p.name);
  const moderatePlantsForBeginner = answers.experience === "new" && !isLearnGoal ? moderatePlants : [];
  const challengePicks = isLearnGoal && moderatePlants.length > 0 ? moderatePlants : [];

  // Feature 3: Proactive companion suggestions — find beneficial companions NOT in selection
  const companionSuggestions: { slug: string; name: string; benefitedPlants: string[] }[] = [];
  const suggestionMap: Record<string, { name: string; benefitedPlants: string[] }> = {};
  plantDetails.forEach(plant => {
    plant.companion_planting.forEach(c => {
      if (!c.companion || selectedSlugs.has(c.companion.slug)) return;
      if (c.relationship !== "beneficial") return;
      if (!suggestionMap[c.companion.slug]) {
        suggestionMap[c.companion.slug] = { name: c.companion.name, benefitedPlants: [] };
      }
      if (!suggestionMap[c.companion.slug].benefitedPlants.includes(plant.name)) {
        suggestionMap[c.companion.slug].benefitedPlants.push(plant.name);
      }
    });
  });
  Object.entries(suggestionMap)
    .sort((a, b) => b[1].benefitedPlants.length - a[1].benefitedPlants.length)
    .slice(0, 3)
    .forEach(([slug, data]) => companionSuggestions.push({ slug, ...data }));

  return (
    <>
    <div className="results-page">
      <div className="results-hero">
        <div className="results-hero-bg" />
        <div className="results-nav">
          <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 20, fontWeight: 900, color: "var(--cream)", cursor: "pointer" }} onClick={onRestart}>
            Terra<span style={{ color: "var(--terra-light)" }}>.</span>
          </div>
          <div style={{ display: "flex", gap: 10 }}>
            <button className="btn-ghost" onClick={() => setShareOpen(true)} style={{ fontSize: 12 }}>Share →</button>
            <button className="btn-ghost" onClick={onRestart} style={{ fontSize: 12 }}>← Start Over</button>
          </div>
        </div>
        <div>
          <div className="results-eyebrow">Your Personal Garden Guide</div>
          <h1 className="results-title">
            <em>{plantDetails.length} plants</em> for your<br />{getSpaceLabel(answers.space)}
          </h1>
          <div className="results-meta">
            <span className="meta-pill">{getSpaceLabel(answers.space)}</span>
            <span className="meta-pill">{answers.experience === "new" ? "Beginner" : answers.experience === "some" ? "Intermediate" : "Experienced"}</span>
            {answers.zone && <span className="meta-pill">{getZoneLabel(answers.zone)}</span>}
            {answers.goals.map(g => {
              const gl = GOAL_OPTIONS.find(o => o.id === g);
              return gl ? <span key={g} className="meta-pill">{gl.title}</span> : null;
            })}
          </div>
        </div>
      </div>

      <div className="results-body">
        {aiInsight && (
          <div style={{ background: "rgba(122,54,40,0.06)", borderLeft: "3px solid var(--terra-light)", padding: "24px 28px", marginBottom: 48, fontFamily: "'Playfair Display', serif", fontSize: 18, fontStyle: "italic", color: "var(--dark)", lineHeight: 1.7 }}>
            {aiInsight}
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
            <div className="overview-value">
              {plantDetails.some(p => p.difficulty === "moderate")
                ? answers.experience === "new" ? "Mostly Easy + 1–2 Moderate" : "Easy to Moderate"
                : "All Easy"}
            </div>
          </div>
        </div>

        {/* Feature 1: Goal-aware callout */}
        {answers.goals.length > 0 && (
          <div style={{ background: "rgba(196,98,45,0.06)", border: "1px solid rgba(196,98,45,0.15)", padding: "16px 22px", marginBottom: 24, display: "flex", gap: 12, alignItems: "flex-start" }}>
            <span style={{ fontSize: 16, flexShrink: 0 }}>✦</span>
            <div style={{ fontSize: 13, color: "#555", fontWeight: 300, lineHeight: 1.6 }}>
              <strong style={{ color: "var(--dark)", fontWeight: 600 }}>Personalized for your goals — </strong>
              {answers.goals.includes("eat") && "plants sorted by fastest harvest first. "}
              {answers.goals.includes("beauty") && "flowers and ornamental plants highlighted first. "}
              {answers.goals.includes("wellness") && "herbs and sensory plants prioritized. "}
              {answers.goals.includes("learn") && "moderate-difficulty plants marked as Challenge Picks. "}
              {answers.goals.includes("eat") && "Pick the quickest producers to get food on your table fast."}
              {answers.goals.includes("beauty") && "These selections will give you the most visual impact."}
              {answers.goals.includes("wellness") && "These are your most fragrant, tactile, and calming plants."}
              {answers.goals.includes("learn") && "Push yourself — the harder plants are where the real learning happens."}
            </div>
          </div>
        )}

        {/* Feature 1: Beginner warning (only if not "learn" goal) */}
        {moderatePlantsForBeginner.length > 0 && (
          <div style={{ background: "rgba(212,168,67,0.1)", border: "1px solid rgba(212,168,67,0.35)", padding: "18px 24px", marginBottom: 32, display: "flex", gap: 14, alignItems: "flex-start" }}>
            <span style={{ fontSize: 18, flexShrink: 0 }}>★</span>
            <div>
              <div style={{ fontSize: 13, fontWeight: 600, color: "var(--dark)", marginBottom: 4 }}>A couple of your picks need a little extra attention</div>
              <div style={{ fontSize: 13, color: "#555", fontWeight: 300, lineHeight: 1.6 }}>
                <strong>{moderatePlantsForBeginner.join(" and ")}</strong> {moderatePlantsForBeginner.length === 1 ? "is" : "are"} rated moderate difficulty — totally doable as a beginner, but worth reading the guide carefully. We&apos;ve listed your easier plants first below.
              </div>
            </div>
          </div>
        )}

        {/* Feature 1: Challenge picks callout (for "learn" goal) */}
        {challengePicks.length > 0 && (
          <div style={{ background: "rgba(122,54,40,0.06)", border: "1px solid rgba(122,54,40,0.2)", padding: "18px 24px", marginBottom: 32, display: "flex", gap: 14, alignItems: "flex-start" }}>
            <span style={{ fontSize: 18, flexShrink: 0 }}>◆</span>
            <div>
              <div style={{ fontSize: 13, fontWeight: 600, color: "var(--dark)", marginBottom: 4 }}>Challenge Picks in your selection</div>
              <div style={{ fontSize: 13, color: "#555", fontWeight: 300, lineHeight: 1.6 }}>
                <strong>{challengePicks.join(" and ")}</strong> {challengePicks.length === 1 ? "is" : "are"} moderate difficulty — exactly the kind of plant to sharpen your skills on. Read each guide carefully and you&apos;ll come away a much better gardener.
              </div>
            </div>
          </div>
        )}

        {/* Feature 2: Harvest timeline */}
        <HarvestTimeline plants={plantDetails} schedule={schedule} />

        {schedule.length > 0 && <PlantingCalendar schedule={schedule} />}

        <div className="section-header">
          <div className="section-title">Plant-by-Plant Guide</div>
          <div className="section-count">{plantDetails.length} plants — click to expand</div>
        </div>
        {answers.experience === "new" && !isLearnGoal && (
          <div style={{ fontSize: 13, color: "#888", marginBottom: 20, fontWeight: 300 }}>
            New to gardening? Start with the easy-rated plants and get comfortable before tackling anything more involved.
          </div>
        )}
        {answers.experience === "confident" && (
          <div style={{ fontSize: 13, color: "#888", marginBottom: 20, fontWeight: 300 }}>
            Advanced tips and companion strategies are highlighted in each guide below.
          </div>
        )}
        <div className="plants-list">
          {sortedPlants.map(p => <PlantRow key={p.slug} plant={p} />)}
        </div>

        {/* Feature 3: Proactive companion suggestions */}
        {companionSuggestions.length > 0 && (
          <div style={{ background: "rgba(90,140,90,0.06)", border: "1px solid rgba(90,140,90,0.2)", padding: "24px 28px", marginBottom: 48 }}>
            <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "#5A8C5A", fontWeight: 600, marginBottom: 14 }}>✦ Consider Adding</div>
            <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 18, fontWeight: 700, color: "var(--dark)", marginBottom: 6 }}>Plants that would strengthen your garden</div>
            <div style={{ fontSize: 13, color: "#777", fontWeight: 300, marginBottom: 20 }}>Based on your current selection, these plants would create beneficial relationships with what you&apos;re already growing.</div>
            <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
              {companionSuggestions.map(s => (
                <div key={s.slug} style={{ display: "flex", gap: 14, alignItems: "flex-start" }}>
                  <div style={{ width: 6, height: 6, borderRadius: "50%", background: "#5A8C5A", marginTop: 6, flexShrink: 0 }} />
                  <div>
                    <span style={{ fontSize: 14, fontWeight: 600, color: "var(--dark)" }}>{s.name}</span>
                    <span style={{ fontSize: 13, color: "#777", fontWeight: 300 }}> — benefits {s.benefitedPlants.join(", ")} already in your plan</span>
                  </div>
                </div>
              ))}
            </div>
          </div>
        )}

        {(compatibleGroups.length > 0 || harmfulPairs.length > 0) && (
          <div className="companions-section">
            <div className="companions-title">Companion Planting Guide</div>
            <div className="companions-sub">Based on your specific plant selection</div>

            {compatibleGroups.length > 0 && (
              <>
                <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-light)", fontWeight: 600, marginBottom: 12 }}>✓ Grow Together</div>
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
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 6 }}>Plant</div>
                  <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 16, fontWeight: 700, color: "var(--dark)" }}>{plant.emoji} {plant.name}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 6 }}>Soil Composition</div>
                  <div style={{ fontSize: 13, color: "#555", lineHeight: 1.6, fontWeight: 300 }}>{plant.soil_description}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 6 }}>pH Range</div>
                  <div style={{ fontSize: 15, fontWeight: 600, color: "var(--dark)" }}>{plant.ph_min}–{plant.ph_max}</div>
                </div>
                <div>
                  <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 6 }}>Drainage</div>
                  <div style={{ fontSize: 13, fontWeight: 500, color: "var(--ink)", textTransform: "capitalize" }}>{plant.drainage}</div>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* Feature 4: Space Guide */}
        {plantDetails.some(p => p.space_recommendation) && (
          <div style={{ background: "var(--cream)", padding: "48px", marginBottom: 64, borderLeft: "3px solid var(--gold)" }}>
            <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 24, fontWeight: 700, color: "var(--dark)", marginBottom: 8 }}>Space Guide</div>
            <p style={{ color: "#999", fontSize: 13, marginBottom: 32, fontWeight: 300 }}>How to fit each plant in your {getSpaceLabel(answers.space).toLowerCase()}</p>
            <div style={{ display: "flex", flexDirection: "column", gap: 2 }}>
              {plantDetails.map(plant => {
                const rec = plant.space_recommendation;
                return (
                  <div key={plant.slug} style={{ background: "var(--warm-white)", padding: "20px 28px", display: "grid", gridTemplateColumns: "200px 1fr 160px", gap: 24, alignItems: "start" }}>
                    <div>
                      <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 15, fontWeight: 700, color: "var(--dark)" }}>{plant.emoji} {plant.name}</div>
                      {!rec?.recommended && rec && (
                        <div style={{ fontSize: 11, color: "#C4622D", fontWeight: 500, marginTop: 4 }}>⚠ Challenging for this space</div>
                      )}
                    </div>
                    <div style={{ fontSize: 13, color: "#555", lineHeight: 1.6, fontWeight: 300 }}>
                      {rec?.notes ?? (plant.container_friendly ? "Container friendly — adapts well to this space." : "Prefers ground planting.")}
                    </div>
                    <div>
                      {rec?.recommended_container_size ? (
                        <>
                          <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 4 }}>Container Size</div>
                          <div style={{ fontSize: 13, fontWeight: 600, color: "var(--dark)" }}>{rec.recommended_container_size}</div>
                        </>
                      ) : plant.container_size_min_gallons ? (
                        <>
                          <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 4 }}>Min Container</div>
                          <div style={{ fontSize: 13, fontWeight: 600, color: "var(--dark)" }}>{plant.container_size_min_gallons} gal{plant.container_depth_min_inches ? `, ${plant.container_depth_min_inches}" deep` : ""}</div>
                        </>
                      ) : null}
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        )}

        <div className="start-over">
          <p>Want to plan a different garden or try new plants?</p>
          <button className="btn-next" onClick={onRestart}>Plan Another Garden →</button>
        </div>
      </div>
    </div>

    {/* Feature 5: Share modal */}
    {shareOpen && (
      <div style={{ position: "fixed", inset: 0, background: "rgba(28,16,8,0.75)", zIndex: 1000, display: "flex", alignItems: "center", justifyContent: "center", padding: 24 }} onClick={() => setShareOpen(false)}>
        <div style={{ background: "var(--dark)", borderRadius: 4, padding: 40, maxWidth: 520, width: "100%", position: "relative" }} onClick={e => e.stopPropagation()}>
          {/* Card content */}
          <div style={{ borderBottom: "1px solid rgba(212,135,106,0.2)", paddingBottom: 24, marginBottom: 24 }}>
            <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 13, color: "var(--terra-light)", letterSpacing: 3, textTransform: "uppercase", marginBottom: 16 }}>Terra Garden Plan</div>
            <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 28, fontWeight: 700, color: "var(--cream)", lineHeight: 1.2, marginBottom: 20 }}>
              <em>{plantDetails.length} plants</em> for my {getSpaceLabel(answers.space)}
            </div>
            <div style={{ display: "flex", flexWrap: "wrap", gap: 6, marginBottom: 24 }}>
              {[
                getSpaceLabel(answers.space),
                answers.experience === "new" ? "Beginner" : answers.experience === "some" ? "Intermediate" : "Experienced",
                answers.zone ? getZoneLabel(answers.zone) : null,
                ...answers.goals.map(g => GOAL_OPTIONS.find(o => o.id === g)?.title ?? g),
              ].filter(Boolean).map((label, i) => (
                <span key={i} style={{ fontSize: 11, padding: "3px 10px", border: "1px solid rgba(212,135,106,0.3)", color: "var(--terra-light)", borderRadius: 20 }}>{label}</span>
              ))}
            </div>
            <div style={{ display: "flex", flexWrap: "wrap", gap: 10 }}>
              {plantDetails.map(p => (
                <div key={p.slug} style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 4 }}>
                  <span style={{ fontSize: 28 }}>{p.emoji}</span>
                  <span style={{ fontSize: 10, color: "rgba(245,234,224,0.6)", fontWeight: 300 }}>{p.name}</span>
                </div>
              ))}
            </div>
          </div>

          {/* Actions */}
          <div style={{ display: "flex", gap: 10, flexWrap: "wrap" }}>
            <button
              className="btn-primary"
              style={{ fontSize: 13, flex: 1 }}
              onClick={() => {
                const text = [
                  `🌱 My Terra Garden Plan`,
                  `${plantDetails.length} plants for my ${getSpaceLabel(answers.space)}`,
                  `Zone: ${getZoneLabel(answers.zone)}`,
                  ``,
                  plantDetails.map(p => `${p.emoji} ${p.name}`).join("  ·  "),
                  ``,
                  `Plan yours at terra.app`,
                ].join("\n");
                navigator.clipboard.writeText(text).then(() => {
                  setShareCopied(true);
                  setTimeout(() => setShareCopied(false), 2000);
                });
              }}
            >
              {shareCopied ? "Copied!" : "Copy to Clipboard"}
            </button>
            {typeof navigator !== "undefined" && "share" in navigator && (
              <button
                className="btn-ghost"
                style={{ fontSize: 13, flex: 1 }}
                onClick={() => {
                  navigator.share({
                    title: "My Terra Garden Plan",
                    text: `${plantDetails.length} plants for my ${getSpaceLabel(answers.space)}: ${plantDetails.map(p => p.name).join(", ")}`,
                  });
                }}
              >
                Share via…
              </button>
            )}
            <button className="btn-ghost" style={{ fontSize: 13 }} onClick={() => setShareOpen(false)}>Close</button>
          </div>
        </div>
      </div>
    )}
    </>
  );
}

// ── Guides Data ──────────────────────────────────────────────────────────────

const ZONE_GUIDES = [
  {
    id: "cold",
    label: "Cold Winters",
    zones: "Zones 3–5",
    examples: "Minnesota, Maine, Montana, Wisconsin",
    emoji: "❄️",
    season: "90–120 days",
    lastFrost: "Late May – mid June",
    firstFrost: "Early–mid September",
    tagline: "Short but mighty. Every week counts.",
    intro: "Cold-climate gardening is all about working with a compressed timeline. Your soil thaws late and freezes early — but with the right crops and a few season-extension tricks, you can grow more than most people expect.",
    tips: [
      { title: "Start indoors early", body: "Begin seeds 8–10 weeks before your last frost (around late March). Tomatoes, peppers, and brassicas all benefit from an early indoor start. Don't rush them outdoors — cold soil slows growth dramatically." },
      { title: "Use row covers and cold frames", body: "A simple frost cloth or cold frame can add 3–4 weeks to each end of your season. This turns a 100-day season into a 130-day one — enough to ripen full-size tomatoes." },
      { title: "Choose short-season varieties", body: "Look for 'days to maturity' under 70 for warm-season crops. Varieties like Stupice tomato (52 days) or Early Jalapeño were bred for climates like yours." },
      { title: "Lean into cold-hardy crops", body: "Kale, spinach, peas, and root vegetables don't just survive cold — they thrive in it. Frost actually sweetens kale and carrots. These are your most reliable performers." },
      { title: "Mulch after first frost", body: "Once temperatures drop, add 4–6 inches of mulch over perennial beds, garlic, and strawberries. It insulates roots through deep freezes and retains spring moisture." },
    ],
    rhythm: [
      { period: "March – April", action: "Start seeds indoors: tomatoes, peppers, brassicas, herbs" },
      { period: "May (after last frost)", action: "Direct sow peas, spinach, carrots, beets; transplant cold-tolerant starts" },
      { period: "June 1+", action: "Transplant warm-season crops outdoors after soil reaches 60°F" },
      { period: "July – August", action: "Peak growing season; sow fall crops (kale, turnips, radishes) in late July" },
      { period: "September", action: "Harvest warm crops before first frost; cold-hardy greens continue" },
      { period: "October", action: "Last harvest window; plant garlic for next spring" },
    ],
    bestPlants: ["Kale", "Spinach", "Peas", "Carrots", "Beets", "Radishes", "Broccoli", "Cabbage", "Potatoes", "Garlic", "Chives", "Short-season tomatoes", "Cold-hardy strawberries"],
    avoid: "Long-season crops (butternut squash, late peppers), frost-sensitive herbs like basil (without protection), tropical plants.",
    color: "#5B7FA6",
  },
  {
    id: "temperate",
    label: "Temperate Climate",
    zones: "Zones 6–7",
    examples: "Virginia, Missouri, Pacific NW, New England",
    emoji: "🌿",
    season: "150–180 days",
    lastFrost: "Mid-March to mid-April",
    firstFrost: "Mid-October to mid-November",
    tagline: "Two full seasons. The sweet spot for most gardeners.",
    intro: "Temperate zones have a forgiving, generous growing season with distinct spring and fall windows. This is the most versatile climate for gardening — nearly everything grows here. The main challenge is planning both seasons well.",
    tips: [
      { title: "Plant twice: spring and fall", body: "You have two distinct growing windows. Direct sow cool-season crops (lettuce, spinach, peas) 4–6 weeks before your last frost in spring, then again in late July for fall harvest." },
      { title: "Succession plant for continuous harvest", body: "Sow lettuce, radishes, and beans every 2–3 weeks instead of all at once. This prevents a glut followed by nothing — you'll harvest continuously for months." },
      { title: "Watch for late spring frosts", body: "Frost can sneak in through mid-April in zone 6. Keep a frost cloth handy and check the 10-day forecast before transplanting warm-season crops outside." },
      { title: "Manage humidity and airflow", body: "Humid summers invite powdery mildew, blight, and fungal issues. Space plants generously, prune lower leaves, and water at the base — never overhead — to keep foliage dry." },
      { title: "Plant garlic in fall", body: "October is the perfect time to plant garlic in temperate zones. It overwinters in the ground and gives you an early July harvest — one of the easiest and most rewarding crops." },
    ],
    rhythm: [
      { period: "February – March", action: "Start tomatoes, peppers, eggplant indoors; direct sow cool crops outdoors when soil is workable" },
      { period: "April – May", action: "Transplant brassicas; direct sow beans, carrots, beets after last frost" },
      { period: "May – June", action: "Transplant tomatoes, peppers, cucumbers after frost-free; plant squash and corn" },
      { period: "July – August", action: "Peak summer harvest; sow fall brassicas, greens, and carrots in late July" },
      { period: "September – October", action: "Fall harvest window; lettuce, spinach, kale thrive in cooling temps" },
      { period: "October", action: "Plant garlic; add compost and cover crop bare beds before winter" },
    ],
    bestPlants: ["Tomatoes", "Peppers", "Cucumbers", "Squash", "Beans", "Peas", "Lettuce", "Kale", "Broccoli", "Garlic", "Strawberries", "Blueberries", "Most herbs"],
    avoid: "Tropical crops (banana, papaya) won't survive winter. Very long-season crops may not fully mature if planted late.",
    color: "#5A8C5A",
  },
  {
    id: "warm",
    label: "Mild & Warm",
    zones: "Zones 8–9",
    examples: "Georgia, Southern CA, Gulf Coast, Texas",
    emoji: "☀️",
    season: "200–240 days",
    lastFrost: "Mid-February to mid-March",
    firstFrost: "November – December",
    tagline: "Two harvests, one challenge: surviving summer.",
    intro: "Warm zones offer an incredibly long season, but summer heat is your biggest obstacle — not cold. The most productive approach is to think in two seasons: a spring push before the heat arrives, and a fall/winter garden when temperatures drop back into the sweet spot.",
    tips: [
      { title: "Plant tomatoes early — February or March", body: "Get tomatoes in the ground early so they can fruit and finish before summer heat tops 90°F. Heat causes blossom drop and stops fruit set. An early start means a full harvest by June." },
      { title: "Use shade cloth in summer", body: "A 30–50% shade cloth over vulnerable crops in July–August can drop soil temps by 10°F and prevent leaf scorch. This is the single most useful tool for warm-zone gardeners." },
      { title: "Fall is your best season", body: "September through February is often the most productive time of year. Soil is warm (seeds germinate fast), pests decline, and cool temps are ideal for brassicas, greens, root vegetables, and herbs." },
      { title: "Water deeply, not frequently", body: "Train roots to go deep by watering thoroughly 1–2 times per week rather than a little every day. Deep roots are more drought-tolerant. Mulch 3–4 inches thick to hold moisture." },
      { title: "Plant garlic in November", body: "Unlike northern zones, garlic is planted in fall here and harvested in late spring. It's one of the easiest and most productive crops in warm climates." },
    ],
    rhythm: [
      { period: "February – March", action: "Plant tomatoes, peppers, squash; last chance for cool-season crops" },
      { period: "April – June", action: "Peak warm-season harvest; plant sweet potatoes and okra in May" },
      { period: "July – August", action: "Heat pause — shade cloth, drought-tolerant plants, minimal activity" },
      { period: "September – October", action: "Best planting window: brassicas, greens, carrots, beets, herbs" },
      { period: "November – December", action: "Plant garlic and onions; cool-season crops fully established" },
      { period: "January – February", action: "Winter harvest of greens, root veg; start tomatoes and peppers indoors" },
    ],
    bestPlants: ["Tomatoes (early season)", "Peppers", "Okra", "Sweet potatoes", "Eggplant", "Figs", "Blueberries", "Garlic", "Brassicas (fall)", "Citrus", "Herbs year-round", "Sweet corn"],
    avoid: "Don't plant cool-season crops in late spring — they'll bolt immediately. Avoid planting heat-sensitive crops (lettuce, spinach) from May to August.",
    color: "#C47C2A",
  },
  {
    id: "hot",
    label: "Hot & Frost-Free",
    zones: "Zones 10–11",
    examples: "South Florida, Hawaii, Southern CA desert",
    emoji: "🌴",
    season: "Year-round (no frost)",
    lastFrost: "None",
    firstFrost: "None",
    tagline: "No frost, no rules — but summer heat demands respect.",
    intro: "Frost-free zones sound like paradise, but tropical heat and year-round pest pressure require a different kind of strategy. The secret is knowing which crops belong in which season — counterintuitively, your coolest months (October–March) are the best time for most vegetables.",
    tips: [
      { title: "Grow cool-season vegetables Oct–March", body: "Tomatoes, peppers, and most vegetables grow best in your 'winter.' The cooler temperatures reduce stress, pests, and disease. Don't fight the summer — plant tropicals then instead." },
      { title: "Lean into tropical edibles year-round", body: "Bananas, papayas, lemongrass, moringa, sweet potatoes, and tropical herbs (basil, turmeric, ginger) are made for your climate. These give you productive growing even in the hottest months." },
      { title: "Manage pests proactively", body: "Warm year-round conditions mean pest populations never crash in winter. Inspect plants weekly, remove eggs and larvae early, and rotate crops seasonally to disrupt pest cycles." },
      { title: "Afternoon shade is critical in desert zones", body: "In Phoenix, Palm Springs, or similar areas, plants need protection from the intense afternoon sun (2–6pm). Growing on the east side of a wall, fence, or tree can make all the difference." },
      { title: "Water consistently — brief drought causes real damage", body: "Plants under heat stress have no buffer. Missing a watering in peak summer can cause irreversible damage within hours. Drip irrigation on a timer is the most reliable solution." },
    ],
    rhythm: [
      { period: "October – November", action: "Plant tomatoes, peppers, squash, beans, herbs — your main growing season begins" },
      { period: "December – January", action: "Brassicas, lettuce, carrots, beets thrive in cool temperatures; plant citrus" },
      { period: "February – March", action: "Peak cool-season harvest; start tropical edibles for summer" },
      { period: "April – May", action: "Transition to heat-tolerant crops: okra, sweet potatoes, tropical herbs" },
      { period: "June – September", action: "Focus on tropicals: banana, papaya, lemongrass, moringa; minimal veggie gardening" },
      { period: "October", action: "Cycle restarts — soil prep, compost, and replant for cool season" },
    ],
    bestPlants: ["Tomatoes (Oct–March)", "Peppers", "Okra", "Sweet potatoes", "Banana", "Papaya", "Citrus", "Avocado", "Lemongrass", "Basil", "Turmeric & ginger", "Moringa", "Chiles"],
    avoid: "Don't plant cool-season crops (lettuce, spinach, broccoli) in summer — they'll immediately bolt or die from heat stress. Avoid frost-sensitive tropicals in marginal zone 10 areas that occasionally dip below 30°F.",
    color: "#C4622D",
  },
];

function GuidesPage({ onHome }: { onHome: () => void }) {
  const [activeZone, setActiveZone] = useState("cold");
  const guide = ZONE_GUIDES.find(g => g.id === activeZone)!;

  return (
    <div className="page" style={{ minHeight: "100vh", background: "var(--cream)" }}>
      {/* Nav */}
      <div style={{ background: "var(--dark)", padding: "28px 48px", display: "flex", alignItems: "center", justifyContent: "space-between" }}>
        <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 20, fontWeight: 900, color: "var(--cream)", cursor: "pointer" }} onClick={onHome}>
          Terra<span style={{ color: "var(--terra-light)" }}>.</span>
        </div>
        <button className="btn-ghost" onClick={onHome} style={{ fontSize: 12 }}>← Back to Home</button>
      </div>

      {/* Header */}
      <div style={{ background: "var(--dark)", padding: "48px 48px 64px", position: "relative", overflow: "hidden" }}>
        <div style={{ position: "absolute", inset: 0, background: "radial-gradient(ellipse at 60% 50%, rgba(122,54,40,0.4) 0%, transparent 70%)" }} />
        <div style={{ position: "relative", zIndex: 1 }}>
          <div style={{ fontSize: 10, letterSpacing: 3, textTransform: "uppercase", color: "var(--terra-light)", fontWeight: 600, marginBottom: 16, display: "flex", alignItems: "center", gap: 10 }}>
            <span style={{ display: "inline-block", width: 24, height: 1, background: "var(--terra-light)" }} />
            Growing Guides
          </div>
          <h1 style={{ fontFamily: "'Playfair Display', serif", fontSize: "clamp(32px, 5vw, 52px)", fontWeight: 900, color: "var(--cream)", lineHeight: 1.1, marginBottom: 16 }}>
            Zone-by-Zone<br /><em style={{ color: "var(--terra-light)", fontStyle: "italic" }}>Growing Guides</em>
          </h1>
          <p style={{ color: "rgba(245,234,224,0.6)", fontSize: 16, fontWeight: 300, maxWidth: 520 }}>
            Every climate has its own rhythm. Select your zone below for specific planting windows, tips, and the crops that thrive where you live.
          </p>
        </div>
      </div>

      {/* Zone selector */}
      <div style={{ background: "var(--warm-white)", borderBottom: "1px solid rgba(44,24,16,0.08)", padding: "0 48px", display: "flex", gap: 0, overflowX: "auto" }}>
        {ZONE_GUIDES.map(z => (
          <button key={z.id} onClick={() => setActiveZone(z.id)} style={{
            background: "none", border: "none", cursor: "pointer",
            padding: "20px 28px", fontSize: 13, fontWeight: activeZone === z.id ? 600 : 400,
            color: activeZone === z.id ? "var(--terra-dark)" : "#888",
            borderBottom: activeZone === z.id ? "2px solid var(--terra-dark)" : "2px solid transparent",
            whiteSpace: "nowrap", transition: "all 0.15s",
          }}>
            {z.emoji} {z.label}
          </button>
        ))}
      </div>

      {/* Guide content */}
      <div style={{ maxWidth: 860, margin: "0 auto", padding: "56px 48px" }}>

        {/* Zone header */}
        <div style={{ marginBottom: 40 }}>
          <div style={{ fontSize: 10, letterSpacing: 3, textTransform: "uppercase", color: z_color(guide.color), fontWeight: 600, marginBottom: 10 }}>{guide.zones} · {guide.examples}</div>
          <h2 style={{ fontFamily: "'Playfair Display', serif", fontSize: 36, fontWeight: 900, color: "var(--dark)", marginBottom: 8 }}>{guide.emoji} {guide.label}</h2>
          <p style={{ fontFamily: "'Playfair Display', serif", fontSize: 18, fontStyle: "italic", color: "#888", marginBottom: 20 }}>{guide.tagline}</p>
          <p style={{ fontSize: 15, color: "#444", lineHeight: 1.75, fontWeight: 300, maxWidth: 680 }}>{guide.intro}</p>
        </div>

        {/* Stats row */}
        <div style={{ display: "grid", gridTemplateColumns: "repeat(3, 1fr)", gap: 2, marginBottom: 48 }}>
          {[
            { label: "Growing Season", value: guide.season },
            { label: "Last Frost", value: guide.lastFrost },
            { label: "First Fall Frost", value: guide.firstFrost },
          ].map(s => (
            <div key={s.label} style={{ background: "var(--warm-white)", padding: "20px 24px" }}>
              <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "var(--terra-dark)", fontWeight: 600, marginBottom: 6 }}>{s.label}</div>
              <div style={{ fontSize: 14, fontWeight: 600, color: "var(--dark)" }}>{s.value}</div>
            </div>
          ))}
        </div>

        {/* Tips */}
        <div style={{ marginBottom: 48 }}>
          <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 22, fontWeight: 700, color: "var(--dark)", marginBottom: 20 }}>Key Tips for {guide.label}</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
            {guide.tips.map((tip, i) => (
              <div key={i} style={{ background: "var(--warm-white)", padding: "20px 24px", display: "flex", gap: 18, alignItems: "flex-start" }}>
                <div style={{ width: 24, height: 24, borderRadius: "50%", background: guide.color, color: "#fff", fontSize: 11, fontWeight: 700, display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0, marginTop: 1 }}>{i + 1}</div>
                <div>
                  <div style={{ fontSize: 14, fontWeight: 600, color: "var(--dark)", marginBottom: 4 }}>{tip.title}</div>
                  <div style={{ fontSize: 13, color: "#555", fontWeight: 300, lineHeight: 1.65 }}>{tip.body}</div>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* Seasonal rhythm */}
        <div style={{ marginBottom: 48 }}>
          <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 22, fontWeight: 700, color: "var(--dark)", marginBottom: 20 }}>Seasonal Rhythm</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 2 }}>
            {guide.rhythm.map((r, i) => (
              <div key={i} style={{ display: "grid", gridTemplateColumns: "180px 1fr", gap: 24, padding: "16px 24px", background: i % 2 === 0 ? "var(--warm-white)" : "rgba(245,234,224,0.4)", alignItems: "start" }}>
                <div style={{ fontSize: 12, fontWeight: 600, color: guide.color }}>{r.period}</div>
                <div style={{ fontSize: 13, color: "#444", fontWeight: 300, lineHeight: 1.6 }}>{r.action}</div>
              </div>
            ))}
          </div>
        </div>

        {/* Best plants */}
        <div style={{ marginBottom: 40 }}>
          <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 22, fontWeight: 700, color: "var(--dark)", marginBottom: 16 }}>What Grows Best Here</div>
          <div style={{ display: "flex", flexWrap: "wrap", gap: 8 }}>
            {guide.bestPlants.map(p => (
              <span key={p} style={{ background: "rgba(122,54,40,0.08)", border: "1px solid rgba(122,54,40,0.15)", padding: "6px 14px", fontSize: 13, color: "var(--terra-dark)", fontWeight: 500 }}>{p}</span>
            ))}
          </div>
        </div>

        {/* What to avoid */}
        <div style={{ background: "rgba(196,98,45,0.06)", border: "1px solid rgba(196,98,45,0.18)", padding: "20px 24px" }}>
          <div style={{ fontSize: 10, letterSpacing: 2, textTransform: "uppercase", color: "#C4622D", fontWeight: 600, marginBottom: 8 }}>What to Avoid</div>
          <div style={{ fontSize: 13, color: "#555", fontWeight: 300, lineHeight: 1.65 }}>{guide.avoid}</div>
        </div>

        {/* CTA */}
        <div style={{ marginTop: 56, textAlign: "center", padding: "40px", background: "var(--dark)", position: "relative", overflow: "hidden" }}>
          <div style={{ position: "absolute", inset: 0, background: "radial-gradient(ellipse at 50% 50%, rgba(122,54,40,0.4) 0%, transparent 70%)" }} />
          <div style={{ position: "relative", zIndex: 1 }}>
            <div style={{ fontFamily: "'Playfair Display', serif", fontSize: 22, color: "var(--cream)", marginBottom: 8 }}>Ready to plan your {guide.label.toLowerCase()} garden?</div>
            <p style={{ color: "rgba(245,234,224,0.6)", fontSize: 13, marginBottom: 24 }}>Get a personalized plant selection and planting calendar for your zone.</p>
            <button className="btn-primary" onClick={onHome}>Plan My Garden →</button>
          </div>
        </div>

      </div>
    </div>
  );
}

// tiny helper so JSX stays clean
function z_color(hex: string) { return hex; }

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
      {view === "home" && <HomePage onStart={() => setView("wizard")} onGuides={() => setView("guides")} />}
      {view === "guides" && <GuidesPage onHome={() => setView("home")} />}
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
