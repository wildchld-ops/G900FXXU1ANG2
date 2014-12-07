.class Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;
.super Ljava/lang/Object;
.source "DetailsReviewsFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DetailsReviewsFooter;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/DetailsReviewsFooter;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/DetailsReviewsFooter;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;->this$0:Lcom/google/android/finsky/layout/DetailsReviewsFooter;

    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method
