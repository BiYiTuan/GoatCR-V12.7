.class Lcom/gemini/play/VodPlayerVideoActivity$2;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$2;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$2;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$2;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, v1, Lcom/gemini/play/VodPlayerVideoActivity;->rHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;Landroid/os/Handler;)V

    .line 195
    return-void
.end method
