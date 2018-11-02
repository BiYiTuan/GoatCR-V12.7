.class final Lcom/gemini/play/MenuView$2;
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
    .line 96
    iput-object p1, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 98
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->access$000(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->access$200(Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :pswitch_5
    iget-object v0, p0, Lcom/gemini/play/MenuView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->access$300(Landroid/content/Context;)V

    goto :goto_0

    .line 122
    :pswitch_6
    invoke-static {}, Lcom/gemini/play/MenuView;->access$400()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 98
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
    .end packed-switch
.end method
