.class public Lcom/gemini/goat/ValidateActivity$PluginInterface;
.super Ljava/lang/Object;
.source "ValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/goat/ValidateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;


# direct methods
.method public constructor <init>(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CTCAddPlayback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "introid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 759
    invoke-static/range {p1 .. p9}, Lcom/gemini/play/BACKplayer;->playbackPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    return-void
.end method

.method public CTCAddPlayback2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "introid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTCAddPlayback 2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 765
    invoke-static/range {p1 .. p9}, Lcom/gemini/play/BACKplayer;->playbackPush2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 766
    return-void
.end method

.method public CTCAddPlaybackType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "needps"    # Ljava/lang/String;
    .param p3, "ps"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 777
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gemini/play/BACKplayer;->playbackTypePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 778
    return-void
.end method

.method public CTCAddType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 771
    invoke-static {p1, p2}, Lcom/gemini/play/LIVEplayer;->typePush(Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    return-void
.end method

.method public CTCAddType2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "needps"    # Ljava/lang/String;
    .param p3, "ps"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTCAddType2 id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1114
    invoke-static {p1, p2, p3}, Lcom/gemini/play/LIVEplayer;->type2Push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    return-void
.end method

.method public CTCAddUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "introduction"    # Ljava/lang/String;
    .param p7, "xml"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTCAddUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1538
    const-string v6, "hd"

    move v0, p1

    move-object v1, p2

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/gemini/play/LIVEplayer;->urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1539
    return-void
.end method

.method public CTCAddUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "introid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 747
    invoke-static/range {p1 .. p9}, Lcom/gemini/play/LIVEplayer;->urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 748
    return-void
.end method

.method public CTCAddUrl2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "intro"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "introid"    # Ljava/lang/String;
    .param p10, "watermark"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 753
    invoke-static/range {p1 .. p10}, Lcom/gemini/play/LIVEplayer;->urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 754
    return-void
.end method

.method public CTCAudoBoot(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1587
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "autoboot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1589
    return-void
.end method

.method public CTCCheckSign(I)I
    .locals 3
    .param p1, "key"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSingInfo()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    invoke-static {v1, v2}, Lcom/gemini/play/GHash;->rotatingHash(Ljava/lang/String;I)I

    move-result v0

    .line 1285
    .local v0, "sign":I
    if-ne p1, v0, :cond_0

    .line 1286
    const/4 v1, 0x1

    .line 1288
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public CTCCheckTimeout(I)V
    .locals 0
    .param p1, "time"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1208
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->check_timeout(I)V

    .line 1209
    return-void
.end method

.method public CTCCheckVideoTimes(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1364
    sput p1, Lcom/gemini/play/MGplayer;->checkVideo_times:I

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTCCheckVideoTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1366
    return-void
.end method

.method public CTCEnableHlsPlugIn(I)V
    .locals 0
    .param p1, "enable"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1162
    sput p1, Lcom/gemini/play/LIVEplayer;->enablelsplugin:I

    .line 1163
    return-void
.end method

.method public CTCExitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1459
    sput-object p1, Lcom/gemini/custom/quanxing;->exit_url:Ljava/lang/String;

    .line 1460
    return-void
.end method

.method public CTCFinish()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v0}, Lcom/gemini/goat/ValidateActivity;->finish()V

    .line 1582
    return-void
.end method

.method public CTCGETtempID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface;->CTCGetSDCardID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetAppID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1613
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->gaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 661
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 662
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method public CTCGetCpuName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 968
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetCpuNameInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1688
    invoke-static {}, Lcom/gemini/play/MGplayer;->writeCpuName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1448
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->sendServerCmd_https(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 963
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$500(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetIMSI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$500(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/PhoneInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetLanguage()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    .local v0, "lan":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public CTCGetLocalKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1876
    sget-object v0, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1877
    invoke-static {}, Lcom/gemini/play/MGplayer;->getLocalKey()Ljava/lang/String;

    move-result-object v0

    .line 1879
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    goto :goto_0
.end method

.method public CTCGetMac()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 741
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetModel()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1265
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 1266
    .local v0, "bd":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1267
    .local v1, "model":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1268
    return-object v1
.end method

.method public CTCGetPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$500(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/PhoneInfo;->getNativePhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetProvidersName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$500(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/PhoneInfo;->getProvidersName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetSDCardID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1554
    sget-object v0, Lcom/gemini/custom/quanxing;->qxid:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/custom/quanxing;->readSDFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetSign()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1293
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetSystemID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1884
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSystemID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetUUID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1618
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->getMyUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1375
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->readSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCGetVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface;->CTCLoaded()V

    .line 811
    sget v0, Lcom/gemini/play/MGplayer;->current_version:I

    return v0
.end method

.method public CTCGetWifiMac()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v2}, Lcom/gemini/goat/ValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1476
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1477
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public CTCHttpsPostServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1844
    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitHttpsPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsPostServerCmdAndCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1839
    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitHttpsPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsPostServerCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1849
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitHttpsPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsSendServerCmd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1824
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/gemini/play/MGplayer;->sendHttpsServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsSendServerCmd2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1819
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->sendHttpsServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsSendServerCookies(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1834
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/gemini/play/MGplayer;->sendHttpsServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsSendServerCookies2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1829
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->sendHttpsServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCHttpsrequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1693
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->sendServerCmd_https(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCIsExistsInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v0, p1}, Lcom/gemini/goat/ValidateActivity;->isExistsInterface(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public CTCJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1736
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1738
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1745
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1740
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1741
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1745
    const-string v2, ""

    goto :goto_0
.end method

.method public CTCKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1176
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->playlistkey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public CTCLivePlayLeftRight(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1213
    sput p1, Lcom/gemini/play/MGplayer;->livelist_leftright:I

    .line 1214
    return-void
.end method

.method public CTCLivePlayShowScroll(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1218
    sput p1, Lcom/gemini/play/MGplayer;->livescroll_show:I

    .line 1219
    return-void
.end method

.method public CTCLivePlayShowScroll2(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "times"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1223
    sput p1, Lcom/gemini/play/MGplayer;->livescroll_show:I

    .line 1224
    sput p2, Lcom/gemini/play/MGplayer;->livescroll_showtimes:I

    .line 1225
    return-void
.end method

.method public CTCLivePlaylistIcon(I)V
    .locals 1
    .param p1, "show"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1298
    if-lez p1, :cond_0

    .line 1299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->show_playlist_image:Z

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->show_playlist_image:Z

    goto :goto_0
.end method

.method public CTCLiveWatermark(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1236
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download live icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/images/livepic/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gemini/play/MGplayer;->donwFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :cond_1
    :goto_0
    sput-object p1, Lcom/gemini/play/LIVEplayer;->watermask:Ljava/lang/String;

    .line 1249
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public CTCLiveWatermarkSite(I)V
    .locals 0
    .param p1, "site"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1253
    sput p1, Lcom/gemini/play/MGplayer;->watermark_site:I

    .line 1254
    return-void
.end method

.method public CTCLiveWatermarkSite2(III)V
    .locals 0
    .param p1, "site"    # I
    .param p2, "dip1"    # I
    .param p3, "dip2"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1258
    sput p1, Lcom/gemini/play/MGplayer;->watermark_site:I

    .line 1259
    sput p2, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    .line 1260
    sput p3, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    .line 1261
    return-void
.end method

.method public CTCLoadLIbs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "sofile"    # Ljava/lang/String;
    .param p4, "version"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1706
    sput p4, Lcom/gemini/play/MGplayer;->libforcetv_version:I

    .line 1707
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/gemini/play/LoadlibsView;->showDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1708
    return-void
.end method

.method public CTCLoadTip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text0"    # Ljava/lang/String;
    .param p2, "text1"    # Ljava/lang/String;
    .param p3, "text2"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1482
    sget-object v0, Lcom/gemini/custom/quanxing;->tips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1483
    sget-object v0, Lcom/gemini/custom/quanxing;->tips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    sget-object v0, Lcom/gemini/custom/quanxing;->tips:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    sget-object v0, Lcom/gemini/custom/quanxing;->tips:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    return-void
.end method

.method public CTCLoadTip2(Ljava/lang/String;)V
    .locals 0
    .param p1, "tip"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1490
    sput-object p1, Lcom/gemini/custom/quanxing;->tip_text8:Ljava/lang/String;

    sput-object p1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    .line 1491
    return-void
.end method

.method public CTCLoadWebView()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1153
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1154
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1155
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    :cond_0
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    return-void
.end method

.method public CTCLoaded()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 800
    const/4 v0, 0x0

    sput v0, Lcom/gemini/play/MGplayer;->load_timeout:I

    .line 801
    return-void
.end method

.method public CTCLoadingTip(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1464
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1465
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1466
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1468
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1469
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1470
    return-void
.end method

.method public CTCLogin()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1574
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1575
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1576
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v1}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1577
    return-void
.end method

.method public CTCMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1730
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCMenu()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 1700
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    .line 1702
    return-void
.end method

.method public CTCNetWorkSetting()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b00bd

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 1101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b0083

    .line 1102
    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/goat/ValidateActivity$PluginInterface$5;

    invoke-direct {v2, p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface$5;-><init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b0032

    .line 1107
    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1109
    return-void
.end method

.method public CTCOutputKeyBroad()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1357
    const-string v1, "CTCOutputKeyBroad"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1359
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1360
    return-void
.end method

.method public CTCPlaybackDaytime(I)V
    .locals 1
    .param p1, "daytime"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x6

    .line 1675
    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1676
    :cond_0
    sput v0, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    .line 1679
    :goto_0
    return-void

    .line 1678
    :cond_1
    sput p1, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    goto :goto_0
.end method

.method public CTCPostServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1789
    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCPostServerCmd2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .param p6, "contenttype"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1794
    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/gemini/play/MGplayer;->submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCPostServerCmdAndCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1784
    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCPostServerCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1799
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/MGplayer;->submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCProxyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 973
    sput-object p1, Lcom/gemini/play/MGplayer;->proxyName:Ljava/lang/String;

    .line 974
    return-void
.end method

.method public CTCSETtempID(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1564
    sget-object v0, Lcom/gemini/custom/quanxing;->qxid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gemini/custom/quanxing;->saveToSDCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-void
.end method

.method public CTCSendHttpsServerCmdCookies(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookiptv webview loadurl2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1813
    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1}, Lcom/gemini/play/MGplayer;->SendHttpsServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;

    move-result-object v0

    .line 1814
    .local v0, "cookier":Lcom/gemini/play/CookieStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@#@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public CTCSendHttpsServerCmdCookies2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookiptv webview loadurl2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1806
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->SendHttpsServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;

    move-result-object v0

    .line 1807
    .local v0, "cookier":Lcom/gemini/play/CookieStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@#@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public CTCSendServerCmd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1769
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCSendServerCmd2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1764
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCSendServerCmdCookies(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookiptv webview loadurl2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1758
    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1}, Lcom/gemini/play/MGplayer;->SendServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;

    move-result-object v0

    .line 1759
    .local v0, "cookier":Lcom/gemini/play/CookieStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@#@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public CTCSendServerCmdCookies2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookiptv webview loadurl2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1751
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->SendServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;

    move-result-object v0

    .line 1752
    .local v0, "cookier":Lcom/gemini/play/CookieStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@#@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public CTCSendServerCookies(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1779
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/gemini/play/MGplayer;->sendServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCSendServerCookies2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "useragent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1774
    invoke-static {p1, p3, p2, p4}, Lcom/gemini/play/MGplayer;->sendServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTCSetAP(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "show"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1124
    sput-object p1, Lcom/gemini/play/MGplayer;->ap_ssid:Ljava/lang/String;

    .line 1125
    sput-object p2, Lcom/gemini/play/MGplayer;->ap_password:Ljava/lang/String;

    .line 1126
    sput p3, Lcom/gemini/play/MGplayer;->ap_state:I

    .line 1127
    sput p4, Lcom/gemini/play/MGplayer;->ap_show:I

    .line 1128
    return-void
.end method

.method public CTCSetAdLiveImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1273
    invoke-static {p1}, Lcom/gemini/play/LIVEplayer;->adimagepush(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTCSetAdLiveImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method public CTCSetAdLiveImageSite(I)V
    .locals 0
    .param p1, "site"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1279
    sput p1, Lcom/gemini/play/MGplayer;->adliveimage_site:I

    .line 1280
    return-void
.end method

.method public CTCSetBroadcast(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1015
    sput-object p1, Lcom/gemini/play/MGplayer;->Broadcast:Ljava/lang/String;

    .line 1016
    return-void
.end method

.method public CTCSetCloseWebPage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/goat/ValidateActivity;->access$002(Lcom/gemini/goat/ValidateActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 851
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 852
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v0}, Lcom/gemini/goat/ValidateActivity;->finish()V

    .line 853
    return-void
.end method

.method public CTCSetConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 654
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method public CTCSetContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 999
    sput-object p1, Lcom/gemini/play/MGplayer;->Contact:Ljava/lang/String;

    .line 1000
    return-void
.end method

.method public CTCSetControlPlayer(I)V
    .locals 0
    .param p1, "time"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1670
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->RunControlPlayer(I)V

    .line 1671
    return-void
.end method

.method public CTCSetDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "tip"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1137
    sput-object p1, Lcom/gemini/play/MGplayer;->download_date:Ljava/lang/String;

    .line 1138
    sput-object p2, Lcom/gemini/play/MGplayer;->download_tip:Ljava/lang/String;

    .line 1139
    sput-object p3, Lcom/gemini/play/MGplayer;->download_url:Ljava/lang/String;

    .line 1141
    return-void
.end method

.method public CTCSetEpgBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1004
    sput-object p1, Lcom/gemini/play/MGplayer;->Background:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method public CTCSetEpgBackground2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1009
    sput-object p1, Lcom/gemini/play/MGplayer;->Background:Ljava/lang/String;

    .line 1010
    sput-object p2, Lcom/gemini/play/MGplayer;->BackgroundMd5:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public CTCSetEpgList(Ljava/lang/String;)V
    .locals 4
    .param p1, "epgs"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1202
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "epglist"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1204
    return-void
.end method

.method public CTCSetEpgStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1196
    sput-object p1, Lcom/gemini/play/MGplayer;->style:Ljava/lang/String;

    .line 1197
    return-void
.end method

.method public CTCSetEveryScrollText(I)V
    .locals 2
    .param p1, "openEveryScrollText"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 978
    sput p1, Lcom/gemini/play/MGplayer;->openEveryScrollText:I

    .line 979
    sget v0, Lcom/gemini/play/MGplayer;->openEveryScrollText:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 980
    invoke-static {}, Lcom/gemini/play/MGplayer;->scroll_every_init()V

    .line 982
    :cond_0
    return-void
.end method

.method public CTCSetEveryVideo(I)V
    .locals 2
    .param p1, "openEveryVideo"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 986
    sput p1, Lcom/gemini/play/MGplayer;->openEveryVideo:I

    .line 987
    sget v0, Lcom/gemini/play/MGplayer;->openEveryVideo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 988
    invoke-static {}, Lcom/gemini/play/MGplayer;->video_every_init()V

    .line 990
    :cond_0
    return-void
.end method

.method public CTCSetGeminiTiemer(Ljava/lang/String;)V
    .locals 0
    .param p1, "times"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1132
    sput-object p1, Lcom/gemini/play/MGplayer;->gemini_tiemer:Ljava/lang/String;

    .line 1133
    return-void
.end method

.method public CTCSetHotlink(Ljava/lang/String;)V
    .locals 0
    .param p1, "hotlink"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 816
    sput-object p1, Lcom/gemini/play/MGplayer;->hotlink:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public CTCSetHotlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "hotlink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "65827855"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 1544
    return-void
.end method

.method public CTCSetIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1628
    sput-object p1, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    .line 1629
    return-void
.end method

.method public CTCSetIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1502
    sput-object p1, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    .line 1503
    sput-object p2, Lcom/gemini/custom/quanxing;->iconpassword:Ljava/lang/String;

    .line 1504
    sput p3, Lcom/gemini/custom/quanxing;->iconversion:I

    .line 1507
    return-void
.end method

.method public CTCSetLanguage(I)V
    .locals 4
    .param p1, "language"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1335
    if-nez p1, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1339
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1341
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1343
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 1344
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1345
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 1346
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1347
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 1348
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "PT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1349
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 1350
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0

    .line 1351
    :cond_8
    if-lez p1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public CTCSetLastTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "days"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gemini/goat/ValidateActivity$PluginInterface;->CTCSetLastTime(Ljava/lang/String;I)V

    .line 789
    return-void
.end method

.method public CTCSetLastTime(Ljava/lang/String;I)V
    .locals 0
    .param p1, "days"    # Ljava/lang/String;
    .param p2, "show"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 782
    sput-object p1, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    .line 783
    sput p2, Lcom/gemini/play/MGplayer;->leftdaysshow:I

    .line 784
    return-void
.end method

.method public CTCSetLivePanal(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 821
    sput p1, Lcom/gemini/play/MGplayer;->live_panal:I

    .line 822
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 836
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 826
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 827
    const-string v1, "decode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 835
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 828
    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 829
    const-string v1, "decode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 830
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 831
    const-string v1, "decode"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 833
    :cond_3
    const-string v1, "decode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public CTCSetLivePlaytimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1650
    sput p1, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MGplayer.liveplaytimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1652
    return-void
.end method

.method public CTCSetLiveShowMAC(I)V
    .locals 0
    .param p1, "show"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1454
    sput p1, Lcom/gemini/play/MGplayer;->live_showmac:I

    .line 1455
    return-void
.end method

.method public CTCSetLiveUiType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1443
    sput p1, Lcom/gemini/play/MGplayer;->live_ui_type:I

    .line 1444
    return-void
.end method

.method public CTCSetLoadingAccountImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1056
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1058
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountimage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1059
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1063
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1061
    :cond_0
    const-string v1, "accountimage"

    invoke-static {p1, v1}, Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public CTCSetLoadingAccountImage2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1067
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1069
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountimage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1070
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1074
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1072
    :cond_0
    const-string v1, "accountimage"

    invoke-static {p1, v1, p2}, Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public CTCSetLoadingImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quanxing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v1, p1}, Lcom/gemini/custom/quanxing;->donloadBackground(Landroid/content/Context;Ljava/lang/String;)V

    .line 1041
    :goto_0
    return-void

    .line 1033
    :cond_0
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1035
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "loadimage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1036
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1038
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "loadimage"

    invoke-static {p1, v1}, Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public CTCSetLoadingImage2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1045
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1047
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "loadimage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1052
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1050
    :cond_0
    const-string v1, "loadimage"

    invoke-static {p1, v1, p2}, Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public CTCSetLookiptv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "url1"    # Ljava/lang/String;
    .param p4, "url2"    # Ljava/lang/String;
    .param p5, "url3"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1726
    return-void
.end method

.method public CTCSetLookiptvEverySend2(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "sendevery"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1855
    const-string v0, "CTCSetLookiptvEverySend2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1856
    sput-object p1, Lcom/gemini/custom/lookiptv;->lookiptvSendUrl:Ljava/lang/String;

    .line 1857
    sput p2, Lcom/gemini/custom/lookiptv;->lookiptvSendTimeOut:I

    .line 1858
    sput p3, Lcom/gemini/custom/lookiptv;->lookiptvSendEvery:I

    .line 1859
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 1860
    return-void
.end method

.method public CTCSetLookiptvMacCpuid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "cpuid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1864
    sput-object p1, Lcom/gemini/custom/lookiptv;->mac:Ljava/lang/String;

    .line 1865
    sput-object p2, Lcom/gemini/custom/lookiptv;->cpuid:Ljava/lang/String;

    .line 1866
    return-void
.end method

.method public CTCSetLookiptvUserAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1870
    sput-object p1, Lcom/gemini/custom/lookiptv;->username:Ljava/lang/String;

    .line 1871
    sput-object p2, Lcom/gemini/custom/lookiptv;->userkey:Ljava/lang/String;

    .line 1872
    return-void
.end method

.method public CTCSetMember(Ljava/lang/String;)V
    .locals 0
    .param p1, "member"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1095
    sput-object p1, Lcom/gemini/play/MGplayer;->member:Ljava/lang/String;

    .line 1096
    return-void
.end method

.method public CTCSetNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1191
    sput-object p1, Lcom/gemini/play/MGplayer;->number:Ljava/lang/String;

    .line 1192
    return-void
.end method

.method public CTCSetOneScroll(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "times"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1146
    sput-object p1, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    .line 1147
    sput p2, Lcom/gemini/play/MGplayer;->onescroll_times:I

    .line 1149
    :cond_0
    return-void
.end method

.method public CTCSetPanel(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1511
    sput p1, Lcom/gemini/custom/quanxing;->panel:I

    .line 1512
    return-void
.end method

.method public CTCSetProgress(I)V
    .locals 3
    .param p1, "val"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1380
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1381
    if-gez p1, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1383
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1384
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1385
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1391
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1392
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "progress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1394
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1395
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public CTCSetProgress2(ILjava/lang/String;)V
    .locals 3
    .param p1, "val"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    if-gez p1, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1410
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1411
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1434
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gemini/play/NumberProgressBar;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1417
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1418
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "progress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1420
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1422
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1423
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public CTCSetRunCheck(ILjava/lang/String;)V
    .locals 0
    .param p1, "times"    # I
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1516
    sput p1, Lcom/gemini/custom/quanxing;->checkruntimes:I

    .line 1517
    sput-object p2, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    .line 1518
    return-void
.end method

.method public CTCSetRunCheck(ILjava/lang/String;I)V
    .locals 0
    .param p1, "times"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1522
    sput p1, Lcom/gemini/custom/quanxing;->checkruntimes:I

    .line 1523
    sput-object p2, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    .line 1524
    sput p3, Lcom/gemini/custom/quanxing;->checktimeout:I

    .line 1527
    return-void
.end method

.method public CTCSetScrollAdPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 845
    sput-object p1, Lcom/gemini/play/MGplayer;->adPic:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public CTCSetScrollText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 840
    sput-object p1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    .line 841
    return-void
.end method

.method public CTCSetShowLefttime(I)V
    .locals 0
    .param p1, "isshow"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 994
    sput p1, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    .line 995
    return-void
.end method

.method public CTCSetShowLivePlaylist(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1623
    sput-object p1, Lcom/gemini/play/MGplayer;->showliveplaylistname:Ljava/lang/String;

    .line 1624
    return-void
.end method

.method public CTCSetTimeEndPRC(J)V
    .locals 1
    .param p1, "endtime"    # J
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1683
    sput-wide p1, Lcom/gemini/play/MGplayer;->endtime:J

    .line 1684
    return-void
.end method

.method public CTCSetTimeNow(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1078
    sput-object p1, Lcom/gemini/play/MGplayer;->now_second:Ljava/lang/String;

    .line 1079
    invoke-static {}, Lcom/gemini/play/MGplayer;->runTime()V

    .line 1080
    return-void
.end method

.method public CTCSetTimeNowPRC(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1084
    sput-object p1, Lcom/gemini/play/MGplayer;->now_second_prc:Ljava/lang/String;

    .line 1085
    invoke-static {}, Lcom/gemini/play/MGplayer;->runTimePRC()V

    .line 1086
    return-void
.end method

.method public CTCSetTimeZonePRC(Ljava/lang/String;)V
    .locals 0
    .param p1, "zone"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1090
    sput-object p1, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    .line 1091
    return-void
.end method

.method public CTCSetType2Pass(Ljava/lang/String;)V
    .locals 0
    .param p1, "ps"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1119
    sput-object p1, Lcom/gemini/play/MGplayer;->type2password:Ljava/lang/String;

    .line 1120
    return-void
.end method

.method public CTCSetUdp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1167
    sput-object p1, Lcom/gemini/play/MGplayer;->udpIP:Ljava/lang/String;

    .line 1168
    sput-object p2, Lcom/gemini/play/MGplayer;->udpPort:Ljava/lang/String;

    .line 1169
    sget-object v0, Lcom/gemini/play/MGplayer;->udpIP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/gemini/play/MGplayer;->udpPort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1170
    invoke-static {}, Lcom/gemini/custom/custom;->start()V

    .line 1172
    :cond_0
    return-void
.end method

.method public CTCSetUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 793
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 794
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 796
    return-void
.end method

.method public CTCSetUrlPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "ps"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1548
    sput-object p1, Lcom/gemini/play/MGplayer;->urlpassword:Ljava/lang/String;

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "60785559"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    .line 1550
    return-void
.end method

.method public CTCSetValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1370
    invoke-static {p1, p2}, Lcom/gemini/play/MGplayer;->writeSD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void
.end method

.method public CTCSetVodEpg(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1438
    sput-object p1, Lcom/gemini/play/VODplayer;->vod_epg:Ljava/lang/String;

    .line 1439
    return-void
.end method

.method public CTCSetVodShowPage(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1712
    sput p1, Lcom/gemini/play/MGplayer;->vod_showpage:I

    .line 1713
    return-void
.end method

.method public CTCSetWifiAP(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "enable"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1657
    new-instance v0, Lcom/gemini/play/WifiAP;

    invoke-direct {v0}, Lcom/gemini/play/WifiAP;-><init>()V

    .line 1658
    .local v0, "aper":Lcom/gemini/play/WifiAP;
    if-ne p3, v3, :cond_1

    .line 1659
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/gemini/play/WifiAP;->setWifiApEnabled(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1660
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 1661
    const-string v2, "setWifiApEnabled false"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1666
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/gemini/play/WifiAP;->setWifiApEnabled(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public CTCSetXmlPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ps"    # Ljava/lang/String;
    .param p2, "ps2"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "78120328"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/custom/quanxing;->xmlpassword:Ljava/lang/String;

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlpassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/custom/quanxing;->xmlpassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method public CTCShowUpdateDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1633
    const/4 v0, 0x0

    .line 1634
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1635
    move-object v0, p1

    .line 1639
    :goto_0
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gemini/play/UpdateActivity;->showUpdate(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1646
    return-void

    .line 1637
    :cond_0
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public CTCStartApp()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 668
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "custom":Ljava/lang/String;
    const-string v2, "turbotv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/gemini/custom/turbo;->isvod:I

    if-ne v2, v4, :cond_0

    .line 670
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 671
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v3, Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 672
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v2, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 673
    sput-boolean v4, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 675
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 705
    :goto_0
    return-void

    .line 678
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "huanqiu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    invoke-static {}, Lcom/gemini/custom/huanqiu;->s1()V

    .line 682
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 683
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v3, Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 684
    const-string v2, "ui_type"

    sget v3, Lcom/gemini/play/MGplayer;->live_ui_type:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v2, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    sput-boolean v4, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 687
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quanxing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 688
    sget v2, Lcom/gemini/custom/quanxing;->version:I

    sget v3, Lcom/gemini/play/MGplayer;->net_version:I

    if-ge v2, v3, :cond_3

    sget v2, Lcom/gemini/play/MGplayer;->net_version:I

    if-lez v2, :cond_3

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTCVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/MGplayer;->net_version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/custom/quanxing;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$200(Lcom/gemini/goat/ValidateActivity;)V

    .line 703
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    goto :goto_0

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/custom/quanxing;->init(Landroid/content/Context;)V

    .line 693
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/custom/quanxing;->unIcon(Landroid/content/Context;)V

    .line 694
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v2}, Lcom/gemini/custom/quanxing;->unXml(Landroid/content/Context;)V

    .line 695
    invoke-static {}, Lcom/gemini/custom/quanxing;->previewInit()V

    .line 696
    const/4 v2, 0x0

    sput-boolean v2, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    .line 697
    iget-object v2, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v2}, Lcom/gemini/goat/ValidateActivity;->finish()V

    goto :goto_1
.end method

.method public CTCStartBroadcast()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v1, Lcom/gemini/play/ControlPlayerActivity;

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 1021
    return-void
.end method

.method public CTCStartForcetv(I)V
    .locals 4
    .param p1, "cache"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1329
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "forcetvcache"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    return-void
.end method

.method public CTCStartPlayback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1321
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v2, Lcom/gemini/play/BackPlayerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1322
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v1, v0}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1323
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v1}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 1324
    return-void
.end method

.method public CTCStartVod()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huanqiu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-static {}, Lcom/gemini/custom/huanqiu;->s1()V

    .line 713
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msiptv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v2, Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 718
    :goto_0
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v1, v0}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 719
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 721
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v1}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 722
    return-void

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v2, Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public CTCUpdateTip(I)V
    .locals 0
    .param p1, "show"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1315
    sput p1, Lcom/gemini/play/MGplayer;->updatetip_show:I

    .line 1316
    return-void
.end method

.method public CTCUpnp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "pol"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1890
    invoke-static {p1, p2}, Lcom/gemini/play/MGplayer;->upnp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    return-void
.end method

.method public CTCVersion(I)V
    .locals 0
    .param p1, "version"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 805
    sput p1, Lcom/gemini/play/MGplayer;->net_version:I

    .line 806
    return-void
.end method

.method public CTCVodCount(IIII)V
    .locals 2
    .param p1, "num0"    # I
    .param p2, "num1"    # I
    .param p3, "num2"    # I
    .param p4, "num3"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1307
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_number:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1308
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_number:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1309
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_number:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1310
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_number:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1311
    return-void
.end method

.method public CTCVodSetColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1229
    sput-object p1, Lcom/gemini/play/MGplayer;->vodcolumn:Ljava/lang/String;

    .line 1231
    invoke-static {}, Lcom/gemini/play/VODplayer;->init_Column()V

    .line 1232
    return-void
.end method

.method public CTCWifiTip(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1570
    return-void
.end method

.method public CTCgetEpg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 862
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CTChttpRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 857
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 858
    return-void
.end method

.method public CTClanucherActivity()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 867
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "custom":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "huanqiu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    invoke-static {}, Lcom/gemini/custom/huanqiu;->s1()V

    .line 873
    :cond_0
    const-string v3, "turbotv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/gemini/custom/turbo;->isvod:I

    if-ne v3, v5, :cond_3

    .line 874
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v4, Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 876
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v3, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 877
    sput-boolean v5, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 879
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 895
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spainglobal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1cn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 896
    :cond_1
    new-instance v3, Lcom/gemini/goat/ValidateActivity$PluginInterface$2;

    invoke-direct {v3, p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface$2;-><init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V

    .line 907
    invoke-virtual {v3}, Lcom/gemini/goat/ValidateActivity$PluginInterface$2;->start()V

    .line 909
    :cond_2
    return-void

    .line 882
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 883
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v3, Lcom/gemini/goat/ValidateActivity$PluginInterface$1;

    invoke-direct {v3, p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface$1;-><init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public CTClanucherActivity2()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 913
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "custom":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "huanqiu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    invoke-static {}, Lcom/gemini/custom/huanqiu;->s1()V

    .line 919
    :cond_0
    const-string v3, "turbotv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/gemini/custom/turbo;->isvod:I

    if-ne v3, v5, :cond_3

    .line 920
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 921
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v4, Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 923
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v3, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 924
    sput-boolean v5, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 926
    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v3}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 944
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spainglobal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spain1cn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 945
    :cond_1
    new-instance v3, Lcom/gemini/goat/ValidateActivity$PluginInterface$4;

    invoke-direct {v3, p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface$4;-><init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V

    .line 956
    invoke-virtual {v3}, Lcom/gemini/goat/ValidateActivity$PluginInterface$4;->start()V

    .line 959
    :cond_2
    return-void

    .line 929
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 930
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v3, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;

    invoke-direct {v3, p0}, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;-><init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public backActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public showSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1186
    const-string v0, "HTML"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-void
.end method

.method public showUpdateUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$200(Lcom/gemini/goat/ValidateActivity;)V

    .line 1182
    return-void
.end method

.method public vodPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VodPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 732
    return-void
.end method
