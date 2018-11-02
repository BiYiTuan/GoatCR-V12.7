.class Lcom/gemini/play/BackPlayerVideoActivity$7;
.super Ljava/lang/Object;
.source "BackPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayerVideoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$7;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$7;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->finish()V

    .line 335
    return-void
.end method
