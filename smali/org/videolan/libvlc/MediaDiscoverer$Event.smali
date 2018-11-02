.class public Lorg/videolan/libvlc/MediaDiscoverer$Event;
.super Lorg/videolan/libvlc/VLCEvent;
.source "MediaDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final Ended:I = 0x501

.field public static final Started:I = 0x500


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCEvent;-><init>(I)V

    .line 36
    return-void
.end method
