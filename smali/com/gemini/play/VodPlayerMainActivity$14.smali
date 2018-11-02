.class Lcom/gemini/play/VodPlayerMainActivity$14;
.super Ljava/lang/Thread;
.source "VodPlayerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$14;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$14;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {}, Lcom/gemini/play/VODplayer;->parseMainDB()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$102(Lcom/gemini/play/VodPlayerMainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 280
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$14;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$14;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerMainActivity;->cmdMessageLoadMain()V

    .line 282
    :cond_0
    return-void
.end method
