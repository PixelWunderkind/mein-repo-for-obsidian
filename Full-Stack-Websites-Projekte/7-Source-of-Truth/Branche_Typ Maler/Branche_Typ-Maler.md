# ==========================================================================
# 1. BRANCHE & STEUERUNG
# ==========================================================================
branche_typ: "Maler" 

# ==========================================================================
# 2. FIRMENDATEN & RECHTLICHES (COMPLIANCE)
# ==========================================================================
firmenname: "[Z.B. Malerbetrieb Mustermann GmbH]"
inhaber: "[Name des Inhabers/Geschäftsführers]"
rechtsform: "[GmbH / e.K. / Einzelunternehmen]"
claim: "[Z.B. Wir bringen Farbe in Ihr Leben – sauber, schnell & zuverlässig]"
gruendungsjahr: [Jahr, z.B. 2015]
meisterbetrieb: true
innungsmitglied: true
handwerkskammer: "[Z.B. HWK Berlin]"

rechtliches:
  amtsgericht: "[Z.B. Amtsgericht Charlottenburg]"
  handelsregister_nummer: "[Z.B. HRB 12345 B oder leer lassen]"
  ust_id: "[Z.B. DE123456789]"
  aufsichtsbehoerde: "[Name der Handwerkskammer oder Stadtverwaltung]"
  berufsbezeichnung: "Maler- und Lackierermeister (verliehen in Deutschland)"
  
compliance:
  streitschlichtung: true             # true = Link zur EU-OS-Plattform im Impressum
  verbraucherschlichtung: false      # false = "Nicht bereit oder verpflichtet..."
  vsw_text_custom: ""                # Optionaler eigener Text
  datenschutz_hosting: "Vercel / Frankfurt (EU-Region)"
  cookie_banner_notwendig: true

agb:
  vorhanden: false
  anzeigen: false
  datei: ""     # URL oder Pfad, falls vorhanden

# ==========================================================================
# 3. KONTAKT & REICHWEITE
# ==========================================================================
telefon: "[Telefonnummer]"
telefon_notdienst: "[Falls vorhanden, sonst leer]"
email: "[E-Mail-Adresse]"
website: "[Domain, z.B. www.maler-musterbetrieb.de]"
strasse: "[Straße und Hausnummer]"
plz: "[Postleitzahl]"
stadt: "[Stadt]"
region: "[Z.B. Berlin & Umland]"
service_radius: "[Z.B. 30km]"
oeffnungszeiten:
  werktags: "Mo–Fr: 07:00–16:00 Uhr"
  samstag: "Sa: nach Vereinbarung"
  notdienst: ""

service_orte:
  - "[Ort 1 / Stadtteil 1]"
  - "[Ort 2 / Stadtteil 2]"
  - "[Ort 3 / Stadtteil 3]"
  - "[Ort 4 / Stadtteil 4]"
  - "[Ort 5 / Stadtteil 5]"

# ==========================================================================
# 4. KERNLEISTUNGEN (STRUKTURIERTES SCHEMA - HIER 4-6 METRIKEN ANLEGEN)
# ==========================================================================
leistungen:
  - slug: "innenarbeiten"
    titel: "Maler- & Tapezierarbeiten"
    icon: "Paintbrush"                # Lucide Icon Name
    kurz: "Präzise Innenraumgestaltung für ein neues Wohngefühl."
    beschreibung: "Wir übernehmen alle klassischen Malerarbeiten in Ihren Innenräumen – sauber, professionell und mit hochwertigen Materialien."
    kundenprobleme:
      - "Verblasste Farben oder unschöne Flecken an Wänden und Decken?"
      - "Altbackene Tapeten, die mühsam entfernt werden müssen?"
      - "Angst vor Schmutz und Farbklecksen auf den Möbeln?"
    vorteile:
      - titel: "Sauberkeitsgarantie"
        text: "Wir decken alles penibel ab und hinterlassen den Raum besenrein."
      - titel: "Premium-Farben"
        text: "Geruchsneutral, emissionsarm und extrem langlebig."
      - titel: "Rundum-Service"
        text: "Auf Wunsch rücken wir auch Ihre Möbel ab und wieder an."
    seo_title: "Professionelle Malerarbeiten in {stadt} | Meisterbetrieb"
    seo_description: "Erfahrene Maler für Ihre Innenräume in {region}. Saubere Ausführung, Festpreis-Garantie & persönliche Beratung. Jetzt Angebot sichern!"
    seo_keywords: ["Maler {stadt}", "Malerarbeiten {region}", "Malerbetrieb {stadt}"]

  - slug: "fassadenanstrich"
    titel: "Fassadengestaltung & Schutz"
    icon: "Home"
    kurz: "Werterhalt und optische Aufwertung Ihrer Immobilie."
    beschreibung: "Ein neuer Fassadenanstrich schützt Ihr Haus vor Witterungseinflüssen, Schimmel und Algenbildung."
    kundenprobleme:
      - "Risse im Putz oder abblätternde Farbe an der Außenwand?"
      - "Verschmutzungen und Algenbefall mindern den Immobilienwert?"
      - "Unsicherheit über den aktuellen Zustand der Dämmung?"
    vorteile:
      - titel: "Witterschutz"
        text: "Hochwertige Silikonharzfarben schützen vor Schlagregen und UV-Licht."
      - titel: "Gerüstbau inklusive"
        text: "Wir kümmern uns um die komplette Logistik und Absperrung."
      - titel: "Wertsteigerung"
        text: "Ein gepflegtes Erscheinungsbild erhöht den Wert Ihres Hauses spürbar."
    seo_title: "Fassadenanstrich & Sanierung in {stadt} – Malerbetrieb"
    seo_description: "Langlebiger Fassadenschutz für Ihr Haus in {region}. Riss-Sanierung und Neuanstrich vom Innungsmeister. Kostenloses Angebot!"
    seo_keywords: ["Fassadenanstrich {stadt}", "Fassade streichen {region}", "Fassadensanierung {stadt}"]

