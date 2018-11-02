.class final Lcom/gemini/play/LIVEplayer$12;
.super Ljava/lang/Object;
.source "LIVEplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LIVEplayer;->playVideoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p2p_needrestart:I

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/gemini/play/LIVEplayer$12;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    iput p3, p0, Lcom/gemini/play/LIVEplayer$12;->val$p2p_needrestart:I

    iput-object p4, p0, Lcom/gemini/play/LIVEplayer$12;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1810
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1811
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1812
    .local v0, "data":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/gemini/play/LIVEplayer$12;->val$url:Ljava/lang/String;

    .line 1813
    .local v7, "str":Ljava/lang/String;
    const-string v9, "url"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "asqgp3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "goatn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1815
    :cond_0
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/magic"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1816
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/magic.php"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_1
    :goto_0
    const-string v9, "needrestart"

    iget v10, p0, Lcom/gemini/play/LIVEplayer$12;->val$p2p_needrestart:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1862
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1863
    const/16 v9, 0x5a

    iput v9, v1, Landroid/os/Message;->what:I

    .line 1864
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$pHandler:Landroid/os/Handler;

    const/16 v10, 0x5a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1865
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$pHandler:Landroid/os/Handler;

    const/16 v10, 0x5a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1866
    :cond_2
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$pHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1867
    return-void

    .line 1817
    :cond_3
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/lb"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1818
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/lb_key_server"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1819
    :cond_4
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/myeytv"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1820
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/myeytv.php"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1821
    :cond_5
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/iwhole"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1822
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/iwhole.php"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1823
    :cond_6
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/ym"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1824
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/ym_key_server"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1825
    :cond_7
    const-string v9, "http://goat.iaarc.com/link_server/goat_paid/tb103"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1826
    const-string v9, "password"

    const-string v10, "http://goat.iaarc.com/link_server/goat_paid/tb103_key"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/gemini/play/MGplayer;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1828
    :cond_8
    const-string v9, "password"

    iget-object v10, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1831
    :cond_9
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    const-string v10, "geminipassword4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1832
    const-string v3, ""

    .line 1833
    .local v3, "ps":Ljava/lang/String;
    const-string v8, ""

    .line 1834
    .local v8, "userid":Ljava/lang/String;
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    const-string v10, "@PWUSERID@"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_a

    .line 1835
    iget-object v9, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    const-string v10, "@PWUSERID@"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1836
    .local v6, "pwuserid":[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_a

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 1837
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 1841
    .end local v6    # "pwuserid":[Ljava/lang/String;
    :cond_a
    invoke-static {v8}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1843
    .local v4, "ps_all":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1844
    new-instance v2, Lcom/gemini/play/TypePasswords;

    invoke-direct {v2}, Lcom/gemini/play/TypePasswords;-><init>()V

    .line 1845
    .local v2, "password_status":Lcom/gemini/play/TypePasswords;
    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1846
    .local v5, "ps_alls":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b

    .line 1847
    sget-wide v10, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, v2, Lcom/gemini/play/TypePasswords;->time:J

    .line 1848
    iput-object v8, v2, Lcom/gemini/play/TypePasswords;->url:Ljava/lang/String;

    .line 1849
    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, v2, Lcom/gemini/play/TypePasswords;->ps:Ljava/lang/String;

    .line 1851
    const/4 v9, 0x0

    aget-object v3, v5, v9

    .line 1854
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ps_all:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1855
    const-string v9, "password"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1858
    .end local v2    # "password_status":Lcom/gemini/play/TypePasswords;
    .end local v3    # "ps":Ljava/lang/String;
    .end local v4    # "ps_all":Ljava/lang/String;
    .end local v5    # "ps_alls":[Ljava/lang/String;
    .end local v8    # "userid":Ljava/lang/String;
    :cond_c
    const-string v9, "password"

    iget-object v10, p0, Lcom/gemini/play/LIVEplayer$12;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
