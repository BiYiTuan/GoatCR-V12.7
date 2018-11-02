.class Lcom/gemini/play/LivePlayerActivity$29;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$29;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/LivePlayerActivity$29;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/gemini/play/LivePlayerActivity$29;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1603
    iget-object v3, p0, Lcom/gemini/play/LivePlayerActivity$29;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1604
    .local v1, "password_edit":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    .local v0, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/LivePlayerActivity$29;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const-string v4, "data"

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "type_password"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, "type_ps":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1607
    sget-object v2, Lcom/gemini/play/MGplayer;->type2password:Ljava/lang/String;

    .line 1609
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1610
    sput-boolean v7, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 1611
    iget-object v3, p0, Lcom/gemini/play/LivePlayerActivity$29;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v3}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity$29;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    .line 1617
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/LivePlayerActivity$29;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity$29;->this$0:Lcom/gemini/play/LivePlayerActivity;

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1614
    sput-boolean v6, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 1615
    iget-object v3, p0, Lcom/gemini/play/LivePlayerActivity$29;->val$id:Ljava/lang/String;

    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    goto :goto_0
.end method
