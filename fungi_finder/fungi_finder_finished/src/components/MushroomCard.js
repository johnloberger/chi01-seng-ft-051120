import React from 'react'


function MushroomCard(props) {

  const renderEdibility = () => {
    if (props.mushroom.edibility === "edible"){
      return <span><i className="icon smile outline" />Edible</span>
    }
    if (props.mushroom.edibility === "not edible"){
      return <span><i className="icon meh outline" />Not Edible</span>
    }
    if (props.mushroom.edibility === "toxic"){
      return <span><i className="icon frown outline" />Toxic</span>
    }
  }

  return(
    <div style={{marginBottom: "25px"}} className="ui column">
      <div className="ui card" onClick={() => props.clickHandler(props.mushroom)}>

        <div className="image">
          <img style={{width: "100%",height: "250px"}} src={props.mushroom.image_url}/>
        </div>

        <div className="content">
          <div className="header">
            {props.mushroom.name}
          </div>
          <div className="meta text-wrap">
            <small>{props.mushroom.scientific_name}</small>
          </div>
        </div>

        <div className="extra content">
          {renderEdibility()}
        </div>

      </div>
  </div>
  )
}

export default MushroomCard
