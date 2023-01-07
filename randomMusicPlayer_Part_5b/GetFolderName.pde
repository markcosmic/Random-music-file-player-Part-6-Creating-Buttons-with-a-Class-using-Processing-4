void getFolderName(){
  int fileNameIndex = 0;
  int dotIndex = 0;
  for(int i = 0; i < fileName.length(); i++){
    if(fileName.charAt(i) == '\\'){
      fileNameIndex=i;
    }
    if(fileName.charAt(i) == '.'){
      dotIndex=i;
    }
   }
   folderName = fileName.substring(0,fileNameIndex + 1);
   listName = fileName.substring(fileNameIndex + 1, dotIndex);
}
