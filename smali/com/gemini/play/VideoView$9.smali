.class Lcom/gemini/play/VideoView$9;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 613
    iput-object p1, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 616
    const-string v0, "surfaceChanged++++++++++++++++++++++++++++surfaceChanged"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, p3}, Lcom/gemini/play/VideoView;->access$902(Lcom/gemini/play/VideoView;I)I

    .line 618
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, p4}, Lcom/gemini/play/VideoView;->access$1002(Lcom/gemini/play/VideoView;I)I

    .line 619
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$600(Lcom/gemini/play/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const-string v0, "surfaceChanged2++++++++++++++++++++++++++++surfaceChanged2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 624
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v2}, Lcom/gemini/play/VideoView;->access$1102(Lcom/gemini/play/VideoView;I)I

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 627
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setSurface(Z)V

    .line 633
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 637
    const-string v0, "surfaceCreated++++++++++++++++++++++++++++surfaceCreated"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, p1}, Lcom/gemini/play/VideoView;->access$2002(Lcom/gemini/play/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 639
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$2100(Lcom/gemini/play/VideoView;)V

    .line 640
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 645
    const-string v0, "surfaceDestroyed++++++++++++++++++++++++++++surfaceDestroyed"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$2002(Lcom/gemini/play/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 648
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 653
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 654
    iget-object v0, p0, Lcom/gemini/play/VideoView$9;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$802(Lcom/gemini/play/VideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 656
    :cond_1
    return-void
.end method
