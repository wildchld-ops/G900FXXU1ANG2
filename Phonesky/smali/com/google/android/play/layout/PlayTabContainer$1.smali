.class Lcom/google/android/play/layout/PlayTabContainer$1;
.super Ljava/lang/Object;
.source "PlayTabContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/layout/PlayTabContainer;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/play/layout/PlayTabContainer;

.field final synthetic val$indexToSelect:I


# direct methods
.method constructor <init>(Lcom/google/android/play/layout/PlayTabContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    iput p2, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->val$indexToSelect:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    # getter for: Lcom/google/android/play/layout/PlayTabContainer;->mPagePreSelectionListener:Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;
    invoke-static {v0}, Lcom/google/android/play/layout/PlayTabContainer;->access$000(Lcom/google/android/play/layout/PlayTabContainer;)Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    # getter for: Lcom/google/android/play/layout/PlayTabContainer;->mPagePreSelectionListener:Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;
    invoke-static {v0}, Lcom/google/android/play/layout/PlayTabContainer;->access$000(Lcom/google/android/play/layout/PlayTabContainer;)Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->val$indexToSelect:I

    invoke-interface {v0, v1}, Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;->onPageAboutToBeSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    # getter for: Lcom/google/android/play/layout/PlayTabContainer;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/google/android/play/layout/PlayTabContainer;->access$100(Lcom/google/android/play/layout/PlayTabContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/play/layout/PlayTabContainer$1;->val$indexToSelect:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
