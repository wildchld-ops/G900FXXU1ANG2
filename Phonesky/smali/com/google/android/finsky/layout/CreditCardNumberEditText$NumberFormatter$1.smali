.class Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;
.super Ljava/lang/Object;
.source "CreditCardNumberEditText.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->playShakeAnimationHoneycomb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;

.field final synthetic val$shakeDelta:F


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;->this$1:Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;

    iput p2, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;->val$shakeDelta:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x40000000

    mul-float/2addr v0, p1

    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;->val$shakeDelta:F

    mul-float/2addr v0, v1

    return v0
.end method
