.class public Lcom/google/android/finsky/api/DfeApiImpl;
.super Ljava/lang/Object;
.source "DfeApiImpl.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeApiImpl$TocListener;
    }
.end annotation


# static fields
.field private static final BULK_DETAILS_BACKOFF_MULT:F

.field private static final BULK_DETAILS_MAX_RETRIES:I

.field private static final BULK_DETAILS_TIMEOUT_MS:I

.field private static final PLUS_PROFILE_BG_BACKOFF_MULT:F

.field private static final PLUS_PROFILE_BG_MAX_RETRIES:I

.field private static final PLUS_PROFILE_BG_TIMEOUT_MS:I

.field private static final PURCHASE_TIMEOUT_MS:I

.field private static final REPLICATE_LIBRARY_BACKOFF_MULT:F

.field private static final REPLICATE_LIBRARY_MAX_RETRIES:I

.field private static final REPLICATE_LIBRARY_TIMEOUT_MS:I

.field private static final VERIFY_ASSOCIATION_MAX_RETRIES:I

.field private static final VERIFY_ASSOCIATION_TIMEOUT_MS:I


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_MAX_RETRIES:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsBackoffMultiplier:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_BACKOFF_MULT:F

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->plusProfileBgTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_TIMEOUT_MS:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->plusProfileBgMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_MAX_RETRIES:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->plusProfileBgBackoffMult:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_BACKOFF_MULT:F

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->replicateLibraryTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_TIMEOUT_MS:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->replicateLibraryMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_MAX_RETRIES:I

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->replicateLibraryBackoffMultiplier:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_BACKOFF_MULT:F

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V
    .locals 0
    .param p1    # Lcom/android/volley/RequestQueue;
    .param p2    # Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/DfeApiImpl;

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method private static encodeServerToken([B)Ljava/lang/String;
    .locals 1
    .param p0    # [B

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "dfil"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-lez p2, :cond_1

    const-string v1, "vc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-lez p3, :cond_2

    const-string v1, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v1, "sort"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;
    .locals 5

    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    return-object v0
.end method


# virtual methods
.method public acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Boolean;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ACCEPT_TOS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "tost"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "toscme"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/finsky/api/DfeApiImpl;->ACK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v2

    return-object v2
.end method

.method public addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Z
    .param p7    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ADDREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rating"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ipr"

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public addToLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p2    # Ljava/lang/String;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    iput-object p2, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public archiveFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p2    # Ljava/lang/String;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    iput-object p2, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public billingProfile(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->BILLING_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "ct"

    const-string v2, "dummy-token"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "pct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public checkIabPromo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_IAB_PROMO_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "dt"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shpn"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public checkInstrument(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "ct"

    const-string v2, "dummy-token"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public checkPromoOffers(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_PROMO_OFFER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public commitPurchase(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/api/DfeRequest;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/finsky/api/DfeRequest",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->COMMIT_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "pct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "ct"

    const-string v2, "dummy-token"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "chdi"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/DfeRequest;

    return-object v1
.end method

.method public consumePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ConsumePurchaseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CONSUME_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "pt"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shpn"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public deleteReview(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DELETEREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # [B
    .param p4    # Ljava/lang/Integer;
    .param p5    # Ljava/lang/Integer;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p10    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->DELIVERY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "doc"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v7

    const-string v2, "st"

    invoke-virtual {v8, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p4, :cond_1

    const-string v2, "vc"

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz p5, :cond_2

    const-string v2, "bvc"

    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "pf"

    invoke-virtual {v8, v2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shh"

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ch"

    move-object/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    new-instance v1, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v2

    return-object v2
.end method

.method public flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->FLAG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cft"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method public getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Browse$BrowseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getDetails(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Details$DetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    if-eqz p2, :cond_0

    const-string v1, "X-DFE-No-Prefetch"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl;->getDetails(Ljava/util/Collection;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/util/Collection;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 10
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    const/4 v9, 0x1

    new-instance v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    iput-boolean p3, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    iput-boolean v9, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    iput-boolean v9, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$1;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    move-object v1, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApiImpl$1;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setShouldCache(Z)V

    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    sget v4, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_MAX_RETRIES:I

    sget v5, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_BACKOFF_MULT:F

    iget-object v6, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # [B

    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "dt"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "libid"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getPlusProfile(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .locals 6
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->GET_PLUS_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    if-nez p3, :cond_0

    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_MAX_RETRIES:I

    sget v4, Lcom/google/android/finsky/api/DfeApiImpl;->PLUS_PROFILE_BG_BACKOFF_MULT:F

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p7    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIII",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v2

    return-object v2
.end method

.method public getToc(ZLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Z
    .param p2    # Ljava/lang/String;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Toc$TocResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Toc$TocResponse;

    new-instance v4, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Lcom/android/volley/Response$Listener;)V

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/DfeRequest;->setAllowMultipleResponses(Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-DFE-Device-Config-Token"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_INITIATE_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public invalidateDetailsCache(Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public invalidateListCache(Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public invalidatePlusProfile(Z)V
    .locals 6
    .param p1    # Z

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->GET_PLUS_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, p1, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z

    const/4 v4, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, p6, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public invalidateTocCache()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Toc$TocResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public log(Lcom/google/android/finsky/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/Log$LogRequest;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/Log$LogRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Log$LogResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->LOG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/Log$LogResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setAvoidBulkCancel()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 8
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p10    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Buy$BuyResponse;

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "doc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "vc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    iget v2, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "ct"

    const-string v2, "dummy-token"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const-string v1, "bav"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shpn"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shh"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shvc"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_1

    const-string p7, ""

    :cond_1
    const-string v1, "payload"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p8, :cond_3

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 11
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchase(Lcom/google/android/finsky/api/model/Document;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public preparePurchase(Ljava/lang/String;ILcom/google/android/finsky/api/DfeApi$IabParameters;Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;Ljava/lang/String;ILjava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/api/DfeRequest;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/api/DfeApi$IabParameters;
    .param p4    # Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p9    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/finsky/api/DfeApi$IabParameters;",
            "Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/finsky/api/DfeRequest",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PREPARE_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    const-string v2, "dummy-token"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string v1, "ii"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez p6, :cond_1

    const-string v1, "vc"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Lcom/google/android/finsky/api/DfeApi$IabParameters;->addToRequest(Lcom/google/android/finsky/api/DfeApi$DfePostRequest;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4, v0}, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->addToRequest(Lcom/google/android/finsky/api/DfeApi$DfePostRequest;)V

    :cond_3
    if-eqz p7, :cond_4

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/DfeRequest;

    return-object v1
.end method

.method public rateReview(Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v6, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->RATEREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "revId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v6, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/RateSuggestedContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public redeemCode(Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REDEEM_CODE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->setRequireAuthenticatedResponse()V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public removeFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p2    # Ljava/lang/String;
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    iput-object p2, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public replicateLibrary(Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRequireAuthenticatedResponse()V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setAvoidBulkCancel()V

    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_MAX_RETRIES:I

    sget v4, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_BACKOFF_MULT:F

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->RESOLVE_LINK:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/RevokeResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REVOKE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/RevokeResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRequireAuthenticatedResponse()V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Search$SearchResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/Search$SearchResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p4    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PLUSONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rating"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateInstrument(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    const-string v1, "dummy-token"

    iput-object v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->checkoutToken:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->hasCheckoutToken:Z

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/ProtoDfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method public uploadDeviceConfig(Lcom/google/android/finsky/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/DeviceConfigurationProto;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/DeviceConfigurationProto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, v2, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, v2, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    :cond_1
    sget-object v3, Lcom/google/android/finsky/api/DfeApiImpl;->UPLOAD_DEVICE_CONFIG:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "X-DFE-Device-Config-Token"

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/api/ProtoDfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    return-object v3
.end method

.method public verifyAssociation(Ljava/lang/String;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_VERIFY_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dcbptosv"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "dcbreqaddr"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method
