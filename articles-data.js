/**
 * AI Tech Journal - Articles Registry & Central Data Source
 * Powers dynamic features: Live Search, Related Articles, Category Filtering
 */

const ARTICLES_DATA = [
  {
    id: "agentic-ai-autonomous-workflows-2025",
    title: "Agentic AI in 2025: From Conversational Chatbots to Autonomous Enterprise Workflows",
    slug: "agentic-ai-autonomous-workflows-2025.html",
    category: "Artificial Intelligence",
    categorySlug: "artificial-intelligence.html",
    categoryBadge: "badge-ai",
    author: {
      name: "Dr. Elena Rostova",
      role: "Lead AI Systems Editor",
      avatar: "author-elena.jpg"
    },
    date: "November 10, 2025",
    isoDate: "2025-11-10",
    readTime: "7 min read",
    image: "agentic-ai.jpg",
    excerpt: "Autonomous multi-agent systems are shifting enterprise software from passive assistants to self-orchestrating task forces capable of complex software engineering and strategic planning.",
    featured: true,
    trending: 1,
    tags: ["Autonomous Agents", "LLMs", "Enterprise AI", "Multi-Agent Systems"]
  },
  {
    id: "quantum-computing-breakthrough-error-correction",
    title: "Fault-Tolerant Quantum Computing Crosses the Threshold with Logical Qubit Milestone",
    slug: "quantum-computing-breakthrough-error-correction.html",
    category: "Future Technology",
    categorySlug: "future-technology.html",
    categoryBadge: "badge-future",
    author: {
      name: "Marcus Vance",
      role: "Senior Quantum & Physics Reporter",
      avatar: "author-marcus.jpg"
    },
    date: "November 9, 2025",
    isoDate: "2025-11-09",
    readTime: "9 min read",
    image: "quantum-computing.jpg",
    excerpt: "A landmark demonstration in neutral-atom architecture suppresses error rates by three orders of magnitude, bringing cryptographically relevant quantum machines years closer.",
    featured: true,
    trending: 2,
    tags: ["Quantum Computing", "Qubits", "Physics", "Cryptography"]
  },
  {
    id: "next-gen-local-llms-open-source-revolution",
    title: "The Local LLM Revolution: Running 70B Reasoning Models on Consumer Hardware",
    slug: "next-gen-local-llms-open-source-revolution.html",
    category: "AI Tools",
    categorySlug: "ai-tools.html",
    categoryBadge: "badge-tools",
    author: {
      name: "Sophia Chen",
      role: "Open Source AI Specialist",
      avatar: "author-sophia.jpg"
    },
    date: "November 8, 2025",
    isoDate: "2025-11-08",
    readTime: "6 min read",
    image: "local-llms.jpg",
    excerpt: "Breakthrough 2-bit quantization schemes and unified memory architectures allow high-tier reasoning models to run privately on everyday workstations without cloud subscriptions.",
    featured: true,
    trending: 3,
    tags: ["Local LLMs", "Open Source", "Quantization", "Privacy"]
  },
  {
    id: "zero-trust-security-in-ai-driven-enterprises",
    title: "Zero-Trust Security Architectures Must Evolve to Contain Autonomous AI Agents",
    slug: "zero-trust-security-in-ai-driven-enterprises.html",
    category: "Cybersecurity",
    categorySlug: "cybersecurity.html",
    categoryBadge: "badge-cybersecurity",
    author: {
      name: "David K. Meyer",
      role: "Cyber Defense & Threat Intelligence Editor",
      avatar: "author-david.jpg"
    },
    date: "November 7, 2025",
    isoDate: "2025-11-07",
    readTime: "8 min read",
    image: "cybersecurity-zero-trust.jpg",
    excerpt: "When autonomous agents execute code and access private data lakes, traditional identity perimeters collapse. Here is how modern CISOs are enforcing machine identity boundaries.",
    featured: false,
    trending: 4,
    tags: ["Cybersecurity", "Zero Trust", "Agent Security", "InfoSec"]
  },
  {
    id: "silicon-valley-ai-venture-funding-shifts",
    title: "Venture Capital Pivot: Investors Abandon Wrapper Startups to Back Vertical AI Foundry Infrastructure",
    slug: "silicon-valley-ai-venture-funding-shifts.html",
    category: "Business & Startups",
    categorySlug: "business-startups.html",
    categoryBadge: "badge-business",
    author: {
      name: "Dr. Elena Rostova",
      role: "Lead AI Systems Editor",
      avatar: "author-elena.jpg"
    },
    date: "November 6, 2025",
    isoDate: "2025-11-06",
    readTime: "5 min read",
    image: "venture-funding.jpg",
    excerpt: "As frontier model creators swallow commoditized features, Series A check sizes are flowing exclusively into deep vertical solutions with proprietary data moats.",
    featured: false,
    trending: 5,
    tags: ["Venture Capital", "Startups", "AI Economics", "Funding"]
  },
  {
    id: "webassembly-and-edge-ai-redefining-software",
    title: "WebAssembly and Edge AI: Why the Future of Web Applications is Zero-Latency Local Inference",
    slug: "webassembly-and-edge-ai-redefining-software.html",
    category: "Software",
    categorySlug: "software.html",
    categoryBadge: "badge-software",
    author: {
      name: "Sophia Chen",
      role: "Open Source AI Specialist",
      avatar: "author-sophia.jpg"
    },
    date: "November 5, 2025",
    isoDate: "2025-11-05",
    readTime: "7 min read",
    image: "webassembly-edge.jpg",
    excerpt: "Wasm combined with WebGPU allows client browsers to execute transformer neural networks natively, eliminating cloud API costs and protecting user data.",
    featured: false,
    trending: 0,
    tags: ["WebAssembly", "WebGPU", "Edge AI", "Web Development"]
  },
  {
    id: "neural-interface-wearables-spatial-computing",
    title: "Neural-Interface Wearables: Non-Invasive EMG Sensors Replace Traditional Spatial Computing Gestures",
    slug: "neural-interface-wearables-spatial-computing.html",
    category: "Gadgets",
    categorySlug: "gadgets.html",
    categoryBadge: "badge-gadgets",
    author: {
      name: "Marcus Vance",
      role: "Senior Quantum & Physics Reporter",
      avatar: "author-marcus.jpg"
    },
    date: "November 4, 2025",
    isoDate: "2025-11-04",
    readTime: "6 min read",
    image: "neural-wearables.jpg",
    excerpt: "Sub-millimeter electromyography wristbands can detect neuromuscular intent before hands even twitch, unlocking invisible control for next-generation smart glasses.",
    featured: false,
    trending: 0,
    tags: ["Wearables", "EMG", "Spatial Computing", "Human-Computer Interaction"]
  },
  {
    id: "clean-energy-fusion-ai-data-center-power",
    title: "Nuclear Fusion and Next-Gen Geothermal: The Race to Power Gigawatt-Scale AI Hyperscale Clusters",
    slug: "clean-energy-fusion-ai-data-center-power.html",
    category: "Technology",
    categorySlug: "technology.html",
    categoryBadge: "badge-tech",
    author: {
      name: "David K. Meyer",
      role: "Cyber Defense & Threat Intelligence Editor",
      avatar: "author-david.jpg"
    },
    date: "November 3, 2025",
    isoDate: "2025-11-03",
    readTime: "8 min read",
    image: "clean-fusion-datacenter.jpg",
    excerpt: "With AI data centers projected to consume over 8% of total US electricity by 2028, cloud titans are signing direct power-purchase agreements with advanced nuclear developers.",
    featured: false,
    trending: 0,
    tags: ["Clean Energy", "Data Centers", "Nuclear Power", "Infrastructure"]
  },
  {
    id: "synthetic-data-breakthroughs-model-training",
    title: "Synthetic Data Surpasses Web Scraping as Frontier AI Models Run Out of Human-Generated Text",
    slug: "synthetic-data-breakthroughs-model-training.html",
    category: "Artificial Intelligence",
    categorySlug: "artificial-intelligence.html",
    categoryBadge: "badge-ai",
    author: {
      name: "Dr. Elena Rostova",
      role: "Lead AI Systems Editor",
      avatar: "author-elena.jpg"
    },
    date: "November 2, 2025",
    isoDate: "2025-11-02",
    readTime: "7 min read",
    image: "synthetic-data.jpg",
    excerpt: "With public internet corpora exhausted, self-correcting Monte Carlo tree search and synthetic reasoning chains have become the primary rocket fuel for frontier AI training.",
    featured: false,
    trending: 0,
    tags: ["Synthetic Data", "Model Training", "Data Scarcity", "Deep Learning"]
  },
  {
    id: "ai-code-assistants-future-of-software-engineering",
    title: "The Senior Engineer of 2026: Navigating Software Development in an Era of 80% Automated Code Generation",
    slug: "ai-code-assistants-future-of-software-engineering.html",
    category: "Software",
    categorySlug: "software.html",
    categoryBadge: "badge-software",
    author: {
      name: "Sophia Chen",
      role: "Open Source AI Specialist",
      avatar: "author-sophia.jpg"
    },
    date: "November 1, 2025",
    isoDate: "2025-11-01",
    readTime: "6 min read",
    image: "ai-code-assistants.jpg",
    excerpt: "Code generation tools have fundamentally shifted the engineering discipline from syntax production to architecture validation, formal verification, and system telemetry.",
    featured: false,
    trending: 0,
    tags: ["Software Engineering", "AI Coding", "Developer Tools", "DevOps"]
  },
  {
    id: "biometric-defenses-deepfake-identity-theft",
    title: "Combatting Real-Time Voice Cloning: The Cryptographic Watermarking Standards Defending Financial Networks",
    slug: "biometric-defenses-deepfake-identity-theft.html",
    category: "Cybersecurity",
    categorySlug: "cybersecurity.html",
    categoryBadge: "badge-cybersecurity",
    author: {
      name: "David K. Meyer",
      role: "Cyber Defense & Threat Intelligence Editor",
      avatar: "author-david.jpg"
    },
    date: "October 31, 2025",
    isoDate: "2025-10-31",
    readTime: "8 min read",
    image: "biometric-defenses.jpg",
    excerpt: "Financial institutions deploy hardware-attested C2PA audio watermarks and liveness latency challenges to defeat ultra-realistic deepfake wire fraud attempts.",
    featured: false,
    trending: 0,
    tags: ["Deepfakes", "Biometrics", "Voice Cloning", "Financial Security"]
  },
  {
    id: "humanoid-robotics-manufacturing-automation",
    title: "Humanoid Robots Enter Commercial Automotive Assembly Lines for Precision Production",
    slug: "humanoid-robotics-manufacturing-automation.html",
    category: "Future Technology",
    categorySlug: "future-technology.html",
    categoryBadge: "badge-future",
    author: {
      name: "Marcus Vance",
      role: "Senior Quantum & Physics Reporter",
      avatar: "author-marcus.jpg"
    },
    date: "October 30, 2025",
    isoDate: "2025-10-30",
    readTime: "7 min read",
    image: "humanoid-robotics.jpg",
    excerpt: "End-to-end vision-action neural models enable bipedal robots to handle delicate wiring harnesses and irregular components that previously baffled rigid robotic arms.",
    featured: false,
    trending: 0,
    tags: ["Humanoid Robotics", "Automation", "Manufacturing", "Robotics"]
  },
  {
    id: "multimodal-reasoning-vision-language-models",
    title: "Spatial Understanding in Multimodal Models: How Next-Gen VLMs Perceive 3D Physical Reality",
    slug: "multimodal-reasoning-vision-language-models.html",
    category: "Artificial Intelligence",
    categorySlug: "artificial-intelligence.html",
    categoryBadge: "badge-ai",
    author: {
      name: "Dr. Elena Rostova",
      role: "Lead AI Systems Editor",
      avatar: "author-elena.jpg"
    },
    date: "October 29, 2025",
    isoDate: "2025-10-29",
    readTime: "7 min read",
    image: "multimodal-vision.jpg",
    excerpt: "New native multimodal tokenizers move beyond flat 2D pixels to model depth, volumetric geometry, and physical collision dynamics in real-time video streams.",
    featured: false,
    trending: 0,
    tags: ["Multimodal AI", "Vision-Language", "Computer Vision", "3D AI"]
  },
  {
    id: "neuromorphic-chips-brain-inspired-computing",
    title: "Spiking Neural Networks on Neuromorphic Silicon Deliver 100x Efficiency in Edge Audio and Vision",
    slug: "neuromorphic-chips-brain-inspired-computing.html",
    category: "Technology",
    categorySlug: "technology.html",
    categoryBadge: "badge-tech",
    author: {
      name: "Marcus Vance",
      role: "Senior Quantum & Physics Reporter",
      avatar: "author-marcus.jpg"
    },
    date: "October 28, 2025",
    isoDate: "2025-10-28",
    readTime: "6 min read",
    image: "neuromorphic-chips.jpg",
    excerpt: "By processing information only when an event spike occurs, neuromorphic processors enable micro-watt AI perception for always-on sensors and satellites.",
    featured: false,
    trending: 0,
    tags: ["Neuromorphic Computing", "Semiconductors", "Spiking Neural Networks", "Hardware"]
  }
];

// Tools Data Showcase
const POPULAR_TOOLS = [
  {
    name: "Cursor IDE",
    category: "Developer Tool",
    description: "AI-first code editor built for rapid pair programming, codebase indexing, and multi-file code transformations.",
    tag: "Productivity",
    icon: "💻"
  },
  {
    name: "Ollama",
    category: "Local LLM Runner",
    description: "Get up and running with large language models locally. Simple CLI for Llama 3, Mistral, and DeepSeek.",
    tag: "Open Source",
    icon: "🦙"
  },
  {
    name: "Midjourney v6",
    category: "Generative Art",
    description: "State-of-the-art photorealistic image generation with coherent text rendering and fine camera controls.",
    tag: "Creative",
    icon: "🎨"
  },
  {
    name: "Anthropic Claude 3.5",
    category: "Frontier Foundation Model",
    description: "Industry-leading reasoning and vision benchmark performance with artifact workspace execution.",
    tag: "Enterprise",
    icon: "⚡"
  }
];

if (typeof module !== 'undefined' && module.exports) {
  module.exports = { ARTICLES_DATA, POPULAR_TOOLS };
}
