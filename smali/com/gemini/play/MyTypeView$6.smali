.class Lcom/gemini/play/MyTypeView$6;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView;->init()V
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
    .line 187
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$6;->this$0:Lcom/gemini/play/MyTypeView;

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
    .line 190
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$6;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v0}, Lcom/gemini/play/MyTypeView;->access$500(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$6;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v0}, Lcom/gemini/play/MyTypeView;->access$500(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gemini/play/MySimpleAdapterInputView;->setSeclection(I)V

    .line 193
    iget-object v0, p0, Lcom/gemini/play/MyTypeView$6;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v0}, Lcom/gemini/play/MyTypeView;->access$500(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 195
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
    .line 200
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
