.class Lcom/gemini/play/MyVodFindView$6;
.super Ljava/lang/Object;
.source "MyVodFindView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFindView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFindView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFindView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/VODplayer;->page:I

    .line 198
    const-string v1, "0"

    .line 199
    .local v1, "years_value":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$400(Lcom/gemini/play/MyVodFindView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$500(Lcom/gemini/play/MyVodFindView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v3}, Lcom/gemini/play/MyVodFindView;->access$400(Lcom/gemini/play/MyVodFindView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "years_value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 202
    .restart local v1    # "years_value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&itype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    .line 203
    invoke-static {v3}, Lcom/gemini/play/MyVodFindView;->access$600(Lcom/gemini/play/MyVodFindView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iyear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iarea="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    .line 205
    invoke-static {v3}, Lcom/gemini/play/MyVodFindView;->access$700(Lcom/gemini/play/MyVodFindView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "cmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find cmd url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$200(Lcom/gemini/play/MyVodFindView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$6;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v2}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 210
    return-void
.end method
