.class Lorg/videolan/vlc/VlcVideoPlayer$3;
.super Ljava/lang/Object;
.source "VlcVideoPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/VlcVideoPlayer;->opendVideo()V
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
    .line 230
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer$3;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 1
    .param p1, "event"    # Lorg/videolan/libvlc/MediaPlayer$Event;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer$3;->this$0:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-static {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->access$200(Lorg/videolan/vlc/VlcVideoPlayer;Lorg/videolan/libvlc/MediaPlayer$Event;)V

    .line 234
    return-void
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/VlcVideoPlayer$3;->onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method
