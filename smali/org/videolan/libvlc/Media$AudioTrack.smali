.class public Lorg/videolan/libvlc/Media$AudioTrack;
.super Lorg/videolan/libvlc/Media$Track;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioTrack"
.end annotation


# instance fields
.field public final channels:I

.field public final rate:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "codec"    # Ljava/lang/String;
    .param p2, "originalCodec"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "profile"    # I
    .param p5, "level"    # I
    .param p6, "bitrate"    # I
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "channels"    # I
    .param p10, "rate"    # I

    .prologue
    .line 191
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lorg/videolan/libvlc/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V

    .line 192
    move/from16 v0, p9

    iput v0, p0, Lorg/videolan/libvlc/Media$AudioTrack;->channels:I

    .line 193
    move/from16 v0, p10

    iput v0, p0, Lorg/videolan/libvlc/Media$AudioTrack;->rate:I

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IILorg/videolan/libvlc/Media$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # Lorg/videolan/libvlc/Media$1;

    .prologue
    .line 184
    invoke-direct/range {p0 .. p10}, Lorg/videolan/libvlc/Media$AudioTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
