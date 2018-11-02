.class Lcom/gemini/play/MyBackTypeView$6;
.super Ljava/lang/Object;
.source "MyBackTypeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackTypeView;->inputPasswordView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackTypeView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackTypeView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView$6;->this$0:Lcom/gemini/play/MyBackTypeView;

    iput-object p2, p0, Lcom/gemini/play/MyBackTypeView$6;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/gemini/play/MyBackTypeView$6;->val$id:Ljava/lang/String;

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

    .line 370
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$6;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 371
    .local v1, "password_edit":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$6;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyBackTypeView;->access$400(Lcom/gemini/play/MyBackTypeView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "type_password"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "type_ps":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 375
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$6;->val$id:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/BACKplayer;->playbackTypePasswordGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 380
    sput-boolean v7, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    .line 381
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$6;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyBackTypeView;->access$100(Lcom/gemini/play/MyBackTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyBackTypeView$6;->val$id:Ljava/lang/String;

    invoke-interface {v3, v6, v4}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView$6;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyBackTypeView;->access$400(Lcom/gemini/play/MyBackTypeView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyBackTypeView$6;->this$0:Lcom/gemini/play/MyBackTypeView;

    invoke-static {v4}, Lcom/gemini/play/MyBackTypeView;->access$400(Lcom/gemini/play/MyBackTypeView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 385
    sput-boolean v6, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    goto :goto_0
.end method
