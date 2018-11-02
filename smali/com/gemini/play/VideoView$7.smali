.class Lcom/gemini/play/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VideoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/gemini/play/VideoView$7;->this$0:Lcom/gemini/play/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/gemini/play/VideoView$7;->this$0:Lcom/gemini/play/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gemini/play/VideoView;->access$1802(Lcom/gemini/play/VideoView;Z)Z

    .line 550
    return-void
.end method
