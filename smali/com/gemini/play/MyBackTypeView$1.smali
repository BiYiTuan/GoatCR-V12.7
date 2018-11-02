.class Lcom/gemini/play/MyBackTypeView$1;
.super Ljava/lang/Object;
.source "MyBackTypeView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView$1;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 80
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView$1;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/MyBackTypeView$1$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyBackTypeView$1$1;-><init>(Lcom/gemini/play/MyBackTypeView$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_0
    return-void
.end method
