.class Lcom/gemini/play/VodPlayerListActivity$19;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerListActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$19;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity$19;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerListActivity;->access$1402(Lcom/gemini/play/VodPlayerListActivity;Z)Z

    .line 995
    return-void
.end method
