.class Lcom/gemini/play/MyInfoView$MiusThread;
.super Ljava/lang/Thread;
.source "MyInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$MiusThread;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 650
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/MyInfoView$MiusThread;->this$0:Lcom/gemini/play/MyInfoView;

    iget-boolean v1, v1, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    if-eqz v1, :cond_0

    .line 652
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 653
    const-string v1, "---"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 659
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
