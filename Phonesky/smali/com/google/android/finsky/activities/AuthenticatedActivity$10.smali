.class Lcom/google/android/finsky/activities/AuthenticatedActivity$10;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->waitForLibrariesAndContinue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFinished:I

.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->mFinished:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->mFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->mFinished:I

    iget v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->mFinished:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->val$shouldHandleIntent:Z

    # invokes: Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    :cond_0
    return-void
.end method
