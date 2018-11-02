.class abstract Lorg/videolan/libvlc/VLCEvent;
.super Ljava/lang/Object;
.source "VLCEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/VLCEvent$Listener;
    }
.end annotation


# instance fields
.field protected final arg1:J

.field protected final arg2:F

.field public final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:F

    .line 32
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg2"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    .line 41
    iput p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:F

    .line 42
    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg1"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    .line 35
    iput-wide p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:F

    .line 37
    return-void
.end method
