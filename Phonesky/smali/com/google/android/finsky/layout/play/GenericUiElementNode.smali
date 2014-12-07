.class public Lcom/google/android/finsky/layout/play/GenericUiElementNode;
.super Ljava/lang/Object;
.source "GenericUiElementNode.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->reset(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public reportImpression()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_0

    const-string v0, "Cannot log impression because null parent. Type=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget v3, v3, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method public reset(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v0, p2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clientLogsCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    :cond_0
    iput-object p4, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public setServerLogsCookie([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method
