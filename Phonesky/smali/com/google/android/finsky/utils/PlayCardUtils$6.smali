.class final Lcom/google/android/finsky/utils/PlayCardUtils$6;
.super Lcom/google/android/finsky/utils/PlayCardCustomizer;
.source "PlayCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/utils/PlayCardCustomizer",
        "<",
        "Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/PlayCardCustomizer;-><init>()V

    return-void
.end method


# virtual methods
.method public preBind(Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v5, v5

    if-ne v5, v3, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->getReason2()Lcom/google/android/play/layout/PlayCardReason;

    move-result-object v1

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/play/layout/PlayCardReason;->setSizeMode(I)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public bridge synthetic preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/PlayCardUtils$6;->preBind(Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method
