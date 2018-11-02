.class Lcom/gemini/play/BackPlayerVideoActivity$8;
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
    .line 341
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$8;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$8;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->access$302(Lcom/gemini/play/BackPlayerVideoActivity;Z)Z

    .line 344
    return-void
.end method
