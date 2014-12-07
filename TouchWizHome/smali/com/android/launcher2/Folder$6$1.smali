.class Lcom/android/launcher2/Folder$6$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Folder$6;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$6$1;->this$1:Lcom/android/launcher2/Folder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder$6$1;->this$1:Lcom/android/launcher2/Folder$6;

    iget-object v0, v0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method
