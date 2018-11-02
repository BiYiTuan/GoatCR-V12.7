.class public Lcom/memo/cable/MemoStatusPacket;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_AP_NORMAL:I = 0x1

.field public static final STATUS_AP_TO_STATION:I = 0x2

.field public static final STATUS_PSW_WRONG:I = 0x1b59

.field public static final STATUS_STATION:I = 0x3


# instance fields
.field public apName:Ljava/lang/String;

.field public chipId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public localTime:J

.field public pw:Ljava/lang/String;

.field public reciveSSID:Ljava/lang/String;

.field public status:I

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/memo/cable/MemoStatusPacket;->parse(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/memo/cable/MemoStatusPacket;->localTime:J

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->reciveSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->reciveSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->reciveSSID:Ljava/lang/String;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/memo/cable/MemoStatusPacket;->reciveSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->reciveSSID:Ljava/lang/String;

    :cond_0
    const-string v0, "devname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->deviceName:Ljava/lang/String;

    const-string v0, "pw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->pw:Ljava/lang/String;

    const-string v0, "ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->ip:Ljava/lang/String;

    iget-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->ip:Ljava/lang/String;

    :cond_1
    const-string v0, "chipid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->chipId:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->timestamp:Ljava/lang/String;

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/memo/cable/MemoStatusPacket;->status:I

    const-string v0, "apname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/cable/MemoStatusPacket;->apName:Ljava/lang/String;

    return-void
.end method
