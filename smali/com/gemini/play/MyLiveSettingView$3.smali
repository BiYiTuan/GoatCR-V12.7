.class final Lcom/gemini/play/MyLiveSettingView$3;
.super Ljava/lang/Object;
.source "MyLiveSettingView.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyLiveSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-static {}, Lcom/gemini/play/MyLiveSettingView;->access$300()Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/gemini/play/MyLiveSettingView;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
