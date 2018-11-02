.class public Lcom/gemini/play/MyDialog$Builder;
.super Ljava/lang/Object;
.source "MyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyDialog;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/gemini/play/MyDialog;
    .locals 12

    .prologue
    const v11, 0x7f070081

    const/16 v7, 0x8

    const/4 v10, 0x1

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v8, -0x1

    .line 127
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 128
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    .line 130
    .local v3, "rate":F
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 132
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/gemini/play/MyDialog;

    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    const v6, 0x7f0c009e

    invoke-direct {v0, v5, v6}, Lcom/gemini/play/MyDialog;-><init>(Landroid/content/Context;I)V

    .line 133
    .local v0, "dialog":Lcom/gemini/play/MyDialog;
    const v5, 0x7f090031

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "layout":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/gemini/play/MyDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const v5, 0x7f070113

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    .line 138
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog$Builder$1;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyDialog$Builder$1;-><init>(Lcom/gemini/play/MyDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    const v5, 0x7f0700fe

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    .line 152
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog$Builder$2;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyDialog$Builder$2;-><init>(Lcom/gemini/play/MyDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 168
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog$Builder$3;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyDialog$Builder$3;-><init>(Lcom/gemini/play/MyDialog$Builder;Lcom/gemini/play/MyDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 188
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog$Builder$4;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyDialog$Builder$4;-><init>(Lcom/gemini/play/MyDialog$Builder;Lcom/gemini/play/MyDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_1
    :goto_1
    const v5, 0x7f0700f0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->messageText:Landroid/widget/TextView;

    .line 207
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->message:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 208
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->messageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/MyDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    mul-float v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 219
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    mul-float v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 221
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->messageText:Landroid/widget/TextView;

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 225
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 226
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 227
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    .line 228
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 230
    new-instance v5, Lcom/gemini/play/MyDialog$Builder$5;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyDialog$Builder$5;-><init>(Lcom/gemini/play/MyDialog$Builder;)V

    invoke-virtual {v0, v5}, Lcom/gemini/play/MyDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 263
    invoke-virtual {v0, v2}, Lcom/gemini/play/MyDialog;->setContentView(Landroid/view/View;)V

    .line 265
    return-object v0

    .line 183
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_4
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_5
    iget-object v5, p0, Lcom/gemini/play/MyDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 212
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 213
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 214
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gemini/play/MyDialog$Builder;->contentView:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)Lcom/gemini/play/MyDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->contentView:Landroid/view/View;

    .line 86
    return-object p0
.end method

.method public setMessage(I)Lcom/gemini/play/MyDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->message:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->message:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/gemini/play/MyDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/gemini/play/MyDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    return-object p0
.end method

.method public setTitle(I)Lcom/gemini/play/MyDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog$Builder;->title:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder;->title:Ljava/lang/String;

    .line 81
    return-object p0
.end method
