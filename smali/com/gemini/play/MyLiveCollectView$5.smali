.class Lcom/gemini/play/MyLiveCollectView$5;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveCollectView;->showView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLiveCollectView;

.field final synthetic val$_this:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLiveCollectView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/gemini/play/MyLiveCollectView$5;->this$0:Lcom/gemini/play/MyLiveCollectView;

    iput-object p2, p0, Lcom/gemini/play/MyLiveCollectView$5;->val$_this:Landroid/content/Context;

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
    .line 122
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/MyLiveCollectView$5;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-static {v3}, Lcom/gemini/play/MyLiveCollectView;->access$300(Lcom/gemini/play/MyLiveCollectView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 123
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "id":Ljava/lang/String;
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyLiveCollectView$5;->val$_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyLiveCollectView$5;->val$_this:Landroid/content/Context;

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 128
    iget-object v3, p0, Lcom/gemini/play/MyLiveCollectView$5;->val$_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyLiveCollectView$5$1;

    invoke-direct {v4, p0, v1}, Lcom/gemini/play/MyLiveCollectView$5$1;-><init>(Lcom/gemini/play/MyLiveCollectView$5;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 142
    iget-object v3, p0, Lcom/gemini/play/MyLiveCollectView$5;->val$_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyLiveCollectView$5$2;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyLiveCollectView$5$2;-><init>(Lcom/gemini/play/MyLiveCollectView$5;)V

    invoke-virtual {v0, v3, v4}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 149
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyDialog;->show()V

    .line 150
    return-void
.end method
