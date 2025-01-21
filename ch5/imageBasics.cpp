#include <iostream>
#include <chrono>

using namespace std;

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

int main(int argc, char **argv) {
  // Read the image in argv[1]
  cv::Mat image;
  image = cv::imread(argv[1]); // call cv::imread to read the image from file

  // check the data is correctly loaded
  if (image.data == nullptr) { 
    cerr << "file" << argv[1] << " not exist." << endl;
    return 0;
  }

  cout << "Image cols: " << image.cols << ", rows: " << image.rows;
  cv::imshow("image", image); 
  cv::waitKey(0);         

  // check image type
  if (image.type() != CV_8UC1 && image.type() != CV_8UC3) {
    // we need grayscale image or RGB image
    cout << "image type incorrect." << endl;
    return 0;
  }

  // check hte pixels
  chrono::steady_clock::time_point t1 = chrono::steady_clock::now();
  for (size_t y = 0; y < image.rows; y++) {
    // use cv::Mat::ptr to get the pointer of each row
    unsigned char *row_ptr = image.ptr<unsigned char>(y);  // pointer to yth row
    for (size_t x = 0; x < image.cols; x++) {
      // read the pixel on (x,y), x=column, y=row
      unsigned char *data_ptr = &row_ptr[x * image.channels()]; //pointer to (x,y)
      /// visit the pixel in each channel
      for (int c = 0; c != image.channels(); c++) {
        unsigned char data = data_ptr[c]; // data为I(x,y)第c个通道的值
      }
    }
  }
  chrono::steady_clock::time_point t2 = chrono::steady_clock::now();
  chrono::duration<double> time_used = chrono::duration_cast < chrono::duration < double >> (t2 - t1);
  cout << "time used: " << time_used.count() << " seconds." << endl;
  
  // copying cv::Mat
  // operator = will not copy the image data, but only the reference
  cv::Mat image_another = image;
  // changing image_another will also change image
  image_another(cv::Rect(0, 0, 100, 100)).setTo(0); 
  cv::imshow("image", image);
  cv::waitKey(0);

  // use cv::Mat::clone to actually clone the data
  cv::Mat image_clone = image.clone();
  image_clone(cv::Rect(0, 0, 100, 100)).setTo(255);
  cv::imshow("image", image);
  cv::imshow("image_clone", image_clone);
  cv::waitKey(0);

  cv::destroyAllWindows();
  return 0;
}
