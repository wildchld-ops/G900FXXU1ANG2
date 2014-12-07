.class Lcom/android/launcher2/HomeView$26;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->bindAppWidget_CP(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$app:Lcom/android/launcher2/LauncherApplication;

.field final synthetic val$widget:Lcom/android/launcher2/HomeWidgetItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$26;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    iput-object p3, p0, Lcom/android/launcher2/HomeView$26;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBindSuccess(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    iput p1, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView$26;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView$26;->val$app:Lcom/android/launcher2/LauncherApplication;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefsForContextualPagePackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    iget-wide v2, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefsForContextualPageClassName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    iget-wide v2, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/launcher2/HomeView$26;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$26;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    return-void
.end method
