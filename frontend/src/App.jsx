import { useState, useEffect } from 'react';
import './App.css';
import Modal from './assets/Modal';

function App() {
  const [characters, setCharacters] = useState([]);
  const [characterDetail, setCharacterDetail] = useState({});
  const [showCharacters, setShowCharacters] = useState(false);
  const [showCharacterDetail, setShowCharacterDetail] = useState(null);

  useEffect(() => {
    fetch('http://localhost:8000/api/character')
      .then(res => res.json())
      .then(data => setCharacters(data))
      .catch(err => console.log(err));
  }, []);

  const handleCharacterClick = (id) => {
    fetch(`http://localhost:8000/api/character/id/${id}`)
      .then(res => res.json())
      .then(data => {
        setCharacterDetail(data);
        setShowCharacterDetail(id);
      })
      .catch(err => console.log(err));
  };

  const handleCloseClick = () => {
    setShowCharacterDetail(null);
  }

  return (
    <>
      <div className='toolbar'>
        <button onClick={() => setShowCharacters(true)}>Characters</button>
        <Modal show={showCharacters} onClose={() => setShowCharacters(false)}>
          {characters.map(character => (
            <ul key={character.name} className='list'>
              <button onClick={() => handleCharacterClick(character.id)}>
                {character.name}
              </button>
              {showCharacterDetail === character.id && (
                <div className='detail-list'>
                  <ul aria-label='Detail' className='list'>
                    <li>Tier: {characterDetail.tier}</li>
                    <li>Boss: {characterDetail.boss}</li>
                    <li>Flower: {characterDetail.flower}</li>
                    <li>Material Farm: {characterDetail.materialFarm}</li>
                    <li>Material World: {characterDetail.materialWorld}</li>
                    <li>Weekly Boss: {characterDetail.weaklyBoss}</li>
                  </ul>
                  <button className='close-button' onClick={handleCloseClick}>Close</button>
                </div>
              )}
            </ul>
          ))}
        </Modal>
      </div>
    </>
  );
}

export default App;