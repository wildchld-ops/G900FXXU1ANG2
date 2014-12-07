.class Lcom/google/android/play/layout/PlayTabContainer$2;
.super Ljava/lang/Object;
.source "PlayTabContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/play/layout/PlayTabContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTabContainer$2;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer$2;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTabContainer$2;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    # getter for: Lcom/google/android/play/layout/PlayTabContainer;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/google/android/play/layout/PlayTabContainer;->access$100(Lcom/google/android/play/layout/PlayTabContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/google/android/play/layout/PlayTabContainer;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->access$200(Lcom/google/android/play/layout/PlayTabContainer;II)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer$2;->this$0:Lcom/google/android/play/layout/PlayTabContainer;

    # getter for: Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;
    invoke-static {v0}, Lcom/google/android/play/layout/PlayTabContainer;->access$300(Lcom/google/android/play/layout/PlayTabContainer;)Lcom/google/android/play/layout/PlayTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
