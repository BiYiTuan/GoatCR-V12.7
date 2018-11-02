.class public Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackDescription"
.end annotation


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 187
    iput-object p2, p0, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/videolan/libvlc/MediaPlayer$1;

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;-><init>(ILjava/lang/String;)V

    return-void
.end method
