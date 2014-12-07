.class final Lcom/google/android/finsky/billing/PromptForFopHelper$1;
.super Ljava/lang/Object;
.source "PromptForFopHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/PromptForFopHelper;->refreshHasFopCacheIfNecessary(Lcom/google/android/finsky/api/DfeApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/PromptForFopHelper$1;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    iget-object v0, p0, Lcom/google/android/finsky/billing/PromptForFopHelper$1;->val$accountName:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;->userHasValidInstrument:Z

    # invokes: Lcom/google/android/finsky/billing/PromptForFopHelper;->updateHasValidFopCache(Ljava/lang/String;Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->access$000(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/PromptForFopHelper$1;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;)V

    return-void
.end method
