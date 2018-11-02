.class Lcom/gemini/play/MyLineView$3;
.super Ljava/lang/Object;
.source "MyLineView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLineView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLineView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/gemini/play/MyLineView$3;->this$0:Lcom/gemini/play/MyLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/gemini/play/MyLineView$3;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v2}, Lcom/gemini/play/MyLineView;->access$100(Lcom/gemini/play/MyLineView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 75
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemLine"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyLineView$3;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v2}, Lcom/gemini/play/MyLineView;->access$200(Lcom/gemini/play/MyLineView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/gemini/play/MyLineView$3;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v2}, Lcom/gemini/play/MyLineView;->access$000(Lcom/gemini/play/MyLineView;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/gemini/play/MyLineView$3;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v2}, Lcom/gemini/play/MyLineView;->access$000(Lcom/gemini/play/MyLineView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 79
    :cond_0
    return-void
.end method
