.class Lcom/gemini/play/MyInputView$1;
.super Ljava/lang/Object;
.source "MyInputView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInputView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInputView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInputView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gemini/play/MyInputView$1;->this$0:Lcom/gemini/play/MyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 63
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/gemini/play/MyInputView$1;->this$0:Lcom/gemini/play/MyInputView;

    invoke-static {v0}, Lcom/gemini/play/MyInputView;->access$000(Lcom/gemini/play/MyInputView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/gemini/play/MyInputView$1;->this$0:Lcom/gemini/play/MyInputView;

    invoke-static {v0}, Lcom/gemini/play/MyInputView;->access$000(Lcom/gemini/play/MyInputView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gemini/play/MySimpleAdapterInputView;->setSeclection(I)V

    .line 66
    iget-object v0, p0, Lcom/gemini/play/MyInputView$1;->this$0:Lcom/gemini/play/MyInputView;

    invoke-static {v0}, Lcom/gemini/play/MyInputView;->access$000(Lcom/gemini/play/MyInputView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 68
    :cond_0
    return-void
.end method
