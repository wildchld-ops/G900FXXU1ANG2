.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;
.super Ljava/lang/Object;
.source "CarrierOutAssociation.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;",
        ">;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;"
    }
.end annotation


# instance fields
.field private final mAcceptedPiiTosVersion:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mGetSubscriberAddress:Z

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsAddress:Ljava/lang/String;

.field private mSmsPrefix:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mVerificationRetries:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsPrefix:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mAcceptedPiiTosVersion:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mGetSubscriberAddress:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method private dispatch(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dispatchError()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->hasStatus:Z

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method private formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initiateAssociation()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private sendGutToCarrier(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Address to send SMS is unavailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    goto :goto_0
.end method

.method private shouldRetryVerification(Lcom/android/volley/VolleyError;)Z
    .locals 2

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mVerificationRetries:I

    sget-object v0, Lcom/google/android/finsky/config/G;->dcb3VerifyAssociationRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyAssociation()V
    .locals 6

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mAcceptedPiiTosVersion:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mGetSubscriberAddress:Z

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->verifyAssociation(Ljava/lang/String;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->shouldRetryVerification(Lcom/android/volley/VolleyError;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mVerificationRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mVerificationRetries:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while receiving Volley response in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;->userToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->sendGutToCarrier(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Invalid Google User Token received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->onResponse(Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;)V

    return-void
.end method

.method public onResult(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    if-ne p1, v0, :cond_0

    const-string v0, "Sending Sms Failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->cancel()V

    :cond_0
    return-void
.end method

.method public resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "association_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    const-string v0, "association_retries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mVerificationRetries:I

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->initiateAssociation()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "association_state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "association_retries"

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mVerificationRetries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->cancel()V

    return-void
.end method

.method public setListener(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method public start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->initiateAssociation()V

    return-void
.end method
