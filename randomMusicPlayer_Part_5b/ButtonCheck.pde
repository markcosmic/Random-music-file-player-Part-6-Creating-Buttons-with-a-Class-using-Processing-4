void buttCheck(int _i){
  switch(_i){
    case 0:
      if(song != null && song.isPlaying()){
        song.close();
      }
      fileSelectedYet = started = false;
      nowPlaying = "";
      songsPlayed.clear();
      frameCount = -1;    
      selectInput("Lists must be in the same folder as the music on the list:",
                  "fileSelected", dataFile("..:*.txt"));
      break;
    case 1:
      started = true;
      if(fileSelectedYet){
        loadSong();
      }
  }
}
