.class public Lorg/cybergarage/upnp/Device;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cybergarage/http/f;
.implements Lorg/cybergarage/upnp/device/i;


# static fields
.field private static final CONFIG_ID:Ljava/lang/String; = "configId"

.field public static final DEFAULT_DESCRIPTION_URI:Ljava/lang/String; = "/description.xml"

.field public static final DEFAULT_DISCOVERY_WAIT_TIME:I = 0x12c

.field public static final DEFAULT_LEASE_TIME:I = 0x708

.field public static final DEFAULT_PRESENTATION_URI:Ljava/lang/String; = "/presentation"

.field public static final DEFAULT_STARTUP_WAIT_TIME:I = 0x3e8

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final ELEM_NAME:Ljava/lang/String; = "device"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final HTTP_DEFAULT_PORT:I = 0xfa4

.field private static final MANUFACTURE:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURE_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field private static final NAME:Ljava/lang/String; = "Name"

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final SERVICE_LIST_STR:Ljava/lang/String; = "<serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:RenderingControl:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:RenderingControl</serviceId>\n            <SCPDURL>/service/RenderingControl1.xml</SCPDURL>\n            <controlURL>/service/RenderingControl_control</controlURL>\n            <eventSubURL>/service/RenderingControl_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n            <SCPDURL>/service/ConnectionManager1.xml</SCPDURL>\n            <controlURL>/service/ConnectionManager_control</controlURL>\n            <eventSubURL>/service/ConnectionManager_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:AVTransport:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:AVTransport</serviceId>\n            <SCPDURL>/service/AVTransport1.xml</SCPDURL>\n            <controlURL>/service/AVTransport_control</controlURL>\n            <eventSubURL>/service/AVTransport_event</eventSubURL>\n         </service>\n      </serviceList>"

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field public static final UPNP_ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field private static final URLBASE_NAME:Ljava/lang/String; = "URLBase"

.field private static cal:Ljava/util/Calendar; = null

.field private static final presentationURL:Ljava/lang/String; = "presentationURL"


# instance fields
.field private bootId:I

.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lorg/cybergarage/xml/b;

.field public encryption:Z

.field private iconBytesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private presentationListener:Lorg/cybergarage/upnp/device/g;

.field private rootNode:Lorg/cybergarage/xml/b;

.field private userData:Ljava/lang/Object;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/cybergarage/upnp/g;->f()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/File;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/InputStream;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/cybergarage/upnp/Device;->encryption:Z

    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    iput-object p2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    const-string v1, "serviceList"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v1

    :try_start_0
    const-string v2, "<serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:RenderingControl:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:RenderingControl</serviceId>\n            <SCPDURL>/service/RenderingControl1.xml</SCPDURL>\n            <controlURL>/service/RenderingControl_control</controlURL>\n            <eventSubURL>/service/RenderingControl_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n            <SCPDURL>/service/ConnectionManager1.xml</SCPDURL>\n            <controlURL>/service/ConnectionManager_control</controlURL>\n            <eventSubURL>/service/ConnectionManager_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:AVTransport:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:AVTransport</serviceId>\n            <SCPDURL>/service/AVTransport1.xml</SCPDURL>\n            <controlURL>/service/AVTransport_control</controlURL>\n            <eventSubURL>/service/AVTransport_event</eventSubURL>\n         </service>\n      </serviceList>"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/c;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_0
    invoke-static {}, Lorg/cybergarage/upnp/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->setWirelessMode(Z)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_0
.end method

.method private deviceActionControlRecieved(Lorg/cybergarage/upnp/a/b;Lorg/cybergarage/upnp/e;)V
    .locals 3

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/b;->U()V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/b;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/a/d;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/b;->aa()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ArgumentList;->setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/a;->a(Lorg/cybergarage/upnp/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/a/d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/a/d;)V

    goto :goto_0
.end method

