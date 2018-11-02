.class Lorg/videolan/vlc/VlcVideoView$2;
.super Ljava/lang/Object;
.source "VlcVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/VlcVideoView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
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
    .line 212
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoView$2;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView$2;->this$0:Lorg/videolan/vlc/VlcVideoView;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoView$2;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v1}, Lorg/videolan/vlc/VlcVideoView;->access$300(Lorg/videolan/vlc/VlcVideoView;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/vlc/VlcVideoView$2;->this$0:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v2}, Lorg/videolan/vlc/VlcVideoView;->access$400(Lorg/videolan/vlc/VlcVideoView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/VlcVideoView;->access$500(Lorg/videolan/vlc/VlcVideoView;II)V

    .line 216
    return-void
.end method
