.class Lcom/gemini/play/MyVodFind$2;
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

.field final synthetic val$t:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    iput-object p2, p0, Lcom/gemini/play/MyVodFind$2;->val$t:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    iget-object v2, p0, Lcom/gemini/play/MyVodFind$2;->val$t:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gemini/play/MyVodFind;->access$002(Lcom/gemini/play/MyVodFind;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$000(Lcom/gemini/play/MyVodFind;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$000(Lcom/gemini/play/MyVodFind;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$100(Lcom/gemini/play/MyVodFind;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$100(Lcom/gemini/play/MyVodFind;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b00ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_1
    sput v4, Lcom/gemini/play/VODplayer;->page:I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "cmd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&find="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v2}, Lcom/gemini/play/MyVodFind;->access$000(Lcom/gemini/play/MyVodFind;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
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

    .line 110
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$200(Lcom/gemini/play/MyVodFind;)Lcom/gemini/play/ListViewInterface;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/gemini/play/MyVodFind$2;->this$0:Lcom/gemini/play/MyVodFind;

    invoke-static {v1}, Lcom/gemini/play/MyVodFind;->access$300(Lcom/gemini/play/MyVodFind;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0
.end method
