.class Lcom/google/android/finsky/layout/SongSnippet$5;
.super Ljava/lang/Object;
.source "SongSnippet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;

.field final synthetic val$currentAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    iput-object p2, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->val$currentAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$400(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->val$currentAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$5;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongSnippet;->access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    const/4 v3, 0x1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
