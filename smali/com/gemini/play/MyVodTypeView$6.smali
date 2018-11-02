.class Lcom/gemini/play/MyVodTypeView$6;
.super Ljava/lang/Object;
.source "MyVodTypeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView;->inputPasswordView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView$6;->this$0:Lcom/gemini/play/MyVodTypeView;

    iput-object p2, p0, Lcom/gemini/play/MyVodTypeView$6;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/gemini/play/MyVodTypeView$6;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x0

    .line 353
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$6;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 354
    .local v1, "password_edit":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$6;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$300(Lcom/gemini/play/MyVodTypeView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "type_password"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "type_ps":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 357
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView$6;->val$id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v2, v3, Lcom/gemini/play/ColumnStatus;->password:Ljava/lang/String;

    .line 359
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 361
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView$6;->val$id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iput v6, v3, Lcom/gemini/play/ColumnStatus;->needps:I

    .line 362
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$6;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView$6;->val$id:Ljava/lang/String;

    invoke-interface {v3, v6, v4}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView$6;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyVodTypeView;->access$300(Lcom/gemini/play/MyVodTypeView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView$6;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-static {v4}, Lcom/gemini/play/MyVodTypeView;->access$300(Lcom/gemini/play/MyVodTypeView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
