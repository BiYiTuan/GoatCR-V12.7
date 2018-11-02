.class Lcom/gemini/play/MGplayer$1;
.super Ljava/lang/Thread;
.source "MGplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->sendHttpRequest(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MGplayer;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MGplayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MGplayer;

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/gemini/play/MGplayer$1;->this$0:Lcom/gemini/play/MGplayer;

    iput-object p2, p0, Lcom/gemini/play/MGplayer$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/gemini/play/MGplayer$1;->this$0:Lcom/gemini/play/MGplayer;

    iget-object v1, p0, Lcom/gemini/play/MGplayer$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->access$002(Lcom/gemini/play/MGplayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1285
    return-void
.end method
