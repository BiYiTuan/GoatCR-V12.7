.class public Lorg/videolan/libvlc/Media$Slave;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slave"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$Slave$Type;
    }
.end annotation


# instance fields
.field public final priority:I

.field public final type:I

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "priority"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lorg/videolan/libvlc/Media$Slave;->type:I

    .line 296
    iput p2, p0, Lorg/videolan/libvlc/Media$Slave;->priority:I

    .line 297
    iput-object p3, p0, Lorg/videolan/libvlc/Media$Slave;->uri:Ljava/lang/String;

    .line 298
    return-void
.end method
