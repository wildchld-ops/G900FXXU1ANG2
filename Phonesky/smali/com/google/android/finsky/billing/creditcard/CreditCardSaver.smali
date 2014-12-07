.class public Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "CreditCardSaver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$1;,
        Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;,
        Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/SidecarFragment;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorHtml:Ljava/lang/String;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->performRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->logError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/android/volley/VolleyError;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setVolleyError(Lcom/android/volley/VolleyError;I)V

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mVolleyError:Lcom/android/volley/VolleyError;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-void
.end method

.method private static isInputValidationResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuccess(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .locals 1

    iget v0, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logError(ILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x14c

    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private performRequest()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v1, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private queueEscrowCredentialsRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    xor-long v2, v3, v7

    invoke-direct {v6, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;

    new-instance v4, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;

    invoke-direct {v4, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$1;)V

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;

    invoke-direct {v5, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$1;)V

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private setErrorWithMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    invoke-virtual {p0, v0, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    return-void
.end method

.method private setErrorWithMessageWithChoice(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    return-void
.end method

.method private setVolleyError(Lcom/android/volley/VolleyError;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mVolleyError:Lcom/android/volley/VolleyError;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    return-void
.end method


# virtual methods
.method public getErrorHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setVolleyError(Lcom/android/volley/VolleyError;I)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 7

    const v3, 0x7f09007e

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_0

    const-string v0, "AddCreditCard Response is null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setErrorWithMessage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->isSuccess(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x14b

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->isInputValidationResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->logError(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->logError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setErrorWithMessageWithChoice(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->logError(ILjava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setErrorWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CreditCardSaver.message"

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-eqz v0, :cond_0

    const-string v0, "CreditCardSaver.addCreditCardResponse"

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getSubstate()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    :cond_0
    const-string v0, "CreditCardSaver.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mErrorHtml:Ljava/lang/String;

    const-string v0, "CreditCardSaver.addCreditCardResponse"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mAddCreditCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-void
.end method

.method public saveCreditCard(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getState()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "saveCreditCard() called while RUNNING."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x14a

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->clearState()V

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->queueEscrowCredentialsRequest(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setState(II)V

    return-void
.end method
