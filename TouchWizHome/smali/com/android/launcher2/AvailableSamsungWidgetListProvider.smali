.class public Lcom/android/launcher2/AvailableSamsungWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableSamsungWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableSamsungWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iput-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidgets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    new-instance v3, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;-><init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "AvailableSamsungWidgetListProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Samsung Widget{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}  ComponentInfo{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AvailableSamsungWidgetListProvider"

    const-string v4, "No Samsung App Widgets were loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method
