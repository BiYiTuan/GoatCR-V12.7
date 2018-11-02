.class Lcom/gemini/play/MyListView1$2;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

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
    .line 143
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v3}, Lcom/gemini/play/MyListView1;->access$100(Lcom/gemini/play/MyListView1;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 144
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemUrl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list click ItemUrl ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 146
    if-eqz v2, :cond_0

    .line 148
    const-string v3, "ItemId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "id":Ljava/lang/String;
    sput-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v3}, Lcom/gemini/play/MyListView1;->access$000(Lcom/gemini/play/MyListView1;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list click id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v3}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    .line 181
    :goto_0
    return-void

    .line 165
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    const-string v3, "ItemId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .restart local v0    # "id":Ljava/lang/String;
    sput-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v3}, Lcom/gemini/play/MyListView1;->access$000(Lcom/gemini/play/MyListView1;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list click id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/gemini/play/MyListView1$2;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v3}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    goto :goto_0
.end method
