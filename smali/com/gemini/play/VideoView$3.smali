.class Lcom/gemini/play/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 402
    iput-object p1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v2}, Lcom/gemini/play/VideoView;->access$602(Lcom/gemini/play/VideoView;Z)Z

    .line 406
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$700(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$700(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$302(Lcom/gemini/play/VideoView;I)I

    .line 413
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$402(Lcom/gemini/play/VideoView;I)I

    .line 414
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$300(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$400(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 416
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$300(Lcom/gemini/play/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v2}, Lcom/gemini/play/VideoView;->access$400(Lcom/gemini/play/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 417
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$900(Lcom/gemini/play/VideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$300(Lcom/gemini/play/VideoView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1000(Lcom/gemini/play/VideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$400(Lcom/gemini/play/VideoView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 421
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 423
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v3}, Lcom/gemini/play/VideoView;->access$1102(Lcom/gemini/play/VideoView;I)I

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1200(Lcom/gemini/play/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 427
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v3}, Lcom/gemini/play/VideoView;->access$1202(Lcom/gemini/play/VideoView;Z)Z

    .line 428
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 451
    :cond_3
    :goto_0
    return-void

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    .line 432
    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 442
    :cond_6
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$1100(Lcom/gemini/play/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 444
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v3}, Lcom/gemini/play/VideoView;->access$1102(Lcom/gemini/play/VideoView;I)I

    .line 446
    :cond_7
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1200(Lcom/gemini/play/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 448
    iget-object v0, p0, Lcom/gemini/play/VideoView$3;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0, v3}, Lcom/gemini/play/VideoView;->access$1202(Lcom/gemini/play/VideoView;Z)Z

    goto :goto_0
.end method
