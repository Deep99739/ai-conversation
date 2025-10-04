# EnglishPractice.ai 🎯

A comprehensive English practice platform where college students can engage in real-time AI conversations across various scenarios and receive detailed automated feedback to track their progress.

## 🌟 Features

### 🎭 Practice Modes
- **Real-time Conversation**: Voice input → AI conversation → AI feedback
- **Scenario-based Learning**: Choose from 20+ real-life scenarios
- **2-3 minute Practice Sessions**: Optimal duration for focused practice

### 📊 AI Feedback Engine
At the end of each session, receive detailed analysis on:
- ✅ **Grammar & Sentence Structure** – errors + corrected versions
- ✅ **Vocabulary Suggestions** – better word choices and alternatives  
- ✅ **Filler Words Count** – track "uh", "like", "you know" usage
- ✅ **Tone & Energy** – confidence level and engagement analysis
- ✅ **Pronunciation** – accent feedback and mispronunciation detection
- ✅ **Overall Fluency Score** – comprehensive 0-10 rating

### 🎯 Scenario Categories
- **Job Interviews** (Software Developer, Marketing Manager, Customer Service)
- **Presentations** (Class Projects, Business Proposals, Book Reports)  
- **Casual Conversations** (Meeting Classmates, Coffee Shop, Party Networking)
- **Customer Service** (Restaurant Complaints, Tech Support)
- **Academic Discussions** (Philosophy Debates, Study Groups)
- **Travel** (Airport Check-in, Hotel Reservations)
- **Business Meetings** (Team Updates, Client Presentations)
- **Social Events** (Weddings, Graduations)

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ (recommended: 20+)
- Gemini API key (get from [Google AI Studio](https://aistudio.google.com/app/apikey))

### Installation

1. **Clone and setup frontend**
   ```bash
   cd english-practice-platform
   npm install
   ```

2. **Setup backend**
   ```bash
   cd server
   npm install
   ```

3. **Configure API Keys**
   ```bash
   # In the root directory (frontend)
   cp .env.example .env
   # Edit .env and set your backend URL
   
   # In the server directory (backend)
   cp .env.example .env
   # Edit .env and add your Gemini API key
   ```

4. **Start Development Servers**
   ```bash
   # Terminal 1: Start backend server
   cd server
   npm start
   
   # Terminal 2: Start frontend development server
   npm run dev
   ```

5. **Open in Browser**
   Visit `http://localhost:5173`

## 🔧 Configuration

### Gemini API Setup
1. Get your API key from [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Copy `server/.env.example` to `server/.env`
3. Replace `YOUR_GEMINI_API_KEY_HERE` with your actual API key

### Environment Variables

#### Frontend (.env)
```env
VITE_BACKEND_URL=http://localhost:3001/api
```

#### Backend (server/.env)
```env
PORT=3001
GEMINI_API_KEY=your_gemini_api_key_here
ALLOWED_ORIGINS=http://localhost:5173
```

### Browser Requirements
- **Microphone Access**: Required for voice recording
- **Modern Browser**: Chrome, Firefox, Safari, Edge (latest versions)
- **HTTPS**: Speech recognition requires secure context (dev server uses HTTP but works locally)

## 🎮 How to Use

### 1. Choose Your Scenario
- Browse 20+ real-life scenarios
- Filter by category, difficulty, or search
- Select based on your interests and skill level

### 2. Start Practice Session
- Click "Start Practice" on any scenario
- Allow microphone access when prompted
- Read the scenario context and begin speaking

### 3. Interactive Conversation
- Speak naturally about the scenario topic
- AI responds contextually to continue the conversation
- Practice for 2-3 minutes for optimal results

### 4. Receive Detailed Feedback
- Comprehensive analysis of your performance
- Specific suggestions for improvement
- Track progress across multiple categories
- Review conversation history

## 🏗️ Technical Architecture

### Frontend Stack
- **React 18** with TypeScript
- **Material-UI (MUI)** for modern, accessible components
- **Vite** for fast development and building

### Backend Stack
- **Node.js** with Express
- **Gemini API** for AI conversation and feedback
- **CORS** for secure cross-origin requests

### Core Features
- **Speech Recognition API** - Browser-native speech-to-text
- **Web Audio API** - Real-time audio recording and analysis
- **Gemini Integration** - Conversation responses and feedback analysis

### AI Services
- **Gemini 2.5 Flash** - Contextual conversation responses and feedback analysis
- **Browser Speech Recognition** - Real-time speech-to-text
- **Real-time Processing** - Immediate feedback and suggestions

## 📱 Browser Compatibility

| Feature | Chrome | Firefox | Safari | Edge |
|---------|--------|---------|--------|------|
| Speech Recognition | ✅ | ✅ | ✅ | ✅ |
| Audio Recording | ✅ | ✅ | ✅ | ✅ |
| Microphone Access | ✅ | ✅ | ✅ | ✅ |

## 🔒 Privacy & Security

- **Local Processing**: Audio is processed client-side when possible
- **Secure Transmission**: All API calls use HTTPS
- **No Audio Storage**: Recordings are temporary and not saved
- **API Key Security**: Keys are stored server-side, never exposed to frontend

## 🚀 Production Deployment

### Environment Variables
```env
# Frontend
VITE_BACKEND_URL=https://your-backend-url.com/api

# Backend
PORT=3001
GEMINI_API_KEY=your_production_api_key
ALLOWED_ORIGINS=https://your-frontend-url.com
```

### Deploy Backend
Deploy the `server` directory to your preferred hosting platform:
- **Vercel** (using Vercel Functions)
- **Render**
- **Railway**
- **Heroku**
- **Any Node.js hosting**

### Deploy Frontend
```bash
npm run build
```

Then deploy the `dist/` folder to:
- **Vercel**: `vercel deploy`
- **Netlify**: Connect GitHub repo
- **AWS S3**: Upload `dist/` folder
- **Any Static Host**: Serve the `dist/` folder

### Security Recommendations
- Always keep API keys server-side
- Implement rate limiting on backend
- Add proper CORS configuration
- Monitor API usage and costs

## 🎯 Skill Development Focus

### For Beginners
- **Basic Conversations**: Meeting new people, simple interactions
- **Clear Speech**: Focus on pronunciation and clarity
- **Vocabulary Building**: Common words and phrases

### For Intermediate
- **Professional Scenarios**: Job interviews, presentations
- **Complex Grammar**: Conditional sentences, advanced tenses
- **Fluency Development**: Reducing hesitation and filler words

### For Advanced
- **Nuanced Discussions**: Philosophy, business strategy
- **Accent Refinement**: Fine-tuning pronunciation
- **Professional Communication**: Client meetings, negotiations

## 📈 Progress Tracking

The platform provides detailed analytics on:
- **Session History**: Track all practice sessions
- **Skill Progression**: Monitor improvement over time
- **Weak Areas**: Identify areas needing focus
- **Achievement System**: Unlock badges and milestones

## 🛠️ Development

### Available Scripts
- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

### Project Structure
```
.
├── src/                # Frontend source code
│   ├── components/     # React components
│   ├── hooks/          # Custom React hooks
│   ├── services/       # API services
│   ├── data/           # Scenario data
│   ├── types/          # TypeScript type definitions
│   └── utils/          # Utility functions
└── server/             # Backend server code
    ├── server.js       # Main server file
    └── package.json    # Backend dependencies
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bugs and feature requests.

## 📄 License

This project is available for educational and personal use.

---

**Happy Learning! 🎉**

Practice makes perfect, and with AI-powered feedback, you'll improve faster than ever before.