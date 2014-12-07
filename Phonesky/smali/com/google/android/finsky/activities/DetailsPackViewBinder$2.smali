.class Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->access$400(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->access$100(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->access$200(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->access$300(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
