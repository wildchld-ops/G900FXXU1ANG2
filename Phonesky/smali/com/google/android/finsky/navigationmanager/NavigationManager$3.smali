.class Lcom/google/android/finsky/navigationmanager/NavigationManager$3;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->canUseAsPartialDocument()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1, v0, v3, v3, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
