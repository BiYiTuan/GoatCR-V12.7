.class Lorg/videolan/vlc/VlcVideoPlayer$6;
.super Ljava/lang/Object;
.source "VlcVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/VlcVideoPlayer;->reStartPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/VlcVideoPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/VlcVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer$6;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$6;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$000(Lorg/videolan/vlc/VlcVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$6;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$100(Lorg/videolan/vlc/VlcVideoPlayer;)Lorg/videolan/vlc/listener/MediaListenerEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$6;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$100(Lorg/videolan/vlc/VlcVideoPlayer;)Lorg/videolan/vlc/listener/MediaListenerEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer$6;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$400(Lorg/videolan/vlc/VlcVideoPlayer;)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/videolan/vlc/listener/MediaListenerEvent;->eventStop(Z)V

    .line 351
    :cond_0
    return-void
.end method
