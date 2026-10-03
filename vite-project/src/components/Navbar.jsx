import './Navbar.css'

const Navbar = () => {
  return (
    <nav className="navbar">
      <a className="nav-logo" href="#top" aria-label="New Spiderman home">
        NEW <span>SPIDERMAN</span>
      </a>

      <ul className="nav-links">
        <li>New York</li>
        <li>Peter Parker</li>
        <li>The Villains</li>
        <li>The Mission</li>
      </ul>

      <div className="creator-links" aria-label="Sayed Sadiq links">
        <span className="creator-name">SAYED SADIQ45</span>
        <a href="https://www.linkedin.com/in/sayed-sadiq45/" target="_blank" rel="noreferrer">LinkedIn</a>
        <a href="https://github.com/SayedSadiq45" target="_blank" rel="noreferrer">GitHub</a>
      </div>
    </nav>
  )
}

export default Navbar