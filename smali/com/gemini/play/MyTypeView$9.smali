.class Lcom/gemini/play/MyTypeView$9;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView;->hideTypeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$9;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$9;->this$0:Lcom/gemini/play/MyTypeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyTypeView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$9;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v0}, Lcom/gemini/play/MyTypeView;->access$100(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 423
    return-void
.end method
