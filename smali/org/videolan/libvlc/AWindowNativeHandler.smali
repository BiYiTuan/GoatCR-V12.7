.class public abstract Lorg/videolan/libvlc/AWindowNativeHandler;
.super Ljava/lang/Object;
.source "AWindowNativeHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getSubtitlesSurface()Landroid/view/Surface;
.end method

.method protected abstract getVideoSurface()Landroid/view/Surface;
.end method

.method protected abstract nativeOnMouseEvent(JIIII)V
.end method

.method protected abstract nativeOnWindowSize(JII)V
.end method

.method protected abstract sendHardwareAccelerationError()V
.end method

.method protected abstract setBuffersGeometry(Landroid/view/Surface;III)Z
.end method

.method protected abstract setCallback(J)Z
.end method

.method protected abstract setWindowLayout(IIIIII)V
.end method
