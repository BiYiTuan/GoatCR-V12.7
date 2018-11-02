.class final Lcom/gemini/play/MyLiveSettingView$1;
.super Ljava/lang/Object;
.source "MyLiveSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveSettingView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
