.class Lcom/google/android/finsky/activities/DetailsTextViewBinder$4;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # invokes: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->handleClick()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$800(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    return-void
.end method
