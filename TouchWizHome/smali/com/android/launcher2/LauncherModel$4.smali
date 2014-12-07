.class final Lcom/android/launcher2/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isFolderItem:Z

.field final synthetic val$itemId:J

.field final synthetic val$moveToCP:Z

.field final synthetic val$provider:Lcom/android/launcher2/LauncherProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherProvider;ZJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$4;->val$provider:Lcom/android/launcher2/LauncherProvider;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$4;->val$moveToCP:Z

    iput-wide p3, p0, Lcom/android/launcher2/LauncherModel$4;->val$itemId:J

    iput-boolean p5, p0, Lcom/android/launcher2/LauncherModel$4;->val$isFolderItem:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$provider:Lcom/android/launcher2/LauncherProvider;

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$moveToCP:Z

    iget-wide v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$itemId:J

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$isFolderItem:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->moveItemInContextualPageDatabase(ZJZ)V

    return-void
.end method
