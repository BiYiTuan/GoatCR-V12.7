.class public Lorg/videolan/libvlc/MediaDiscoverer$Description;
.super Ljava/lang/Object;
.source "MediaDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaDiscoverer$Description$Category;
    }
.end annotation


# instance fields
.field public final category:I

.field public final longName:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    .line 58
    iput p3, p0, Lorg/videolan/libvlc/MediaDiscoverer$Description;->category:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/videolan/libvlc/MediaDiscoverer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/videolan/libvlc/MediaDiscoverer$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
