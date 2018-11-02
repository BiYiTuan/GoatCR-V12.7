.class Lcom/gemini/play/LivePlayerActivity$32$2;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity$32;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/LivePlayerActivity$32;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/LivePlayerActivity$32;

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$32$2;->this$1:Lcom/gemini/play/LivePlayerActivity$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$32$2;->this$1:Lcom/gemini/play/LivePlayerActivity$32;

    iget-object v0, v0, Lcom/gemini/play/LivePlayerActivity$32;->this$0:Lcom/gemini/play/LivePlayerActivity;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentSeek:I

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 1732
    return-void
.end method
