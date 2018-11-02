.class Lcom/gemini/play/MyVodFind$6;
.super Ljava/lang/Object;
.source "MyVodFind.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    const/4 v2, 0x0

    sput v2, Lcom/gemini/play/VODplayer;->page:I

    .line 162
    const-string v1, "0"

    .line 163
    .local v1, "years_value":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$500(Lcom/gemini/play/MyVodFind;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$600(Lcom/gemini/play/MyVodFind;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$500(Lcom/gemini/play/MyVodFind;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "years_value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 166
    .restart local v1    # "years_value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&itype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    .line 167
    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$700(Lcom/gemini/play/MyVodFind;)I

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

    iget-object v3, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    .line 169
    invoke-static {v3}, Lcom/gemini/play/MyVodFind;->access$800(Lcom/gemini/play/MyVodFind;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
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

    .line 171
    iget-object v2, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$200(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/gemini/play/MyVodFind$6;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$300(Lcom/gemini/play/MyVodFind;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 174
    return-void
.end method
