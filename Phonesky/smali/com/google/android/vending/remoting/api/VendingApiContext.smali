.class public Lcom/google/android/vending/remoting/api/VendingApiContext;
.super Ljava/lang/Object;
.source "VendingApiContext.java"


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mContext:Landroid/content/Context;

.field private mHasPerformedInitialSecureTokenInvalidation:Z

.field private mHasPerformedInitialTokenInvalidation:Z

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAuthToken:Ljava/lang/String;

.field private mLastSecureAuthToken:Ljava/lang/String;

.field private mReauthenticate:Z

.field private mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

.field private final mSecureAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/util/Locale;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Ljava/lang/String;
    .param p11    # Ljava/lang/String;
    .param p12    # Ljava/lang/String;
    .param p13    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "User-Agent"

    const-string v3, "Android-Market/2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v1, Lcom/google/android/finsky/config/G;->vendingAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v1, Lcom/google/android/finsky/config/G;->vendingSecureAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mSecureAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput-object p4, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput p5, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->softwareVersion:I

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    if-eqz p6, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput-object p6, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    :cond_0
    if-eqz p7, :cond_1

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput-object p7, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    :cond_1
    if-eqz p8, :cond_2

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput-object p8, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    :cond_2
    if-eqz p9, :cond_3

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    iput-object p9, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    invoke-direct {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkUrlRewrites()V

    return-void
.end method

.method private checkRewrittenToSecureUrl(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/volley/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL blocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkUrlIsSecure(Ljava/lang/String;)V

    return-void
.end method

.method private static checkUrlIsSecure(Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "corp.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insecure URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkUrlRewrites()V
    .locals 1

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    invoke-direct {p0, v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkRewrittenToSecureUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestProperties(Z)Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;
    .locals 5
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialSecureTokenInvalidation:Z

    if-eqz v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialTokenInvalidation:Z

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    if-eqz p1, :cond_3

    iput-boolean v4, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialSecureTokenInvalidation:Z

    :cond_2
    :goto_0
    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getSecureAuthToken()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthToken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    iput-boolean p1, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    iput-boolean v4, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialTokenInvalidation:Z

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAuthToken()Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot happen."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureAuthToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mSecureAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mSecureAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public invalidateAuthToken(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v1, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    goto :goto_1
.end method

.method public scheduleReauthentication(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    return-void
.end method
