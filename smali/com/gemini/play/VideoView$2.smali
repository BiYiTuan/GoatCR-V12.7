.class Lcom/gemini/play/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VideoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$302(Lcom/gemini/play/VideoView;I)I

    .line 390
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$402(Lcom/gemini/play/VideoView;I)I

    .line 392
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$500(Lcom/gemini/play/VideoView;)Lcom/gemini/play/VideoView$MySizeChangeLinstener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$500(Lcom/gemini/play/VideoView;)Lcom/gemini/play/VideoView$MySizeChangeLinstener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gemini/play/VideoView$MySizeChangeLinstener;->doMyThings()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$300(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$400(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$300(Lcom/gemini/play/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/VideoView$2;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v2}, Lcom/gemini/play/VideoView;->access$400(Lcom/gemini/play/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 399
    :cond_1
    return-void
.end method
