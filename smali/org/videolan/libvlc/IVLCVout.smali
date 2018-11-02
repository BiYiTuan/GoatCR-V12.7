.class public interface abstract Lorg/videolan/libvlc/IVLCVout;
.super Ljava/lang/Object;
.source "IVLCVout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/IVLCVout$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract areViewsAttached()Z
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract attachViews()V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract detachViews()V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract sendMouseEvent(IIII)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesSurface(Landroid/graphics/SurfaceTexture;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesView(Landroid/view/SurfaceView;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setSubtitlesView(Landroid/view/TextureView;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoSurface(Landroid/graphics/SurfaceTexture;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoView(Landroid/view/SurfaceView;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setVideoView(Landroid/view/TextureView;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract setWindowSize(II)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
