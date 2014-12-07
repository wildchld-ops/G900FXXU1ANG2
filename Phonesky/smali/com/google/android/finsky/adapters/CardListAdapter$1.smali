.class Lcom/google/android/finsky/adapters/CardListAdapter$1;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/OnCollapsedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CardListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CardListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CardListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDataChanged()V

    return-void
.end method
