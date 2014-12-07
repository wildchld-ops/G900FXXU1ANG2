.class Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardUiElementNode"
.end annotation


# instance fields
.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSentImpression:Z

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getCardType()I

    move-result v0

    # invokes: Lcom/google/android/finsky/utils/PlayCardUtils;->convertCardTypeToUiElementType(I)I
    invoke-static {v0}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$600(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mSentImpression:Z

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public getSentImpression()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mSentImpression:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mSentImpression:Z

    return-void
.end method

.method public setParentNode(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public setSentImpression(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->mSentImpression:Z

    return-void
.end method
