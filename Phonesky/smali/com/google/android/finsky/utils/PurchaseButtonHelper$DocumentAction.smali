.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentAction"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public actionType:I

.field public document:Lcom/google/android/finsky/api/model/Document;

.field public offerFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

.field public offerFullText:Ljava/lang/String;

.field public offerText:Ljava/lang/String;

.field public offerType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    return-void
.end method
