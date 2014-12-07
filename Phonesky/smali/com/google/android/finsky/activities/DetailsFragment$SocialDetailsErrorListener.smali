.class Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocialDetailsErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/activities/DetailsFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/activities/DetailsFragment;
    .param p2    # Lcom/google/android/finsky/activities/DetailsFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Volley error while fetching social details doc: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    # setter for: Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z
    invoke-static {v0, v4}, Lcom/google/android/finsky/activities/DetailsFragment;->access$102(Lcom/google/android/finsky/activities/DetailsFragment;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    # setter for: Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/activities/DetailsFragment;->access$202(Lcom/google/android/finsky/activities/DetailsFragment;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->onDataChanged()V

    return-void
.end method
