.class Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;
.super Ljava/lang/Object;
.source "PeopleDetailsStreamAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->getWarmWelcomeCardView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

.field final synthetic val$toFadeOut:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->val$toFadeOut:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050004

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;-><init>(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->val$toFadeOut:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
