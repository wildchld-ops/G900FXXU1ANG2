.class Lcom/google/android/finsky/layout/AutoUpdateSection$2;
.super Ljava/lang/Object;
.source "AutoUpdateSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p4, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    # getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    # getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/google/android/finsky/layout/AutoUpdateSection;->updateAutoUpdateForThisApp(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$100(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method
