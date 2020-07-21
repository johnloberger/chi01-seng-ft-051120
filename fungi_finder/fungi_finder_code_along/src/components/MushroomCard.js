import React from 'react'


function MushroomCard() {

  return(
    <div style={{marginBottom: "25px"}} className="ui column">
      <div className="ui card">

        <div className="image">
          <img style={{width: "100%", height: "250px"}} />
        </div>

        <div className="content">
          <div className="header">
            {/* name */}
          </div>
          <div className="meta text-wrap">
            <small>{/* scientific name */}</small>
          </div>
        </div>

        <div className="extra content">
          <span><i className="icon frown outline" />Toxic</span>
          <span><i className="icon smile outline" />Edible</span>
          <span><i className="icon meh outline" />Not Edible</span>
        </div>

      </div>
  </div>
  )
}

export default MushroomCard
