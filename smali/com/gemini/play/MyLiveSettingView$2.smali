.class final Lcom/gemini/play/MyLiveSettingView$2;
.super Ljava/lang/Object;
.source "MyLiveSettingView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveSettingView;->init(Landroid/content/Context;)V
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
    .line 52
    iput-object p1, p0, Lcom/gemini/play/MyLiveSettingView$2;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 54
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyLiveSettingView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MyLiveSettingView;->access$000(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/MyLiveSettingView$2;->val$_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MyLiveSettingView;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {}, Lcom/gemini/play/MyLiveSettingView;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
