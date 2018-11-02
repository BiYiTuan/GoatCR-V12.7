.class Lorg/videolan/vlc/VlcVideoPlayer$10;
.super Ljava/lang/Object;
.source "VlcVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/VlcVideoPlayer;->onEventNative(Lorg/videolan/libvlc/MediaPlayer$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/VlcVideoPlayer;

.field final synthetic val$event:Lorg/videolan/libvlc/MediaPlayer$Event;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/VlcVideoPlayer;Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 494
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    iput-object p2, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->val$event:Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$000(Lorg/videolan/vlc/VlcVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$100(Lorg/videolan/vlc/VlcVideoPlayer;)Lorg/videolan/vlc/listener/MediaListenerEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->access$100(Lorg/videolan/vlc/VlcVideoPlayer;)Lorg/videolan/vlc/listener/MediaListenerEvent;

    move-result-object v1

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->val$event:Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v2

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$10;->val$event:Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lorg/videolan/vlc/listener/MediaListenerEvent;->eventBuffing(FZ)V

    .line 499
    :cond_0
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
