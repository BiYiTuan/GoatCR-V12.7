.class public Lcom/gemini/play/MyProgressDialog$Builder;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private messageText:Landroid/widget/TextView;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private okButton:Landroid/widget/Button;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private update_progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyProgressDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyProgressDialog$Builder;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyProgressDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyProgressDialog$Builder;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/gemini/play/MyProgressDialog;
    .locals 11

    .prologue
    const v10, 0x7f070081

    const/16 v7, 0x8

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v8, -0x1

    .line 129
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 130
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    .line 132
    .local v3, "rate":F
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 134
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/gemini/play/MyProgressDialog;

    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    const v6, 0x7f0c009e

    invoke-direct {v0, v5, v6}, Lcom/gemini/play/MyProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 135
    .local v0, "dialog":Lcom/gemini/play/MyProgressDialog;
    const v5, 0x7f090061

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "layout":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/gemini/play/MyProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const v5, 0x7f070113

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    .line 140
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyProgressDialog$Builder$1;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyProgressDialog$Builder$1;-><init>(Lcom/gemini/play/MyProgressDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    const v5, 0x7f0700fe

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    .line 154
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyProgressDialog$Builder$2;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyProgressDialog$Builder$2;-><init>(Lcom/gemini/play/MyProgressDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 170
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 172
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyProgressDialog$Builder$3;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyProgressDialog$Builder$3;-><init>(Lcom/gemini/play/MyProgressDialog$Builder;Lcom/gemini/play/MyProgressDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 190
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyProgressDialog$Builder$4;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyProgressDialog$Builder$4;-><init>(Lcom/gemini/play/MyProgressDialog$Builder;Lcom/gemini/play/MyProgressDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_1
    :goto_1
    const v5, 0x7f0700f0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->messageText:Landroid/widget/TextView;

    .line 209
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->message:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 210
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->messageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/MyProgressDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_2
    :goto_2
    const v5, 0x7f070175

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->update_progressBar:Landroid/widget/ProgressBar;

    .line 223
    invoke-virtual {v0, v2}, Lcom/gemini/play/MyProgressDialog;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    mul-float v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 227
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    mul-float v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 229
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->messageText:Landroid/widget/TextView;

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    return-object v0

    .line 185
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_5
    iget-object v5, p0, Lcom/gemini/play/MyProgressDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 214
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 215
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 216
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gemini/play/MyProgressDialog$Builder;->contentView:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 217
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->contentView:Landroid/view/View;

    .line 88
    return-object p0
.end method

.method public setMessage(I)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->message:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->message:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    .line 115
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/gemini/play/MyProgressDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/gemini/play/MyProgressDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    return-object p0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->update_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->update_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setTitle(I)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyProgressDialog$Builder;->title:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/gemini/play/MyProgressDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/gemini/play/MyProgressDialog$Builder;->title:Ljava/lang/String;

    .line 83
    return-object p0
.end method
