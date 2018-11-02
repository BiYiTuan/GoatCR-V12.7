.class public Lorg/videolan/libvlc/Dialog$ErrorMessage;
.super Lorg/videolan/libvlc/Dialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/videolan/libvlc/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Dialog$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/videolan/libvlc/Dialog$1;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Dialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
