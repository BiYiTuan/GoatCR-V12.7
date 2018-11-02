.class public abstract Lorg/videolan/libvlc/Media$Track;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$Track$Type;
    }
.end annotation


# instance fields
.field public final bitrate:I

.field public final codec:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final id:I

.field public final language:Ljava/lang/String;

.field public final level:I

.field public final originalCodec:Ljava/lang/String;

.field public final profile:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "codec"    # Ljava/lang/String;
    .param p3, "originalCodec"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "profile"    # I
    .param p6, "level"    # I
    .param p7, "bitrate"    # I
    .param p8, "language"    # Ljava/lang/String;
    .param p9, "description"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lorg/videolan/libvlc/Media$Track;->type:I

    .line 170
    iput-object p2, p0, Lorg/videolan/libvlc/Media$Track;->codec:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lorg/videolan/libvlc/Media$Track;->originalCodec:Ljava/lang/String;

    .line 172
    iput p4, p0, Lorg/videolan/libvlc/Media$Track;->id:I

    .line 173
    iput p5, p0, Lorg/videolan/libvlc/Media$Track;->profile:I

    .line 174
    iput p6, p0, Lorg/videolan/libvlc/Media$Track;->level:I

    .line 175
    iput p7, p0, Lorg/videolan/libvlc/Media$Track;->bitrate:I

    .line 176
    iput-object p8, p0, Lorg/videolan/libvlc/Media$Track;->language:Ljava/lang/String;

    .line 177
    iput-object p9, p0, Lorg/videolan/libvlc/Media$Track;->description:Ljava/lang/String;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Lorg/videolan/libvlc/Media$1;

    .prologue
    .line 149
    invoke-direct/range {p0 .. p9}, Lorg/videolan/libvlc/Media$Track;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
