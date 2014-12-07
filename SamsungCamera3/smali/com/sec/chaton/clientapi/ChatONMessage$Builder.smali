.class public Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
.super Ljava/lang/Object;
.source "ChatONMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/chaton/clientapi/ChatONMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected action:Ljava/lang/String;

.field protected apiver:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected appParamInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected appVersion:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected encoding:Ljava/lang/String;

.field protected mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field protected msg:Ljava/lang/String;

.field protected recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected requiredAccessToken:Z

.field protected type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field protected uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->apiver:Ljava/lang/String;

    sget-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appParamInfo:Ljava/util/List;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->requiredAccessToken:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/chaton/clientapi/ChatONMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage;

    invoke-direct {v0, p0}, Lcom/sec/chaton/clientapi/ChatONMessage;-><init>(Lcom/sec/chaton/clientapi/ChatONMessage$Builder;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->action:Ljava/lang/String;

    return-object p0
.end method

.method public setApiVer(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->apiver:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppParamInfo(Ljava/util/List;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sec/chaton/clientapi/ChatONMessage$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appParamInfo:Ljava/util/List;

    return-object p0
.end method

.method public setAppVer(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 3
    .param p1    # [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->requiredAccessToken:Z

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method
