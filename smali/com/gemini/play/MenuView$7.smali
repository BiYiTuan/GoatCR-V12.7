.class final Lcom/gemini/play/MenuView$7;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->serverActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_this:Landroid/content/Context;

.field final synthetic val$serverEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/gemini/play/MenuView$7;->val$serverEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gemini/play/MenuView$7;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v2, p0, Lcom/gemini/play/MenuView$7;->val$serverEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "inx":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/MenuView$7;->val$_this:Landroid/content/Context;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "server"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 442
    invoke-static {}, Lcom/gemini/play/MenuView;->access$700()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 443
    return-void
.end method
