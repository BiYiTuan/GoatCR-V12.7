.class Lcom/gemini/play/MyVodFind$4;
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
    .line 129
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$4;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    const/4 v1, 0x0

    sput v1, Lcom/gemini/play/VODplayer;->page:I

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyVodFind$4;->this$0:Lcom/gemini/play/MyVodFind;

    .line 135
    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$400(Lcom/gemini/play/MyVodFind;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "cmd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find cmd url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$4;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$200(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$4;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$300(Lcom/gemini/play/MyVodFind;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    .line 141
    return-void
.end method
