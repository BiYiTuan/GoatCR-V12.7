.class Lcom/gemini/play/LivePlayerActivity$26;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$26;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$26;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/LivePlayerActivity;->access$1502(Lcom/gemini/play/LivePlayerActivity;Z)Z

    .line 1425
    return-void
.end method
