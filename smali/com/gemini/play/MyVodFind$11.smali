.class Lcom/gemini/play/MyVodFind$11;
.super Ljava/lang/Object;
.source "MyVodFind.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind;

.field final synthetic val$e1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$11;->this$0:Lcom/gemini/play/MyVodFind;

    iput-object p2, p0, Lcom/gemini/play/MyVodFind$11;->val$e1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 240
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$900(Lcom/gemini/play/MyVodFind;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 241
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemChar"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "t0":Ljava/lang/String;
    const-string v3, "CE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->val$e1:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$1000(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$1000(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/gemini/play/MySimpleAdapterInputView;->setSeclection(I)V

    .line 254
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$1000(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 256
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->val$e1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/MyVodFind$11;->val$e1:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
