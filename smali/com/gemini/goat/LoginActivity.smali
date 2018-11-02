.class public Lcom/gemini/goat/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# instance fields
.field private cancelbutton:Landroid/widget/Button;

.field private passEdit:Landroid/widget/EditText;

.field private savebutton:Landroid/widget/Button;

.field private userEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/goat/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/LoginActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gemini/goat/LoginActivity;->sendCmd()V

    return-void
.end method

.method private sendCmd()V
    .locals 9

    .prologue
    .line 97
    iget-object v7, p0, Lcom/gemini/goat/LoginActivity;->userEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "user":Ljava/lang/String;
    iget-object v7, p0, Lcom/gemini/goat/LoginActivity;->passEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "pass":Ljava/lang/String;
    const-string v7, "data"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 102
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v7, "mac"

    const-string v8, "null"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "id":Ljava/lang/String;
    const-string v7, "login_page"

    sget-object v8, Lcom/gemini/custom/quanxing;->login_url:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "login_url":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pass="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cmd":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v1, "data":Landroid/content/Intent;
    const-string v7, "url"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/16 v7, 0x14

    invoke-virtual {p0, v7, v1}, Lcom/gemini/goat/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/gemini/goat/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gemini/goat/LoginActivity;->savebutton:Landroid/widget/Button;

    .line 36
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gemini/goat/LoginActivity;->cancelbutton:Landroid/widget/Button;

    .line 38
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gemini/goat/LoginActivity;->userEdit:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/gemini/goat/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gemini/goat/LoginActivity;->passEdit:Landroid/widget/EditText;

    .line 41
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity;->savebutton:Landroid/widget/Button;

    new-instance v1, Lcom/gemini/goat/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/gemini/goat/LoginActivity$1;-><init>(Lcom/gemini/goat/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 62
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity;->savebutton:Landroid/widget/Button;

    new-instance v1, Lcom/gemini/goat/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/gemini/goat/LoginActivity$2;-><init>(Lcom/gemini/goat/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity;->cancelbutton:Landroid/widget/Button;

    new-instance v1, Lcom/gemini/goat/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/gemini/goat/LoginActivity$3;-><init>(Lcom/gemini/goat/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity;->cancelbutton:Landroid/widget/Button;

    new-instance v1, Lcom/gemini/goat/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/gemini/goat/LoginActivity$4;-><init>(Lcom/gemini/goat/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
