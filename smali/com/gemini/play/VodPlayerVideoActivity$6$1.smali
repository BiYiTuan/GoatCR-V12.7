.class Lcom/gemini/play/VodPlayerVideoActivity$6$1;
.super Ljava/lang/Thread;
.source "VodPlayerVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerVideoActivity$6;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerVideoActivity$6;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$6$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$6$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$6;

    iget-object v0, v0, Lcom/gemini/play/VodPlayerVideoActivity$6;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$300(Lcom/gemini/play/VodPlayerVideoActivity;)V

    .line 310
    return-void
.end method