# ==========================================================================
# 5. STRATEGISCHER INHALT (HERO & LEAD MAGNET)
# ==========================================================================
hero:
  headline: "[Slogan / Hauptüberschrift, z.B. Ihr zuverlässiger Malerbetrieb in {stadt}]"
  subline: "Meisterhafte Qualität im Innen- und Außenbereich seit {gruendungsjahr}."
  cta_primary: "Kostenloses Angebot anfordern"
  cta_secondary: "Direkt anrufen"

lead_magnet:
  typ: "checklist"                   # "checklist" | "calculator" | "planner" | "none"
  titel: "Gratis Fassaden-Checkliste"
  untertitel: "8 Warnsignale, an denen Sie Putz- und Feuchtigkeitsschäden vorab erkennen"
  cta: "Checkliste jetzt anfordern"
  beschreibung: "Schützen Sie Ihr Haus vor teuren Folgeschäden. In 10 Minuten selbst geprüft."

# ==========================================================================
# 6. VISUELLE PLATZHALTER (BILDER-KEYS)
# ==========================================================================
bilder:
  hero_hintergrund: "/images/hero-maler.webp" # Oder Suchbegriff für Platzhalter
  ueber_uns_team: "maler-team-werkstatt"
  lead_magnet_mockup: "fassaden-checkliste-cover"

# ==========================================================================
# 7. SOCIAL PROOF & FAQ
# ==========================================================================
google_bewertung: 4.9
google_anzahl: 45
jahre_erfahrung: 15
abgeschlossene_projekte: 1200
reaktionszeit_minuten: 60
mitarbeiter: 5

bewertungen:
  - text: "Sehr saubere Arbeit, pünktlich und absolut professionell. Unser Flur sieht fantastisch aus. Gerne wieder!"
    name: "Thomas M."
    ort: "[Stadtteil]"
    sterne: 5
    datum: "2026-04"

faqs:
  - frage: "Räumen Sie vor den Malerarbeiten auch die Möbel beiseite?"
    antwort: "Ja, im Rahmen unseres Komfort-Services übernehmen wir nach Absprache das termingerechte Abdecken und Verschieben schwerer Möbelstücke."

# ==========================================================================
# ERGÄNZUNG AM ENDE DER DATEI: MULTI-LANGUAGE INHALTE
# ==========================================================================
i18n:
  aktiv: true
  standard_sprache: "de"
  verfuegbare_sprachen: ["de", "en"]

# --------------------------------------------------------------------------
# SPRACHSPEZIFISCHE TEXTE (DEUTSCH)
# --------------------------------------------------------------------------
text_de:
  hero:
    headline: "Ihr zuverlässiger Malerbetrieb in {stadt}"
    subline: "Meisterhafte Qualität im Innen- und Außenbereich seit {gruendungsjahr}."
    cta_primary: "Kostenloses Angebot anfordern"
    cta_secondary: "Direkt anrufen"
  lead_magnet:
    titel: "Gratis Fassaden-Checkliste"
    untertitel: "8 Warnsignale, an denen Sie Putz- und Feuchtigkeitsschäden vorab erkennen"
    cta: "Checkliste jetzt anfordern"
    beschreibung: "Schützen Sie Ihr Haus vor teuren Folgeschäden."

# --------------------------------------------------------------------------
# SPRACHSPEZIFISCHE TEXTE (ENGLISCH)
# --------------------------------------------------------------------------
text_en:
  hero:
    headline: "Your reliable painting company in {stadt}"
    subline: "Master-quality interior and exterior services since {gruendungsjahr}."
    cta_primary: "Request a free quote"
    cta_secondary: "Call us directly"
  lead_magnet:
    titel: "Free Facade Checklist"
    untertitel: "8 warning signs to detect plaster and moisture damage early"
    cta: "Download checklist now"
    beschreibung: "Protect your home from costly consequential damage."