.class Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;
.super Ljava/lang/Object;
.source "TabbedBrowseFragment.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/TabbedBrowseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageAboutToBeSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageAboutToBeSelected(I)V

    return-void
.end method
