import './Showcase.css'

const Showcase = () => {
  return (
    <section className="showcase" id="mission" aria-label="Original Spiderman page">
      <iframe
        className="showcase-frame"
        src="/spiderman-master.html"
        title="Spider-Man: Unmask the Hero"
      />
    </section>
  )
}

export default Showcase
