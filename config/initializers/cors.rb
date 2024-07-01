Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "https://bug-zilla.netlify.app", "https://bug-zill.netlify.app", "http://localhost:5173", "https://bgzz.netlify.app", "http://localhost:5174",
  
      resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        expose: ["Authorization"]
    end
  end
  