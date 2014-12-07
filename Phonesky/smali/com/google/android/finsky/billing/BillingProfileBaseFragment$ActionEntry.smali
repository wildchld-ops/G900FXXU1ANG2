.class public Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;
.super Ljava/lang/Object;
.source "BillingProfileBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionEntry"
.end annotation


# instance fields
.field public final action:Landroid/view/View$OnClickListener;

.field public final displayTitle:Ljava/lang/String;

.field public final iconRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->displayTitle:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->iconRes:I

    iput-object p3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->action:Landroid/view/View$OnClickListener;

    return-void
.end method
