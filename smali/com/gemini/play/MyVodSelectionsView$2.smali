.class Lcom/gemini/play/MyVodSelectionsView$2;
.super Ljava/lang/Object;
.source "MyVodSelectionsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodSelectionsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodSelectionsView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodSelectionsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodSelectionsView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView$2;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 81
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$2;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-static {v0}, Lcom/gemini/play/MyVodSelectionsView;->access$200(Lcom/gemini/play/MyVodSelectionsView;)Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$2;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-static {v0}, Lcom/gemini/play/MyVodSelectionsView;->access$200(Lcom/gemini/play/MyVodSelectionsView;)Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->setSeclection(I)V

    .line 84
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$2;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-static {v0}, Lcom/gemini/play/MyVodSelectionsView;->access$200(Lcom/gemini/play/MyVodSelectionsView;)Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->notifyDataSetChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
