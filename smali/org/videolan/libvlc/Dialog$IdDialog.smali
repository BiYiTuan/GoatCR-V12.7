.class public abstract Lorg/videolan/libvlc/Dialog$IdDialog;
.super Lorg/videolan/libvlc/Dialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "IdDialog"
.end annotation


# instance fields
.field protected mId:J


# direct methods
.method protected constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0, p3, p4, p5}, Lorg/videolan/libvlc/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-wide p1, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    .line 196
    return-void
.end method

.method private native nativeDismiss(J)V
.end method


# virtual methods
.method public dismiss()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 200
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 201
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    invoke-direct {p0, v0, v1}, Lorg/videolan/libvlc/Dialog$IdDialog;->nativeDismiss(J)V

    .line 202
    iput-wide v2, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    .line 204
    :cond_0
    return-void
.end method
