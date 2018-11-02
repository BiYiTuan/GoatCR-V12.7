.class Lcom/gemini/play/VodPlayerVideoActivity$4$1;
.super Ljava/lang/Thread;
.source "VodPlayerVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerVideoActivity$4;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerVideoActivity$4;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$4$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$4$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$4;

    iget-object v0, v0, Lcom/gemini/play/VodPlayerVideoActivity$4;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$000(Lcom/gemini/play/VodPlayerVideoActivity;)V

    .line 254
    return-void
.end method
