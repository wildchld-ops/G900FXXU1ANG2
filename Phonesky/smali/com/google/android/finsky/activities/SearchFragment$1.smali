.class Lcom/google/android/finsky/activities/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SearchFragment;->rebindAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SearchFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    # getter for: Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SearchFragment;->access$000(Lcom/google/android/finsky/activities/SearchFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    # getter for: Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SearchFragment;->access$100(Lcom/google/android/finsky/activities/SearchFragment;)Lcom/google/android/finsky/adapters/CardListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    # getter for: Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SearchFragment;->access$100(Lcom/google/android/finsky/activities/SearchFragment;)Lcom/google/android/finsky/adapters/CardListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    # getter for: Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/finsky/activities/SearchFragment;->access$000(Lcom/google/android/finsky/activities/SearchFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment$1;->this$0:Lcom/google/android/finsky/activities/SearchFragment;

    # getter for: Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/SearchFragment;->access$200(Lcom/google/android/finsky/activities/SearchFragment;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
