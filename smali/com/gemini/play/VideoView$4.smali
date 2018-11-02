.class Lcom/gemini/play/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 455
    iput-object p1, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1300(Lcom/gemini/play/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    iget-object v0, v0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1400(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1300(Lcom/gemini/play/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VideoView;->access$1400(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView$4;->this$0:Lcom/gemini/play/VideoView;

    invoke-static {v1}, Lcom/gemini/play/VideoView;->access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 467
    :cond_1
    return-void
.end method
