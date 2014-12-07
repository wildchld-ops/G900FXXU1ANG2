.class Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;
.super Ljava/lang/Object;
.source "PeopleDetailsStreamAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;->this$1:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->warmWelcomeOwnProfileAcknowledged:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;->this$1:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->access$002(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1$1;->this$1:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->onDataChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
