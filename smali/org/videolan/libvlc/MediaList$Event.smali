.class public Lorg/videolan/libvlc/MediaList$Event;
.super Lorg/videolan/libvlc/VLCEvent;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final EndReached:I = 0x204

.field public static final ItemAdded:I = 0x200

.field public static final ItemDeleted:I = 0x202


# instance fields
.field public final index:I

.field public final media:Lorg/videolan/libvlc/Media;


# direct methods
.method protected constructor <init>(ILorg/videolan/libvlc/Media;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "media"    # Lorg/videolan/libvlc/Media;
    .param p3, "index"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCEvent;-><init>(I)V

    .line 48
    iput-object p2, p0, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    .line 49
    iput p3, p0, Lorg/videolan/libvlc/MediaList$Event;->index:I

    .line 50
    return-void
.end method
