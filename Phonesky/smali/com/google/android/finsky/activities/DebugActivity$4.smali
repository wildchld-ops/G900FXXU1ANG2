.class Lcom/google/android/finsky/activities/DebugActivity$4;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
        "<",
        "Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
    .locals 4
    .param p1    # [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic fromStringList([Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    move-result-object v0

    return-object v0
.end method

.method public isSelected(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)Z
    .locals 5
    .param p1    # Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    iget-object v3, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/DebugActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v2

    # getter for: Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    sget-object v4, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    if-ne v1, v4, :cond_0

    # getter for: Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    return v4

    :cond_0
    # getter for: Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic isSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->isSelected(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)Z

    move-result v0

    return v0
.end method

.method public selectItem(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    # invokes: Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->access$300(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    return-void
.end method

.method public bridge synthetic selectItem(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->selectItem(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    return-void
.end method
