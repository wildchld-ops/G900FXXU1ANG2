.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->createContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

.field final synthetic val$metadata:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Lcom/google/android/finsky/protos/Toc$CorpusMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->val$metadata:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->val$metadata:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->val$metadata:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I
    invoke-static {v3}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$600(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$200(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method
