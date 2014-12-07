.class public Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "CheckoutPurchaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;,
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;,
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareErrorListener;,
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;,
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;,
        Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    }
.end annotation


# instance fields
.field private mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

.field private mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

.field private mCommitRequest:Lcom/google/android/finsky/api/DfeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/DfeRequest",
            "<*>;"
        }
    .end annotation
.end field

.field private mCommitStartedMs:J

.field private mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mExtraPurchaseData:Landroid/os/Bundle;

.field private mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

.field private mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

.field private mPrepareRequest:Lcom/google/android/finsky/api/DfeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/DfeRequest",
            "<*>;"
        }
    .end annotation
.end field

.field private mPrepareStartedMs:J

.field private mServerLogsCookie:[B

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCommitServerLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getTimeElapsedSinceCommitMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;[Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # [Lcom/google/android/finsky/protos/Library$LibraryUpdate;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->handleLibraryUpdates([Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2602(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # Lcom/android/volley/VolleyError;

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;ILcom/android/volley/VolleyError;JJ)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # Lcom/android/volley/VolleyError;
    .param p3    # J
    .param p5    # J

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->logVolleyError(ILcom/android/volley/VolleyError;JJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/protos/Purchase$ClientCart;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/Purchase$ClientCart;)Lcom/google/android/finsky/protos/Purchase$ClientCart;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;[B)[B
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # [B

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getPrepareServerLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getTimeElapsedSincePrepareMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;IIJJ)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p1    # I
    .param p2    # I
    .param p3    # J
    .param p5    # J

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->log(IIJJ)V

    return-void
.end method

.method private static bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .param p0    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static extractExtraPurchaseData(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/google/android/finsky/protos/Common$Docid;)Landroid/os/Bundle;
    .locals 9
    .param p0    # Lcom/google/android/finsky/protos/Library$LibraryUpdate;
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v7, v7, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v7, v7, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    if-eqz v7, :cond_0

    iget-object v3, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    iget-boolean v7, v3, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->hasSignature:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v3, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData:Z

    if-eqz v7, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v7, "inapp_signed_purchase_data"

    iget-object v8, v3, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "inapp_purchase_data_signature"

    iget-object v8, v3, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->signature:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v7, v7, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/16 v8, 0xf

    if-ne v7, v8, :cond_1

    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v7, v7, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    if-eqz v7, :cond_1

    iget-object v6, v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    iget-boolean v7, v6, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->hasSignature:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v6, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->hasSignedPurchaseData:Z

    if-eqz v7, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v7, "inapp_signed_purchase_data"

    iget-object v8, v6, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "inapp_purchase_data_signature"

    iget-object v8, v6, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->signature:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCommitServerLatencyMs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitRequest:Lcom/google/android/finsky/api/DfeRequest;

    if-nez v0, :cond_0

    const-string v0, "Unexpected null commit request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitRequest:Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getServerLatencyMs()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getPrepareServerLatencyMs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareRequest:Lcom/google/android/finsky/api/DfeRequest;

    if-nez v0, :cond_0

    const-string v0, "Unexpected null prepare request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareRequest:Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getServerLatencyMs()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getTimeElapsedSinceCommitMs()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitStartedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "Commit not started."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitStartedMs:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private getTimeElapsedSincePrepareMs()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareStartedMs:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-string v2, "Prepare not started."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareStartedMs:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private handleLibraryUpdates([Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 6
    .param p1    # [Lcom/google/android/finsky/protos/Library$LibraryUpdate;
    .param p2    # Ljava/lang/String;

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-interface {v4, v5, v3, p2}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v4, v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->extractExtraPurchaseData(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/google/android/finsky/protos/Common$Docid;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private log(IIJJ)V
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # J
    .param p5    # J

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget v3, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    move v1, p1

    move v5, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    return-void
.end method

.method private logVolleyError(ILcom/android/volley/VolleyError;JJ)V
    .locals 11
    .param p1    # I
    .param p2    # Lcom/android/volley/VolleyError;
    .param p3    # J
    .param p5    # J

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget v3, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    move v1, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .locals 3
    .param p0    # Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public commit(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x130

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->log(IIJJ)V

    invoke-static {p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/billing/BillingUtils;->getRiskHeader()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitStartedMs:J

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;

    invoke-direct {v4, p0, v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V

    new-instance v5, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;

    invoke-direct {v5, p0, v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->commitPurchase(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/api/DfeRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitRequest:Lcom/google/android/finsky/api/DfeRequest;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    goto :goto_0
.end method

.method public getCart()Lcom/google/android/finsky/protos/Purchase$ClientCart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-object v0
.end method

.method public getCheckoutPurchaseError()Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    return-object v0
.end method

.method public getCompleteChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-object v0
.end method

.method public getExtraPurchaseData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPrepareChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-object v0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    if-eqz v0, :cond_0

    const-string v0, "CheckoutPurchaseFragment.cart"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v0, :cond_1

    const-string v0, "CheckoutPurchaseFragment.prepareChallenge"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v0, :cond_2

    const-string v0, "CheckoutPurchaseFragment.completeChallenge"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v0, "CheckoutPurchaseFragment.extraPurchaseData"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    if-eqz v0, :cond_4

    const-string v0, "CheckoutPurchaseFragment.checkoutPurchaseError"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    if-eqz v0, :cond_5

    const-string v0, "CheckoutPurchaseFragment.serverLogsCookie"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_5
    return-void
.end method

.method public prepare(Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;Ljava/util/Map;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;
    .param p4    # Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    const/16 v2, 0x12e

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->log(IIJJ)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v11, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-static {p3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v8

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-nez v11, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareStartedMs:J

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget v3, v3, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget v7, v5, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appVersionCode:I

    new-instance v9, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;

    const/4 v5, 0x0

    invoke-direct {v9, p0, v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V

    new-instance v10, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareErrorListener;

    const/4 v5, 0x0

    invoke-direct {v10, p0, v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareErrorListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V

    move-object/from16 v5, p4

    move-object v6, p2

    invoke-interface/range {v1 .. v10}, Lcom/google/android/finsky/api/DfeApi;->preparePurchase(Ljava/lang/String;ILcom/google/android/finsky/api/DfeApi$IabParameters;Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;Ljava/lang/String;ILjava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/api/DfeRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareRequest:Lcom/google/android/finsky/api/DfeRequest;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitStartedMs:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCommitRequest:Lcom/google/android/finsky/api/DfeRequest;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/finsky/api/DfeApi$IabParameters;

    iget v2, v11, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    iget-object v3, v11, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget v5, v11, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget-object v6, v11, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/api/DfeApi$IabParameters;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v4, v1

    goto :goto_0
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CheckoutPurchaseFragment.cart"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    const-string v0, "CheckoutPurchaseFragment.prepareChallenge"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const-string v0, "CheckoutPurchaseFragment.completeChallenge"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const-string v0, "CheckoutPurchaseFragment.extraPurchaseData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mExtraPurchaseData:Landroid/os/Bundle;

    const-string v0, "CheckoutPurchaseFragment.checkoutPurchaseError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    const-string v0, "CheckoutPurchaseFragment.serverLogsCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CheckoutPurchaseFragment.serverLogsCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B

    :cond_0
    return-void
.end method
