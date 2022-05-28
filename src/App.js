import "./App.css";
import React, { Component } from "react";

class App extends Component {
  state = {
    selectedFile: null,
    fileUploadedSuccessfully: false,
  };

  onFileChange = (event) => {
    this.setState({ selectedFile: event.target.files[0] });
  };

  onFileUpload = () => {
    const formData = new FormData();
    formData.append(
      "file",
      this.state.selectedFile,
      this.state.selectedFile.name
    );
    // call api to upload file
    console.log(formData);
    this.setState({ selectedFile: null });
    this.setState({ fileUploadedSuccessfully: true });
  };

  // display file details if theres a file already uploaded

  fileData = () => {
    if (this.state.selectedFile) {
      return (
        <div>
          <h3>File Details:</h3>
          <p>File name: {this.state.selectedFile.name}</p>
          <p>File type: {this.state.selectedFile.type}</p>
          <p>
            Last modified:{" "}
            {this.state.selectedFile.lastModifiedDate.toDateString()}
          </p>
        </div>
      );
    } else if (this.state.fileUploadedSuccessfully) {
      return (
        <div>
          <h4>Your file has been successfully uploaded</h4>
        </div>
      );
    } else {
      return (
        <div>
          <h4>Choose a file and press Upload</h4>
        </div>
      );
    }
  };
  render() {
    return (
      <div className="App">
        <h2>File Upload System</h2>
        <h4>Built with React and Serverless API!</h4>
        <div>
          <input type="file" onChange={this.onFileChange} />
          <button onClick={this.onFileUpload}>Upload</button>
        </div>
      </div>
    );
  }
}

export default App;
