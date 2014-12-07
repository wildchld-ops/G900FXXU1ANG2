.class Lcom/google/android/finsky/activities/AuthenticatedActivity$12;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    # invokes: Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
