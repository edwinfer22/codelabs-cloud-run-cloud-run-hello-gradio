 import gradio as gr
   2
   3     def greet(name):
   4         return "Hello " + name + "!"
   5
   6     iface = gr.Interface(fn=greet, inputs="text", outputs="text")
   7
   8     if __name__ == "__main__":
   9         iface.launch(server_name="0.0.0.0", server_port=8080)