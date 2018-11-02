.class Lcom/gemini/play/ControlPlayerActivity$1;
.super Ljava/lang/Object;
.source "ControlPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/ControlPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/ControlPlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/ControlPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/ControlPlayerActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/gemini/play/ControlPlayerActivity$1;->this$0:Lcom/gemini/play/ControlPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 62
    return-void
.end method
