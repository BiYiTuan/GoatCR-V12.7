.class Lcom/gemini/play/BackPlayerVideoActivity$1;
.super Ljava/lang/Object;
.source "BackPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayerVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayerVideoActivity;->access$000(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    iget-object v2, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/BackPlayerVideoActivity;->access$100(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayerVideoActivity;->access$000(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "time":I
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    iget-object v2, p0, Lcom/gemini/play/BackPlayerVideoActivity$1;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/BackPlayerVideoActivity;->access$100(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_0
.end method
