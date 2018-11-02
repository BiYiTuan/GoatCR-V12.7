.class public Lorg/videolan/libvlc/MediaPlayer$Chapter;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chapter"
.end annotation


# instance fields
.field public final duration:J

.field public final name:Ljava/lang/String;

.field public final timeOffset:J


# direct methods
.method private constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "timeOffset"    # J
    .param p3, "duration"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lorg/videolan/libvlc/MediaPlayer$Chapter;->timeOffset:J

    .line 171
    iput-wide p3, p0, Lorg/videolan/libvlc/MediaPlayer$Chapter;->duration:J

    .line 172
    iput-object p5, p0, Lorg/videolan/libvlc/MediaPlayer$Chapter;->name:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/lang/String;
    .param p6, "x3"    # Lorg/videolan/libvlc/MediaPlayer$1;

    .prologue
    .line 153
    invoke-direct/range {p0 .. p5}, Lorg/videolan/libvlc/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;)V

    return-void
.end method
