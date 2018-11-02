.class Lorg/videolan/vlc/VlcVideoView$1;
.super Ljava/lang/Object;
.source "VlcVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/VlcVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/VlcVideoView;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoView;->access$000(Lorg/videolan/vlc/VlcVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoView;->access$000(Lorg/videolan/vlc/VlcVideoView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->access$002(Lorg/videolan/vlc/VlcVideoView;I)I

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoView;->access$100(Lorg/videolan/vlc/VlcVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView$1;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoView;->access$200(Lorg/videolan/vlc/VlcVideoView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_1
    return-void
.end method
