.class Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddressFieldsLayoutHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->hideUpperRightProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;->this$0:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;->this$0:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;->this$0:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
