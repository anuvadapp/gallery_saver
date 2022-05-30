
const List<String> videoFormats = [
  '.mp4',
  '.mov',
  '.avi',
  '.wmv',
  '.3gp',
  '.3gpp',
  '.mkv',
  '.flv',
  '.m4v'
];
const List<String> imageFormats = [
  '.jpeg',
  '.png',
  '.jpg',
  '.gif',
  '.webp',
  '.tif',
  '.heic'
];

const List<String> filesFormat = [
  '.txt',
  '.srt',
  '.vtt',
  '.dfxp',
  '.sbv'
];

const http = 'http';

bool isLocalFilePath(String path) {
  Uri uri = Uri.parse(path);
  return !uri.scheme.contains(http);
}

bool isVideo(String path) {
  bool output = false;
  videoFormats.forEach((videoFormat) {
    if (path.toLowerCase().contains(videoFormat)) output = true;
  });
  return output;
}

bool isImage(String path) {
  bool output = false;
  imageFormats.forEach((imageFormat) {
    if (path.toLowerCase().contains(imageFormat)) output = true;
  });
  return output;
}

bool isFile(String path) {
  bool output = false;
  filesFormat.forEach((fileFormat) {
    if (path.toLowerCase().contains(fileFormat)) output = true;
  });
  return output;
}
