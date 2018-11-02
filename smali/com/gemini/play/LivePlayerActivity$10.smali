.class Lcom/gemini/play/LivePlayerActivity$10;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
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
    .line 495
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$10;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$10;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$10;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, v1, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;Landroid/os/Handler;)V

    .line 500
    return-void
.end method