.method private deviceControlRequestRecieved(Lorg/cybergarage/upnp/a/d;Lorg/cybergarage/upnp/e;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/d;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/a/g;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/a/g;-><init>(Lorg/cybergarage/http/e;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceQueryControlRecieved(Lorg/cybergarage/upnp/a/g;Lorg/cybergarage/upnp/e;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/a/b;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/a/b;-><init>(Lorg/cybergarage/http/e;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceActionControlRecieved(Lorg/cybergarage/upnp/a/b;Lorg/cybergarage/upnp/e;)V

    goto :goto_0
.end method

.method private deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V
    .locals 5

    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/f;->V()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/f;->Z()J

    move-result-wide v2

    invoke-static {}, Lorg/cybergarage/upnp/event/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/cybergarage/upnp/event/d;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/d;-><init>()V

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/event/d;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lorg/cybergarage/upnp/event/d;->a(J)V

    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/event/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/event/d;)V

    new-instance v0, Lorg/cybergarage/upnp/event/g;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/g;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/event/g;->d(I)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/event/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/event/g;->b(J)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->E()V

    :cond_0
    invoke-virtual {p2, v0}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/event/g;)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->E()V

    :cond_1
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/e;->a(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V

    goto :goto_0
.end method

.method private deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V
    .locals 5

    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/f;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/e;->j(Ljava/lang/String;)Lorg/cybergarage/upnp/event/d;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/f;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/event/d;->a(J)V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/d;->k()V

    new-instance v1, Lorg/cybergarage/upnp/event/g;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/g;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/event/g;->d(I)V

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/event/g;->m(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/event/g;->b(J)V

    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/event/g;)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/g;->E()V

    goto :goto_0
.end method

.method private deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;)V
    .locals 3

    const/16 v2, 0x19c

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->T()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->W()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->Y()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/f;->Y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v2}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V

    goto :goto_0
.end method

.method private deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/event/f;)V
    .locals 3

    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/f;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/e;->j(Ljava/lang/String;)Lorg/cybergarage/upnp/event/d;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/e;->b(Lorg/cybergarage/upnp/event/d;)V

    new-instance v0, Lorg/cybergarage/upnp/event/g;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/g;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/event/g;->d(I)V

    invoke-virtual {p2, v0}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/event/g;)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->E()V

    goto :goto_0
.end method

.method private deviceQueryControlRecieved(Lorg/cybergarage/upnp/a/g;Lorg/cybergarage/upnp/e;)V
    .locals 2

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/g;->U()V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/a/g;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/cybergarage/upnp/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/a/d;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/f;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v0, p1, v1}, Lorg/cybergarage/upnp/f;->a(Lorg/cybergarage/upnp/a/g;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/a/d;)V

    goto :goto_0
.end method

