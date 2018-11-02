.class Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
.super Ljava/lang/Object;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuffersGeometryCond"
.end annotation


# instance fields
.field private abort:Z

.field private configured:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    .line 421
    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/libvlc/AWindow$1;

    .prologue
    .line 419
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    .param p1, "x1"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z

    return p1
.end method

.method static synthetic access$900(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    return v0
.end method

.method static synthetic access$902(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    .param p1, "x1"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z

    return p1
.end method
