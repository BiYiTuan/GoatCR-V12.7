.class Lcom/gemini/play/MyTypeView$1$1;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/MyTypeView$1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/MyTypeView$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$1$1;->this$1:Lcom/gemini/play/MyTypeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$1$1;->this$1:Lcom/gemini/play/MyTypeView$1;

    iget-object v0, v0, Lcom/gemini/play/MyTypeView$1;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyTypeView;->listFocus()V

    .line 105
    return-void
.end method
