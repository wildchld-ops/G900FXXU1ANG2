.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextStyle"
.end annotation


# instance fields
.field public offerFullText:Ljava/lang/String;

.field public offerText:Ljava/lang/String;

.field public resourceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/res/Resources;

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    return-void
.end method
