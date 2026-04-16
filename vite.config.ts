'use strict';

// Import the required plugins
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import tailwindcss from 'tailwindcss';
import jsxLocPlugin from 'vite-plugin-jsx-loc';

// Export the config
export default defineConfig({
  plugins: [
    react(),
    tailwindcss(),
    jsxLocPlugin()
  ],
});
