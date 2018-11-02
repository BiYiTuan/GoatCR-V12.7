.class public Lcom/gemini/play/MenuView;
.super Ljava/lang/Object;
.source "MenuView.java"


# static fields
.field private static dialog:Landroid/app/AlertDialog;

.field public static getUnbuildling:I

.field private static isMore:Z

.field private static menuDialog:Landroid/app/AlertDialog;

.field private static menuGrid:Landroid/widget/GridView;

.field private static menuView:Landroid/view/View;

.field public static menu_image_array:[I

.field public static menu_image_array_quanxing:[I

.field public static menu_name_array:[I

.field public static menu_name_array_quanxing:[I


# instance fields
.field private final ITEM_0:I

.field private final ITEM_1:I

.field private final ITEM_2:I

.field private final ITEM_3:I

.field private final ITEM_4:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x7

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/MenuView;->isMore:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    .line 59
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gemini/play/MenuView;->menu_image_array:[I

    .line 61
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gemini/play/MenuView;->menu_name_array:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/gemini/play/MenuView;->menu_image_array_quanxing:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/gemini/play/MenuView;->menu_name_array_quanxing:[I

    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/gemini/play/MenuView;->getUnbuildling:I

    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x7f0a000a
        0x7f0a002b
        0x7f0a0059
        0x7f0a0036
        0x7f0a0018
        0x7f0a0001
        0x7f0a0037
        0x7f0a0000
        0x7f0a0013
        0x7f0a0003
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x7f0b0067
        0x7f0b006b
        0x7f0b006c
        0x7f0b006d
        0x7f0b006e
        0x7f0b0071
        0x7f0b0072
        0x7f0b006f
        0x7f0b0069
        0x7f0b0070
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x7f0a002b
        0x7f0a0059
        0x7f0a0036
        0x7f0a0018
        0x7f0a0001
        0x7f0a0000
        0x7f0a0003
    .end array-data

    .line 65
    :array_3
    .array-data 4
        0x7f0b006b
        0x7f0b006c
        0x7f0b006d
        0x7f0b006e
        0x7f0b0071
        0x7f0b006f
        0x7f0b0070
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MenuView;->ITEM_0:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/gemini/play/MenuView;->ITEM_1:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/gemini/play/MenuView;->ITEM_2:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/gemini/play/MenuView;->ITEM_3:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/gemini/play/MenuView;->ITEM_4:I

    return-void
.end method

.method private static aboutActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 458
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quanxing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/gemini/play/SetWebview;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 470
    :goto_0
    return-void

    .line 465
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 466
    .restart local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/gemini/play/AboutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->updateActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->fontActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->appsActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->aboutActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->serverActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/gemini/play/MenuView;->unbundlingActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static appsActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/gemini/play/AppsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method public static decodeActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/MenuView;->decodeActivity(Landroid/content/Context;Landroid/os/Handler;)V

    .line 482
    return-void
.end method

.method public static decodeActivity(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 13
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "rHandler"    # Landroid/os/Handler;

    .prologue
    .line 488
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 489
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v10, 0x7f090030

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "decodeActivity":Landroid/view/View;
    const v10, 0x7f07002f

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    .line 492
    .local v7, "radiogroup":Landroid/widget/RadioGroup;
    const v10, 0x7f07002b

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 493
    .local v3, "radiobutton1":Landroid/widget/RadioButton;
    const v10, 0x7f07002e

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 494
    .local v6, "radiobutton4":Landroid/widget/RadioButton;
    const v10, 0x7f07002c

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 495
    .local v4, "radiobutton2":Landroid/widget/RadioButton;
    const v10, 0x7f07002d

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 497
    .local v5, "radiobutton3":Landroid/widget/RadioButton;
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 498
    .local v9, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v8

    .line 499
    .local v8, "rate":F
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v8

    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 500
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 501
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v8

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 502
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 503
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v8

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 504
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 505
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v8

    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 506
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 508
    const-string v10, "data"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "decode"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 509
    .local v1, "inx":I
    if-eqz v1, :cond_0

    const/4 v10, 0x3

    if-ne v1, v10, :cond_2

    .line 511
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 512
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 513
    invoke-virtual {v3}, Landroid/widget/RadioButton;->requestFocus()Z

    .line 532
    :cond_1
    :goto_0
    new-instance v10, Lcom/gemini/play/MenuView$9;

    invoke-direct {v10, p0, p1, v1}, Lcom/gemini/play/MenuView$9;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-virtual {v7, v10}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 581
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    sput-object v10, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    .line 582
    sget-object v10, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    sget-object v11, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v11, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x3

    sget-object v12, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v12, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v12, v12, 0x5

    mul-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 583
    return-void

    .line 515
    :cond_2
    const/4 v10, 0x1

    if-ne v1, v10, :cond_3

    .line 516
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 517
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 518
    invoke-virtual {v4}, Landroid/widget/RadioButton;->requestFocus()Z

    goto :goto_0

    .line 520
    :cond_3
    const/4 v10, 0x2

    if-ne v1, v10, :cond_1

    .line 521
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 522
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 523
    invoke-virtual {v5}, Landroid/widget/RadioButton;->requestFocus()Z

    goto :goto_0
.end method

.method public static feedbackActivity(Landroid/content/Context;)V
    .locals 8
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 218
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 219
    .local v0, "d":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debug"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v5}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "f":Ljava/lang/String;
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->writeDebug(Ljava/lang/String;)V

    .line 224
    :try_start_0
    const-string v4, "http://www.gemini-iptv.com/debug/debug.php"

    invoke-static {v4, v2}, Lcom/gemini/play/MGplayer;->upLoadByAsyncHttpClient(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    const-string v4, "Upload Successful"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static fontActivity(Landroid/content/Context;)V
    .locals 12
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    .line 318
    const-string v0, "data"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "fontsize"

    const/16 v10, 0x64

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 319
    .local v8, "progressValue":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 320
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f090035

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 322
    .local v6, "fontActivity":Landroid/view/View;
    const v0, 0x7f0700a2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 323
    .local v1, "fontSeekBar":Landroid/widget/SeekBar;
    const/16 v0, 0xc8

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 324
    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 325
    const v0, 0x7f0700a3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 326
    .local v3, "fontTextView":Landroid/widget/TextView;
    const v0, 0x7f070138

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 328
    .local v5, "sizeTextView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 329
    .local v9, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 330
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    .line 331
    .local v4, "rate":F
    mul-float v0, v11, v4

    int-to-float v2, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v2, v10

    mul-float/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    mul-float v0, v11, v4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    new-instance v0, Lcom/gemini/play/MenuView$4;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MenuView$4;-><init>(Landroid/widget/SeekBar;Landroid/content/Context;Landroid/widget/TextView;FLandroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    .line 379
    sget-object v0, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v2, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v10, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v10, v10, 0x5

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v0, v2, v10}, Landroid/view/Window;->setLayout(II)V

    .line 381
    return-void
.end method

.method private static getMenuAdapter(Landroid/content/Context;[I[I)Landroid/widget/SimpleAdapter;
    .locals 9
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "menuNameArray"    # [I
    .param p2, "imageResourceArray"    # [I

    .prologue
    const/4 v8, 0x2

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, p1

    if-ge v6, v1, :cond_0

    .line 203
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "itemText"

    aget v3, p1, v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 209
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f09004d

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 213
    .local v0, "simperAdapter":Landroid/widget/SimpleAdapter;
    return-object v0

    .line 209
    :array_0
    .array-data 4
        0x7f0700bf
        0x7f0700c0
    .end array-data
.end method

.method public static gridMenuInit(Landroid/content/Context;)V
    .locals 1
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public static gridMenuInit(Landroid/content/Context;I)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "setkey"    # I

    .prologue
    .line 77
    const v0, 0x7f09004e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MenuView;->menuView:Landroid/view/View;

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    .line 79
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/gemini/play/MenuView;->menuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/gemini/play/MenuView$1;

    invoke-direct {v1}, Lcom/gemini/play/MenuView$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/gemini/play/MenuView;->menuView:Landroid/view/View;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    sput-object v0, Lcom/gemini/play/MenuView;->menuGrid:Landroid/widget/GridView;

    .line 92
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/gemini/play/MenuView;->menuGrid:Landroid/widget/GridView;

    sget-object v1, Lcom/gemini/play/MenuView;->menu_name_array_quanxing:[I

    sget-object v2, Lcom/gemini/play/MenuView;->menu_image_array_quanxing:[I

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MenuView;->getMenuAdapter(Landroid/content/Context;[I[I)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    sget-object v0, Lcom/gemini/play/MenuView;->menuGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MenuView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MenuView$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/gemini/play/MenuView;->menuGrid:Landroid/widget/GridView;

    sget-object v1, Lcom/gemini/play/MenuView;->menu_name_array:[I

    sget-object v2, Lcom/gemini/play/MenuView;->menu_image_array:[I

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MenuView;->getMenuAdapter(Landroid/content/Context;[I[I)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    sget-object v0, Lcom/gemini/play/MenuView;->menuGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MenuView$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MenuView$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public static isShow()Z
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private static serverActivity(Landroid/content/Context;)V
    .locals 13
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x41000000    # 8.0f

    .line 387
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 388
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f09006a

    invoke-virtual {v2, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 390
    .local v5, "serverActivity":Landroid/view/View;
    const v9, 0x7f070132

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 391
    .local v6, "serverEditText":Landroid/widget/EditText;
    const v9, 0x7f070133

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 392
    .local v7, "serverTextView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 393
    .local v8, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    .line 394
    .local v4, "rate":F
    mul-float v9, v11, v4

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTextSize(F)V

    .line 395
    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    mul-float v9, v11, v4

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 397
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 398
    const v9, 0x7f070113

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 399
    .local v3, "okButton":Landroid/widget/Button;
    const v9, 0x7f0700fe

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 400
    .local v0, "cancelButton":Landroid/widget/Button;
    mul-float v9, v10, v4

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 401
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 402
    mul-float v9, v10, v4

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 403
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 405
    new-instance v9, Lcom/gemini/play/MenuView$5;

    invoke-direct {v9, v3}, Lcom/gemini/play/MenuView$5;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 416
    new-instance v9, Lcom/gemini/play/MenuView$6;

    invoke-direct {v9, v0}, Lcom/gemini/play/MenuView$6;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 427
    const-string v9, "data"

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "server"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "inx":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 430
    sget-object v9, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v9}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    new-instance v9, Lcom/gemini/play/MenuView$7;

    invoke-direct {v9, v6, p0}, Lcom/gemini/play/MenuView$7;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    new-instance v9, Lcom/gemini/play/MenuView$8;

    invoke-direct {v9}, Lcom/gemini/play/MenuView$8;-><init>()V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    .line 453
    sget-object v9, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    sget-object v10, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v10, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v10, v10, 0x5

    mul-int/lit8 v10, v10, 0x4

    sget-object v11, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v11, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v11, v11, 0x5

    mul-int/lit8 v11, v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 454
    return-void

    .line 433
    :cond_0
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showAlertDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 293
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/gemini/play/MenuView;->menuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    sget-object v0, Lcom/gemini/play/MenuView;->menuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private static unbundlingActivity(Landroid/content/Context;)V
    .locals 17
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 590
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 591
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x7f090071

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 593
    .local v13, "unbundlingActivity":Landroid/view/View;
    const v14, 0x7f070173

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 594
    .local v11, "title":Landroid/widget/TextView;
    const v14, 0x7f07016f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 595
    .local v7, "text1":Landroid/widget/TextView;
    const v14, 0x7f070170

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 596
    .local v8, "text2":Landroid/widget/TextView;
    const v14, 0x7f070171

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 597
    .local v9, "text3":Landroid/widget/TextView;
    const v14, 0x7f070172

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 599
    .local v10, "text4":Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 600
    .local v12, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v6

    .line 602
    .local v6, "rate":F
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 603
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 604
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 605
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 606
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 607
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 608
    sget-object v14, Lcom/gemini/play/MGplayer;->number:Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 610
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 611
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 612
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 614
    const v14, 0x7f070113

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 615
    .local v4, "okButton":Landroid/widget/Button;
    const v14, 0x7f0700fe

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 616
    .local v1, "cancelButton":Landroid/widget/Button;
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 617
    invoke-virtual {v4, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 618
    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v6

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 619
    invoke-virtual {v1, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 621
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setFocusable(Z)V

    .line 622
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 624
    const/4 v2, -0x1

    .line 626
    .local v2, "getUnbuildling":I
    new-instance v5, Lcom/gemini/play/MenuView$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v10, v0, v4}, Lcom/gemini/play/MenuView$10;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V

    .line 662
    .local v5, "pHandler":Landroid/os/Handler;
    new-instance v14, Lcom/gemini/play/MenuView$11;

    invoke-direct {v14, v5}, Lcom/gemini/play/MenuView$11;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    new-instance v14, Lcom/gemini/play/MenuView$12;

    invoke-direct {v14, v4}, Lcom/gemini/play/MenuView$12;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 697
    new-instance v14, Lcom/gemini/play/MenuView$13;

    invoke-direct {v14}, Lcom/gemini/play/MenuView$13;-><init>()V

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    new-instance v14, Lcom/gemini/play/MenuView$14;

    invoke-direct {v14, v1}, Lcom/gemini/play/MenuView$14;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v1, v14}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 715
    new-instance v14, Lcom/gemini/play/MenuView$15;

    invoke-direct {v14, v5}, Lcom/gemini/play/MenuView$15;-><init>(Landroid/os/Handler;)V

    .line 724
    invoke-virtual {v14}, Lcom/gemini/play/MenuView$15;->start()V

    .line 726
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v14

    sput-object v14, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    .line 727
    sget-object v14, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/gemini/play/MenuView$16;

    invoke-direct {v15, v4, v1}, Lcom/gemini/play/MenuView$16;-><init>(Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 757
    sget-object v14, Lcom/gemini/play/MenuView;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    sget-object v15, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v15, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v15, v15, 0x5

    mul-int/lit8 v15, v15, 0x4

    sget-object v16, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    sget v16, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v16, v16, 0x5

    mul-int/lit8 v16, v16, 0x4

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setLayout(II)V

    .line 758
    return-void
.end method

.method private static updateActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 308
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "_this":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/UpdateActivity;->startUpdate(Landroid/app/Activity;Ljava/lang/String;)V

    .line 314
    return-void
.end method
