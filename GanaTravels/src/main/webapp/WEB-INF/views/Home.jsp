<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GanaTravels | The Art of the Journey</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #fff;
            color: #2d3436;
            overflow-x: hidden;
        }

        /* Top Navigation */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 8%;
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid #eee;
            transition: 0.3s;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: #0984e3;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .logo span {
            color: #2d3436;
        }

        /* Enhanced Auth Buttons */
        .auth-nav {
            display: flex;
            gap: 25px;
            align-items: center;
        }

        .btn-login {
            text-decoration: none;
            color: #2d3436;
            font-weight: 600;
            font-size: 0.9rem;
            transition: 0.3s;
            position: relative;
        }

        .btn-login::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background-color: #0984e3;
            transition: 0.3s;
        }

        .btn-login:hover {
            color: #0984e3;
        }

        .btn-login:hover::after {
            width: 100%;
        }

        .btn-signup {
            text-decoration: none;
            background: #0984e3;
            color: white;
            padding: 12px 28px;
            border-radius: 50px; /* Modern Rounded style */
            font-weight: 600;
            font-size: 0.9rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(9, 132, 227, 0.3);
            border: 2px solid #0984e3;
        }

        .btn-signup:hover {
            background: transparent;
            color: #0984e3;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(9, 132, 227, 0.2);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)), 
                        url('https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&q=80&w=2000');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }

        .hero-content h1 {
            font-family: 'Playfair Display', serif;
            font-size: 5rem;
            margin-bottom: 20px;
            animation: fadeIn 1.5s ease-out;
        }

        .hero-content p {
            font-size: 1.5rem;
            max-width: 700px;
            margin: 0 auto;
            font-weight: 300;
        }

        /* About Section */
        .about-section {
            padding: 100px 8%;
            display: flex;
            align-items: center;
            gap: 60px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .about-text h2 {
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            margin-bottom: 20px;
            color: #0984e3;
        }

        .about-text p {
            font-size: 1.1rem;
            line-height: 1.8;
            color: #636e72;
            margin-bottom: 30px;
        }

        .about-image img {
            width: 100%;
            border-radius: 20px;
            box-shadow: 20px 20px 0px #0984e3;
        }

        /* Experience Section */
        .experience {
            background: #f1f2f6;
            padding: 100px 8%;
            text-align: center;
        }

        .experience h2 {
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            margin-bottom: 50px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
        }

        .grid-item {
            background: white;
            padding: 40px;
            border-radius: 15px;
            transition: 0.3s;
        }

        .grid-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        /* Expanded Image Row */
        .image-row {
            display: flex;
            height: 450px;
            width: 100%;
            overflow: hidden;
        }

        .img-col {
            flex: 1;
            background-size: cover;
            background-position: center;
            filter: grayscale(60%);
            transition: all 0.7s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            cursor: pointer;
        }

        .img-col:hover {
            flex: 3;
            filter: grayscale(0%);
        }

        footer {
            padding: 60px 8%;
            background: #2d3436;
            color: white;
            text-align: center;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero-content h1 { font-size: 2.8rem; }
            .about-section { flex-direction: column; padding: 60px 5%; }
            .grid { grid-template-columns: 1fr; }
            .image-row { flex-direction: column; height: auto; }
            .img-col { height: 250px; flex: none; }
            .img-col:hover { flex: none; }
        }
    </style>
</head>
<body>

    <header>
        <div class="logo">Gana<span>Travels</span></div>
        <div class="auth-nav">
            <a href="login" class="btn-login">Login</a>
            <a href="singup" class="btn-signup">SingUp</a>
        </div>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h1>Redefining the Road</h1>
            <p>At GanaTravels, we believe the journey is just as important as the destination. Discover a new standard of travel.</p>
        </div>
    </section>

    <section class="about-section">
        <div class="about-text">
            <h2>Our Story</h2>
            <p>Founded on the principle of connection, GanaTravels started with a single bus and a grand vision: to bridge the gap between cities with elegance and comfort.</p>
            <p>From the hum of the engine to the scenic views outside your window, every detail is curated for peace of mind.</p>
        </div>
        <div class="about-image">
            <img src="https://images.unsplash.com/photo-1570125909232-eb263c188f7e?auto=format&fit=crop&q=80&w=800" alt="GanaTravels Premium Bus">
        </div>
    </section>

    <section class="experience">
        <h2>The Gana Experience</h2>
        <div class="grid">
            <div class="grid-item">
                <h3>Unmatched Comfort</h3>
                <p>Ergonomic seating designed for long-haul relaxation, ensuring you arrive refreshed.</p>
            </div>
            <div class="grid-item">
                <h3>Safety First</h3>
                <p>Our drivers are highly trained professionals, and our fleet undergoes rigorous safety checks daily.</p>
            </div>
            <div class="grid-item">
                <h3>Scenic Routes</h3>
                <p>We choose paths that showcase the beauty of the landscape, turning travel into exploration.</p>
            </div>
        </div>
    </section>

    <div class="image-row">
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1517733925043-473a8855d401?auto=format&fit=crop&q=80&w=800');"></div>
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&q=80&w=800');"></div>
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&q=80&w=800');"></div>
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&q=80&w=800');"></div>
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1503220317375-aaad61436b1b?auto=format&fit=crop&q=80&w=800');"></div>
        <div class="img-col" style="background-image: url('https://images.unsplash.com/photo-1433086466390-f72583d71e9c?auto=format&fit=crop&q=80&w=800');"></div>
    </div>

    <footer>
        <p>&copy; 2026 GanaTravels. Exploring the horizon since day one.</p>
    </footer>

</body>
</html>