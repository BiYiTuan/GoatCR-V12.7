.class Lcom/gemini/play/MyVodFind3$6;
.super Ljava/lang/Object;
.source "MyVodFind3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3;

.field final synthetic val$e1:Landroid/widget/EditText;

.field final synthetic val$t:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    iput-object p2, p0, Lcom/gemini/play/MyVodFind3$6;->val$e1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gemini/play/MyVodFind3$6;->val$t:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 131
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$400(Lcom/gemini/play/MyVodFind3;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 132
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemChar"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "t0":Ljava/lang/String;
    const-string v6, "ItemEvent"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "te":Ljava/lang/String;
    const-string v6, "CE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->val$e1:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$500(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$500(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/gemini/play/MySimpleAdapterInputView;->setSeclection(I)V

    .line 165
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$500(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/MySimpleAdapterInputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    const-string v6, "OK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->val$t:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 143
    :cond_2
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$100(Lcom/gemini/play/MyVodFind3;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v7}, Lcom/gemini/play/MyVodFind3;->access$100(Lcom/gemini/play/MyVodFind3;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b00ce

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 146
    :cond_3
    const/4 v0, 0x0

    .line 147
    .local v0, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&find="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find cmd url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$200(Lcom/gemini/play/MyVodFind3;)Lcom/gemini/play/ListViewInterface;

    move-result-object v6

    invoke-interface {v6, v9, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$300(Lcom/gemini/play/MyVodFind3;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->hide()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string v6, "BACK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-static {v6}, Lcom/gemini/play/MyVodFind3;->access$300(Lcom/gemini/play/MyVodFind3;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->hide()V

    goto/16 :goto_0

    .line 158
    :cond_5
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->val$e1:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "t":Ljava/lang/String;
    iget-object v6, p0, Lcom/gemini/play/MyVodFind3$6;->val$e1:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
