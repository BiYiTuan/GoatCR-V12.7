.class Lcom/gemini/play/VodPlayerListActivity$7$1;
.super Ljava/lang/Thread;
.source "VodPlayerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerListActivity$7;

.field final synthetic val$id0:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerListActivity$7;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$7$1;->this$1:Lcom/gemini/play/VodPlayerListActivity$7;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerListActivity$7$1;->val$id0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$7$1;->val$id0:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/VODplayer;->parseTypeXML(Ljava/lang/String;)V

    .line 360
    return-void
.end method
