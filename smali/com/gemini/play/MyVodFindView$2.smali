.class Lcom/gemini/play/MyVodFindView$2;
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
    .line 129
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodFindView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 133
    .local v1, "t":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gemini/play/MyVodFindView;->access$002(Lcom/gemini/play/MyVodFindView;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$000(Lcom/gemini/play/MyVodFindView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$000(Lcom/gemini/play/MyVodFindView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$100(Lcom/gemini/play/MyVodFindView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v3}, Lcom/gemini/play/MyVodFindView;->access$100(Lcom/gemini/play/MyVodFindView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_1
    sput v5, Lcom/gemini/play/VODplayer;->page:I

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "cmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&find="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v3}, Lcom/gemini/play/MyVodFindView;->access$000(Lcom/gemini/play/MyVodFindView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
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

    .line 145
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-static {v2}, Lcom/gemini/play/MyVodFindView;->access$200(Lcom/gemini/play/MyVodFindView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/gemini/play/MyVodFindView$2;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v2}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    goto :goto_0
.end method
