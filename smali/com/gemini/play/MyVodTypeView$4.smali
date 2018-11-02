.class Lcom/gemini/play/MyVodTypeView$4;
.super Ljava/lang/Object;
.source "MyVodTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView;

.field final synthetic val$listview:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    iput-object p2, p0, Lcom/gemini/play/MyVodTypeView$4;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 266
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 267
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-virtual {v3}, Lcom/gemini/play/MyVodTypeView;->listFocus()V

    .line 272
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    :cond_0
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 277
    .local v1, "index":I
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v3, v6, :cond_1

    .line 279
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3, v0}, Lcom/gemini/play/MyVodTypeView;->access$100(Lcom/gemini/play/MyVodTypeView;Ljava/lang/String;)V

    .line 282
    :cond_1
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3, v5, v0}, Lcom/gemini/play/MyVodTypeView;->access$200(Lcom/gemini/play/MyVodTypeView;ILjava/lang/String;)V

    .line 286
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VODplayer.type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 322
    .end local v1    # "index":I
    :cond_2
    :goto_0
    return-void

    .line 299
    :cond_3
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3, v5, v0}, Lcom/gemini/play/MyVodTypeView;->access$200(Lcom/gemini/play/MyVodTypeView;ILjava/lang/String;)V

    .line 301
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VODplayer.type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_4
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    invoke-interface {v3, v6, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_5
    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 319
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_6
    const-string v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$4;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method
