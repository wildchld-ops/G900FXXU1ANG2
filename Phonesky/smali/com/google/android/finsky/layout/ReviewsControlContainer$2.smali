.class Lcom/google/android/finsky/layout/ReviewsControlContainer$2;
.super Ljava/lang/Object;
.source "ReviewsControlContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ReviewsControlContainer;->configure(Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ReviewsControlContainer;

.field final synthetic val$listingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;->this$0:Lcom/google/android/finsky/layout/ReviewsControlContainer;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;->val$listingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;->val$listingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;->onChooseFilterOptions()V

    return-void
.end method
