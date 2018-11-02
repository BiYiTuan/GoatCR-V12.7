.class final Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;
.super Ljava/lang/Object;
.source "WebvttParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/text/webvtt/WebvttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositionHolder"
.end annotation


# instance fields
.field public lineType:I

.field public position:F

.field public positionAnchor:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/text/webvtt/WebvttParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer/text/webvtt/WebvttParser$1;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser$PositionHolder;-><init>()V

    return-void
.end method
