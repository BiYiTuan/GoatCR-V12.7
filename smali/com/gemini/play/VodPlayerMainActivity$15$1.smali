.class Lcom/gemini/play/VodPlayerMainActivity$15$1;
.super Ljava/lang/Thread;
.source "VodPlayerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerMainActivity$15;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerMainActivity$15;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$15$1;->this$1:Lcom/gemini/play/VodPlayerMainActivity$15;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$15$1;->this$1:Lcom/gemini/play/VodPlayerMainActivity$15;

    iget-object v1, v1, Lcom/gemini/play/VodPlayerMainActivity$15;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {}, Lcom/gemini/play/VODplayer;->parseMainXML()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gemini/play/VodPlayerMainActivity;->access$102(Lcom/gemini/play/VodPlayerMainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 295
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$15$1;->this$1:Lcom/gemini/play/VodPlayerMainActivity$15;

    iget-object v1, v1, Lcom/gemini/play/VodPlayerMainActivity$15;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$15$1;->this$1:Lcom/gemini/play/VodPlayerMainActivity$15;

    iget-object v1, v1, Lcom/gemini/play/VodPlayerMainActivity$15;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v1}, Lcom/gemini/play/VodPlayerMainActivity;->cmdMessageLoadMain()V

    .line 302
    :cond_0
    return-void

    .line 291
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
