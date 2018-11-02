.class final Lcom/gemini/play/MenuView$3;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 138
    :pswitch_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "input":Landroid/widget/EditText;
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    .line 141
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    const v3, 0x7f0b0083

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gemini/play/MenuView$3$1;

    invoke-direct {v3, p0, v0}, Lcom/gemini/play/MenuView$3$1;-><init>(Lcom/gemini/play/MenuView$3;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    const v3, 0x7f0b0032

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 162
    .end local v0    # "input":Landroid/widget/EditText;
    :pswitch_1
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$000(Landroid/content/Context;)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :pswitch_5
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$200(Landroid/content/Context;)V

    goto :goto_0

    .line 179
    :pswitch_6
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$600(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :pswitch_7
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->access$300(Landroid/content/Context;)V

    goto :goto_0

    .line 187
    :pswitch_8
    iget-object v1, p0, Lcom/gemini/play/MenuView$3;->val$_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->feedbackActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 191
    :pswitch_9
    invoke-static {}, Lcom/gemini/play/MenuView;->access$400()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
