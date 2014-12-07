.class Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;
.super Ljava/lang/Object;
.source "SmartDialSearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;->this$0:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;->this$0:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    iget-object v0, v0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;->this$0:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    iget-object v0, v0, Lcom/samsung/dialer/dialpad/SearchFragment;->mAdapter:Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SmartDialSearchFragment$1;->this$0:Lcom/samsung/dialer/dialpad/SmartDialSearchFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/activities/PeopleActivity;->hideDialpadFragment(ZZ)V

    :cond_0
    return-void
.end method
