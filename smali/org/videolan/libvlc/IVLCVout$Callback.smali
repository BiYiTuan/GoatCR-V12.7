.class public interface abstract Lorg/videolan/libvlc/IVLCVout$Callback;
.super Ljava/lang/Object;
.source "IVLCVout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/IVLCVout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onHardwareAccelerationError(Lorg/videolan/libvlc/IVLCVout;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onNewLayout(Lorg/videolan/libvlc/IVLCVout;IIIIII)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onSurfacesCreated(Lorg/videolan/libvlc/IVLCVout;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onSurfacesDestroyed(Lorg/videolan/libvlc/IVLCVout;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
