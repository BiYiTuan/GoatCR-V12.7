.class Lcom/gemini/play/MyVodTypeView2$3;
.super Ljava/lang/Object;
.source "MyVodTypeView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 124
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v0, v2}, Lcom/gemini/play/MyVodTypeView2;->selectIndex(I)V

    .line 125
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v0}, Lcom/gemini/play/MyVodTypeView2;->access$000(Lcom/gemini/play/MyVodTypeView2;)I

    move-result v0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    const-string v1, "2"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MyVodTypeView2;->access$100(Lcom/gemini/play/MyVodTypeView2;Ljava/lang/String;I)V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v0}, Lcom/gemini/play/MyVodTypeView2;->access$000(Lcom/gemini/play/MyVodTypeView2;)I

    move-result v0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v0}, Lcom/gemini/play/MyVodTypeView2;->access$200(Lcom/gemini/play/MyVodTypeView2;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const-string v1, "2"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$3;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v0}, Lcom/gemini/play/MyVodTypeView2;->access$200(Lcom/gemini/play/MyVodTypeView2;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const-string v1, "2"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method
