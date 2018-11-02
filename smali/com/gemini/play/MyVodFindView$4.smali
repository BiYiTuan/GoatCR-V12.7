.class Lcom/gemini/play/MyVodFindView$4;
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
    .line 165
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$4;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    const/4 v1, 0x0

    sput v1, Lcom/gemini/play/VODplayer;->page:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$4;->this$0:Lcom/gemini/play/MyVodFindView;

    .line 171
    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$300(Lcom/gemini/play/MyVodFindView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
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

    .line 174
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView$4;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v1}, Lcom/gemini/play/MyVodFindView;->access$200(Lcom/gemini/play/MyVodFindView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/gemini/play/MyVodFindView$4;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 177
    return-void
.end method