.method private getAdvertiser()Lorg/cybergarage/upnp/device/a;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->n()Lorg/cybergarage/upnp/device/a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->updateURLBase(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lorg/cybergarage/upnp/b/c;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/b/c;

    invoke-direct {v0}, Lorg/cybergarage/upnp/b/c;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/c;->b(Lorg/cybergarage/xml/b;)V

    :cond_0
    return-object v0
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->e()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    goto :goto_0
.end method

.method private getNotifyDeviceTypeNT()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceTypeUSN()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceUSN()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->h()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private httpGetRequestRecieved(Lorg/cybergarage/http/e;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->H()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpGetRequestRecieved = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->T()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {}, Lorg/cybergarage/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "text/xml; charset=\"utf-8\""

    const-string v1, "en"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_1
    new-instance v3, Lorg/cybergarage/http/g;

    invoke-direct {v3}, Lorg/cybergarage/http/g;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lorg/cybergarage/http/g;->d(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lorg/cybergarage/http/g;->h(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Lorg/cybergarage/http/g;->i(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v2}, Lorg/cybergarage/http/g;->a([B)V

    invoke-virtual {p1, v3}, Lorg/cybergarage/http/e;->a(Lorg/cybergarage/http/g;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->M()Ljava/lang/String;

    move-result-object v2

    const-string v0, "text/xml; charset=\"utf-8\""

    const-string v1, "en"

    invoke-direct {v3, v2}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v0, "text/xml; charset=\"utf-8\""

    const-string v1, "en"

    invoke-virtual {v3}, Lorg/cybergarage/upnp/e;->k()[B

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->isIconBytesURI(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getIconByURI(Ljava/lang/String;)Lorg/cybergarage/upnp/d;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/cybergarage/upnp/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/cybergarage/upnp/d;->g()[B

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->T()Z

    goto :goto_0

    :cond_9
    move-object v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method private httpPostRequestRecieved(Lorg/cybergarage/http/e;)V
    .locals 2

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->I()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapActionRecieved(Lorg/cybergarage/http/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->T()Z

    goto :goto_0
.end method

.method private initializeLoadedDescription()Z
    .locals 1

    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setLeaseTime(I)V

    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->updateUDN()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lorg/cybergarage/upnp/a/d;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/upnp/a/c;

    invoke-direct {v0}, Lorg/cybergarage/upnp/a/c;-><init>()V

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/a/e;->e(I)V

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/a/d;->a(Lorg/cybergarage/http/g;)Z

    return-void
.end method

.method private invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/a/d;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/upnp/a/c;

    invoke-direct {v0}, Lorg/cybergarage/upnp/a/c;-><init>()V

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/a/e;->e(I)V

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/a/d;->a(Lorg/cybergarage/http/g;)Z

    return-void
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDeviceNode(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "device"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPresentationRequest(Lorg/cybergarage/http/e;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->B()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->H()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getPresentationURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final notifyWait()V
    .locals 1

    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    return-void
.end method

.method private setAdvertiser(Lorg/cybergarage/upnp/device/a;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a(Lorg/cybergarage/upnp/device/a;)V

    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a(Ljava/io/File;)V

    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private setURLBase(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "URLBase"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->i()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/b;I)V

    goto :goto_0
.end method

.method private setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    return-void
.end method

.method private soapActionRecieved(Lorg/cybergarage/http/e;)V
    .locals 2

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/cybergarage/upnp/a/b;

    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/a/b;-><init>(Lorg/cybergarage/http/e;)V

    invoke-direct {p0, v1, v0}, Lorg/cybergarage/upnp/Device;->deviceControlRequestRecieved(Lorg/cybergarage/upnp/a/d;Lorg/cybergarage/upnp/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapBadActionRecieved(Lorg/cybergarage/http/e;)V

    goto :goto_0
.end method

.method private soapBadActionRecieved(Lorg/cybergarage/http/e;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/b/c;

    invoke-direct {v0}, Lorg/cybergarage/b/c;-><init>()V

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/cybergarage/b/c;->d(I)V

    invoke-virtual {p1, v0}, Lorg/cybergarage/http/e;->a(Lorg/cybergarage/http/g;)Z

    return-void
.end method

.method private stop(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->byebye()V

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->stop()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->close()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/a;->stop()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/a;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private updateBootId()V
    .locals 1

    invoke-static {}, Lorg/cybergarage/upnp/g;->c()I

    move-result v0

    iput v0, p0, Lorg/cybergarage/upnp/Device;->bootId:I

    return-void
.end method

.method private updateConfigId(Lorg/cybergarage/upnp/Device;)V
    .locals 7

    const v6, 0xffffff

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/Device;->updateConfigId(Lorg/cybergarage/upnp/Device;)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getConfigId()I

    move-result v3

    add-int/2addr v1, v3

    and-int v3, v1, v6

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/e;->f()V

    invoke-virtual {v4}, Lorg/cybergarage/upnp/e;->g()I

    move-result v4

    add-int/2addr v1, v4

    and-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/upnp/g;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    and-int/2addr v1, v6

    const-string v2, "configId"

    invoke-virtual {v0, v2, v1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private updateUDN()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    return-void
.end method

.method private updateURLBase(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setURLBase(Ljava/lang/String;)V

    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;I)V
    .locals 1

    new-instance v0, Lorg/cybergarage/upnp/event/g;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/g;-><init>()V

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/event/g;->e(I)V

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/event/g;)V

    return-void
.end method


# virtual methods
.method public addDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "deviceList"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "deviceList"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "specVersion"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/cybergarage/xml/b;

    const-string v3, "major"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    new-instance v3, Lorg/cybergarage/xml/b;

    const-string v4, "minor"

    invoke-direct {v3, v4}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/b;)V

    :cond_1
    return-void
.end method

.method public addIcon(Lorg/cybergarage/upnp/d;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "iconList"

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v2, "iconList"

    invoke-direct {v0, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_1
    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "icon"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->a()Lorg/cybergarage/xml/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->a()Lorg/cybergarage/xml/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->b(Lorg/cybergarage/xml/b;)Z

    :cond_2
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/d;->g()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addService(Lorg/cybergarage/upnp/e;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "serviceList"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "serviceList"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public announce()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->f()[Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/cybergarage/a/a;->b()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/cybergarage/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v4

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/cybergarage/upnp/ssdp/e;

    invoke-direct {v2, p1}, Lorg/cybergarage/upnp/ssdp/e;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/cybergarage/upnp/ssdp/d;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ssdp/d;-><init>()V

    invoke-static {}, Lorg/cybergarage/upnp/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ssdp/d;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ssdp/d;->f(I)V

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->s(Ljava/lang/String;)V

    const-string v1, "ssdp:alive"

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getBootId()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->g(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/e;->f()Z

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/e;->h(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public byebye()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->f()[Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/cybergarage/a/a;->b()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/cybergarage/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v4

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/cybergarage/upnp/ssdp/e;

    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/ssdp/e;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/cybergarage/upnp/ssdp/d;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/d;-><init>()V

    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/d;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/e;->f()Z

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/e;->i(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/f;)V

    return-void
.end method

.method public deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    if-ne v3, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "::upnp:rootdevice"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v5, :cond_3

    const/4 v1, 0x3

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, p1, v4, v0}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_6

    if-ne v3, v5, :cond_5

    const-string v1, "upnp:rootdevice"

    invoke-virtual {p0, p1, v1, v0}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_8

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/ssdp/f;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->c(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0, p1, v3, v0}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_3
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-static {p3, p1}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/http/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/cybergarage/http/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object p1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :goto_2
    invoke-static {p2, p1}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object p1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/a;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_4

    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/e;->l()Lorg/cybergarage/upnp/ActionList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v7

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_3

    invoke-virtual {v6, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/a;->c()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_3
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getBootId()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/Device;->bootId:I

    return v0
.end method

.method public getChipId()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    :cond_0
    return-object v0
.end method

.method public getConfigId()I
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "configId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 6

    new-instance v0, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    const-string v2, "deviceList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/b;->g()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/upnp/Device;->isDeviceNode(Lorg/cybergarage/xml/b;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/cybergarage/upnp/Device;

    invoke-direct {v5, v4}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDeviceNode()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->f()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->g()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lorg/cybergarage/upnp/d;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v0

    if-gez p1, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/d;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconByURI(Ljava/lang/String;)Lorg/cybergarage/upnp/d;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getIconList()Lorg/cybergarage/upnp/IconList;
    .locals 7

    new-instance v1, Lorg/cybergarage/upnp/IconList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/IconList;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v2, "iconList"

    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Lorg/cybergarage/xml/b;->g()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/d;->a(Lorg/cybergarage/xml/b;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/cybergarage/upnp/d;

    invoke-direct {v5, v0}, Lorg/cybergarage/upnp/d;-><init>(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v5}, Lorg/cybergarage/upnp/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lorg/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/d;->a([B)V

    :cond_2
    invoke-virtual {v1, v5}, Lorg/cybergarage/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLeaseTime()I
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/f;->u()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->d()I

    move-result v0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/f;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufactureURL()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentDevice()Lorg/cybergarage/upnp/Device;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;)V

    goto :goto_0
.end method

.method public getPresentationListener()Lorg/cybergarage/upnp/device/g;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->presentationListener:Lorg/cybergarage/upnp/device/g;

    return-object v0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "device"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    goto :goto_0
.end method

.method public getRootNode()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->b()Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPAnnounceCount()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isWirelessMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->j()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getSSDPIPv6MulticastAddress()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv6MulticastAddress(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->m()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPPort()I
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/c;->i()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/e;->g(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/e;->b(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/e;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceList()Lorg/cybergarage/upnp/ServiceList;
    .locals 6

    new-instance v0, Lorg/cybergarage/upnp/ServiceList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ServiceList;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/b;->g()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/xml/b;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/cybergarage/upnp/e;

    invoke-direct {v5, v4}, Lorg/cybergarage/upnp/e;-><init>(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSmallestIcon()Lorg/cybergarage/upnp/d;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/d;

    move-result-object v0

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/d;->c()I

    move-result v5

    invoke-virtual {v1}, Lorg/cybergarage/upnp/d;->c()I

    move-result v6

    if-lt v5, v6, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/f;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/f;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Lorg/cybergarage/upnp/e;->e(Ljava/lang/String;)Lorg/cybergarage/upnp/f;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/f;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/e;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTimeStamp()J
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/f;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(http://\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}:\\d+).*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasPresentationListener()Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->presentationListener:Lorg/cybergarage/upnp/device/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUDN()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->U()V

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->hasPresentationListener()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->isPresentationRequest(Lorg/cybergarage/http/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getPresentationListener()Lorg/cybergarage/upnp/device/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/g;->a(Lorg/cybergarage/http/e;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->B()Z

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->D()Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpGetRequestRecieved(Lorg/cybergarage/http/e;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->C()Z

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpPostRequestRecieved(Lorg/cybergarage/http/e;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->E()Z

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->F()Z

    move-result v0

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v0, Lorg/cybergarage/upnp/event/f;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/event/f;-><init>(Lorg/cybergarage/http/e;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/f;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->T()Z

    goto :goto_0
.end method

.method public isDevice(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isDeviceType(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    int-to-long v2, v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconBytesURI(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->getIconByURI(Ljava/lang/String;)Lorg/cybergarage/upnp/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/d;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "INMPR03"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelessMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/c;->parse(Ljava/io/File;)Lorg/cybergarage/xml/b;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root node"

    invoke-direct {v0, v1, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v0
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    if-nez v0, :cond_1

    new-instance v0, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root device node"

    invoke-direct {v0, v1, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v0
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v6, -0x1

    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v6, v5, :cond_0

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v2, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/StringUtil;->eds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/c;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    if-nez v1, :cond_1

    new-instance v1, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v2, "Couldn\'t find a root node"

    invoke-direct {v1, v2}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    if-nez v1, :cond_2

    new-instance v1, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v2, "Couldn\'t find a root device node"

    invoke-direct {v1, v2}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/c;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root node"

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    if-nez v0, :cond_1

    new-instance v0, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root device node"

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    return-void
.end method

.method public postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/cybergarage/upnp/ssdp/j;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ssdp/j;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ssdp/j;->e(I)V

    sget-object v2, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ssdp/j;->a(Ljava/util/Calendar;)V

    invoke-virtual {v1, p2}, Lorg/cybergarage/upnp/ssdp/j;->m(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lorg/cybergarage/upnp/ssdp/j;->o(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/j;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getBootId()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/j;->f(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/j;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->o()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->e()I

    move-result v3

    new-instance v4, Lorg/cybergarage/upnp/ssdp/k;

    invoke-direct {v4}, Lorg/cybergarage/upnp/ssdp/k;-><init>()V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/j;->E()V

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v2, v3, v1}, Lorg/cybergarage/upnp/ssdp/k;->a(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/j;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method public removePresentationURL()Z
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/a/a;)V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/a/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActionListener(Lorg/cybergarage/upnp/a/a;Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/a/a;)V

    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/a/a;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeviceNode(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method public setHTTPPort(I)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->b(I)V

    return-void
.end method

.method public setLeaseTime(I)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a(I)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/a;->restart()V

    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setManufactureURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "INMPR03"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->i(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v1, "INMPR03"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->i(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setPresentationListener(Lorg/cybergarage/upnp/device/g;)V
    .locals 1

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->presentationListener:Lorg/cybergarage/upnp/device/g;

    if-eqz p1, :cond_0

    const-string v0, "/presentation"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setPresentationURL(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->removePresentationURL()Z

    goto :goto_0
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/a/f;)V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/a/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/a/f;Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/a/f;)V

    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/a/f;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRootNode(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->b([Ljava/net/InetAddress;)V

    return-void
.end method

.method public setSSDPPacket(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->a(Lorg/cybergarage/upnp/ssdp/f;)V

    return-void
.end method

.method public setSSDPPort(I)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/c;->c(I)V

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUPC(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-void
.end method

.method public setWirelessMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    return-void
.end method

.method public start()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v0}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x64

    if-ge v5, v1, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/f;)V

    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPServerList;->start()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lorg/cybergarage/upnp/device/i;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->start()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->updateBootId()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->updateConfigId()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    new-instance v0, Lorg/cybergarage/upnp/device/a;

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/device/a;-><init>(Lorg/cybergarage/upnp/Device;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/a;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/a;->start()V

    move v2, v3

    goto :goto_1
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    return-void
.end method

.method public updateConfigId()V
    .locals 0

    invoke-direct {p0, p0}, Lorg/cybergarage/upnp/Device;->updateConfigId(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method
