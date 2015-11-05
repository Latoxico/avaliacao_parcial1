class PostsControllerController < ApplicationController
        
    def index
        @AllPosts = Post.all
    end
    def show
        @Post = Post.find(params[:id])
    end
    def new
        @Post = Post.new
    end
    def create
        @Post = Post.new note_params
        if @Post.save
            redirect_to [:posts]
        else
            render :action => 'new'
        end
    end
    def edit
        @Post = User.find(params[:id])
    end
    def update
        @Post = User.find(params[:id])
        if @Post.update_attributes(note_params)
          redirect_to [:posts]
        else
          render 'edit'
        end
    end
    def destroy
        @Post = Post.find(params[:id])
        @Post.destroy 
        redirect_to [:posts]
    end
    
    private
    def note_params
       params.require(:post).permit(:title, :description)
    end
end
