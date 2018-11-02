.class public Lorg/videolan/libvlc/Media$Event;
.super Lorg/videolan/libvlc/VLCEvent;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final DurationChanged:I = 0x2

.field public static final MetaChanged:I = 0x0

.field public static final ParsedChanged:I = 0x3

.field public static final StateChanged:I = 0x5

.field public static final SubItemAdded:I = 0x1

.field public static final SubItemTreeAdded:I = 0x6


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCEvent;-><init>(I)V

    .line 46
    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "arg1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/VLCEvent;-><init>(IJ)V

    .line 49
    return-void
.end method


# virtual methods
.method public getMetaId()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/videolan/libvlc/Media$Event;->arg1:J

    long-to-int v0, v0

    return v0
.end method

.method public getParsedStatus()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/videolan/libvlc/Media$Event;->arg1:J

    long-to-int v0, v0

    return v0
.end method
